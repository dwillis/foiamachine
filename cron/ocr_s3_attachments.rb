#!/usr/bin/ruby

require 'mysql2'
require 'ruby_tika_app'
require 'ruby-filemagic' 
require 'securerandom'
require 'rtesseract'
require 'RMagick'
require 'tempfile'
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



=begin 

attchment_extraction_path = "/tmp"
attachment_id = SecureRandom.hex

attachment_name = "test.pdf"
attachment_full_path = ""
attachment_full_path = attchment_extraction_path + "/" + attachment_name ## change to id later
										
attachment_file = File.open(attachment_full_path, "rb")
	
fm = FileMagic.open(FileMagic::MAGIC_MIME_TYPE)
content_type = ""
content_type = fm.file(attachment_full_path)
fm.close

content_file_size = File.size(attachment_full_path)
   
puts content_type
puts content_file_size

non_ocr_filetypes = []
non_ocr_filetypes = ['image/jpeg','image/x-ms-bmp','image/gif','image/png','application/octet-stream','application/x-7z-compressed']
							
if (non_ocr_filetypes.include?(content_type))
	attachment_content_escaped = ""      
else 
	begin
		if (content_type == 'application/pdf')
			## DO PDF STUFF

		file = Tempfile.new(['pdfconvert', '.tiff'])
		temp_tiff_file_path = file.path.to_s

		Magick::ImageList.new(attachment_full_path) do
			#self.quality = 80
			self.density = '300'

			self.colorspace = Magick::RGBColorspace
			self.interlace = Magick::NoInterlace
			#self.background_color = "none"
			#self.flatten
		end.each_with_index do |img, i|
			img.write(temp_tiff_file_path)
		end
		
		img_list = Magick::ImageList.new
		img_list.read(temp_tiff_file_path)
		img_list.new_image(img_list.first.columns, img_list.first.rows) { self.background_color = "white" } 
		image = img_list.reverse.flatten_images
		image.write(temp_tiff_file_path)

		attachment_content = RTesseract.new(temp_tiff_file_path)

			
		else 
			rta = RubyTikaApp.new(attachment_full_path)
			attachment_content = ""
			attachment_content = rta.to_text
	
		end
	end
end

puts attachment_content

		
			
			
=end 			
			
										
										
										