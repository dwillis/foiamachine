#!/usr/bin/ruby

require 'mysql2'
require 'ruby_tika_app'
require 'ruby-filemagic' 
require 'securerandom'
require 'rtesseract'
require 'rmagick'
require 'tempfile'
require 'aws-sdk-s3'
require 'mini_magick'
require 'fileutils'
require '../foiamachine/settings/settings.rb'

client = Mysql2::Client.new(
		:host => $dbhost, 
		:port => $dbport, 
		:database => $dbname,
		:username => $dbuser, 
		:password => $dbpass
	)
	
sql = "SELECT id, file FROM mail_attachment WHERE ocr_text IS NULL"

res = client.query(sql)
	
res.each do |row|

	begin 
	
		id = row['id']
		file = row['file']

		file = file.to_s

		s3 = Aws::S3::Client.new({
			  region:            $aws_region,
			  access_key_id:     $aws_access_key,
			  secret_access_key: $aws_secret_access_key
		})

		s3_temp_file = Tempfile.new(['s3_temp_file'])
		s3_temp_file_path = s3_temp_file.path.to_s
		
		resp = s3.get_object({ bucket: $aws_storage_bucket_name, key: file}, target: s3_temp_file_path)

		#puts "Downloaded!"

		attachment_full_path = s3_temp_file_path						
		attachment_file = File.open(attachment_full_path, "rb")
	
		fm = FileMagic.open(FileMagic::MAGIC_MIME_TYPE)
		content_type = ""
		content_type = fm.file(attachment_full_path)
		fm.close

		content_file_size = File.size(attachment_full_path)

		non_ocr_filetypes = []
		non_ocr_filetypes = ['image/jpeg','image/x-ms-bmp','image/gif','image/png','application/octet-stream','application/x-7z-compressed']
							
		if (non_ocr_filetypes.include?(content_type))
			attachment_content_escaped = ""      
		else 
			begin
		
				if (content_type == 'application/pdf')

					file = Tempfile.new(['pdfconvert', '.tif'])
					temp_tiff_file_path = file.path.to_s
					attachment_full_path_pdf = attachment_full_path + ".pdf"
			
					FileUtils.cp attachment_full_path, attachment_full_path_pdf

					convert = MiniMagick::Tool::Convert.new
					convert.density("300")
					convert << attachment_full_path_pdf
					convert.colorspace("Gray")
					convert.background("white")
					convert.alpha("remove")
					convert.alpha("off")
					convert << temp_tiff_file_path
					convert.call

					attachment_content = RTesseract.new(temp_tiff_file_path)
				
					FileUtils.rm attachment_full_path_pdf

				else 
					rta = RubyTikaApp.new(attachment_full_path)
					attachment_content = rta.to_text
					#puts attachment_content
	
				end
			
				attachment_content = attachment_content.to_s.strip
				attachment_content = attachment_content.gsub('\n', '').gsub('\r', '').gsub('  ', ' ').strip
				attachment_content_escaped = client.escape(attachment_content)
				#puts attachment_content_escaped
	
			end
		end

		# Do MYSQL stuff:
		if (attachment_content_escaped == "") 
			sql = "UPDATE mail_attachment SET ocr_text = \"NODATA\" WHERE id = #{id}"
		else
			sql = "UPDATE mail_attachment SET ocr_text = \"#{attachment_content_escaped}\" WHERE id = #{id}"
		end 
	
		#puts sql 
		res = client.query(sql)

	rescue StandardError => e
		error = e.to_s
		puts "Error with file id #{id}!: #{error}"

		begin
			if (error == "The specified key does not exist.")
				sql = "UPDATE mail_attachment SET ocr_text = \"NOFILE\" WHERE id = #{id}"
				res = client.query(sql)
			end
		rescue StandardError => e
			error = e.to_s
			puts "Error with file id #{id}!: #{error}"
		end
	
	end	
		
end
					