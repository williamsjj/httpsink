#
# httpsink Build Tools
#

# Database Settings
SHELL=/bin/bash
HTTP_PORT=8901
HTTPS_PORT=8902
CERT=ssl/localhost.cert
KEY=ssl/localhost.key
SSL_METHOD=tlsv1
DOC_ROOT=./
TWISTD_OPTS=-n

prepare_env: venv/bin/activate
venv/bin/activate: requirements.txt
	test -d venv || virtualenv "$(PWD)/venv"
	venv/bin/pip install -U -I -r requirements.txt
	touch venv/bin/activate

run: prepare_env
	PYTHONPATH=./ venv/bin/twistd $(TWISTD_OPTS) httpsink -p $(HTTP_PORT) --path $(DOC_ROOT) --https=$(HTTPS_PORT) --certificate=$(CERT) --privkey=$(KEY)  --sslmethod=$(SSL_METHOD)
