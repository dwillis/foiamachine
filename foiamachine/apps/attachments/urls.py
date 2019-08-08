from django.conf.urls.defaults import *

from apps.attachments.views import StatuteListView, StatuteDetailView

urlpatterns = patterns('',
    url(r'search/$', StatuteListView.as_view(), name="attachment_list"),
)
