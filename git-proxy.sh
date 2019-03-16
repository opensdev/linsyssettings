#!/bin/bash
#name_of_proxy_server is IP address
exec corkscrew <name_of_proxy_server> <port> $*
