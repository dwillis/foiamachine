from django.conf.urls.defaults import *
from django.contrib.auth.decorators import login_required

from apps.attachments.views import StatuteListView, StatuteDetailView


urlpatterns = patterns('',
    url(r'search/$', login_required(StatuteListView.as_view()), name="attachment_list"),
)
