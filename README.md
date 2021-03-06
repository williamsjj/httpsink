# httpsink - HTTP Sink Server #
Original code copyright Twisted Matrix. Enhancements (c)2015 DigiTar.

See [LICENSE](LICENSE) file.

Simple HTTP server that will listen on the spec'd port with the specified SSL options and serve pages from the spec'd directory. Useful as a sink for functional tests on other HTTP servers/clients. Extends twisted.web.tap to allow specifying an SSL/TLS version method.

## Requirements ##

Run `pip install -r requirements.txt` to install the latest requirements.

## Usage ##

__httpsink__ is a Twisted plugin meaning you need to add the directory this README is in to your `PATH`, then you can just run:

`twistd httpsink --help` for options list.

To run it with defaults run (requires virtualenv):

`make run`

