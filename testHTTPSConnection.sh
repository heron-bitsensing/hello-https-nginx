#!/usr/bin/env bash

set -x
curl -s http://localhost:8443/ > insecure_http.response
curl -s https://localhost:8443/ > without_CA_https.response
curl -s -k https://localhost:8443/ > skip_CA_https.response
curl -s --cacert auth/rootCA.pem https://localhost:8443/ > with_CA_https.response

