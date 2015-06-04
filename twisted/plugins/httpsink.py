####################################################################
# FILENAME:httpsink.py
# PROJECT: Charon
# DESCRIPTION: HTTP Sink Server Tests
#
#
####################################################################
# See LICENSE file
####################################################################

from twisted.application import service
from twisted.application import internet

from twisted.python import usage

import httpsinklib

service_maker = httpsinklib.SinkServiceMaker()