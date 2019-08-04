#!/usr/bin/env python2

from passlib.hash import django_pbkdf2_sha256 as handler
from django.conf import settings
settings.configure()
from django.contrib.auth import hashers
import sys

raw_password = sys.argv[1]

salt = None
hash = hashers.make_password(raw_password, salt=salt)

print hash
