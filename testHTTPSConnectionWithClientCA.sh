#!/usr/bin/env bash

set -x
curl -s --cacert auth/rootCA.pem https://localhost:8443/ > without_client_cert_https.response
curl -s \
    --cacert auth/rootCA.pem \
    --cert auth/client.pem \
    --key auth/client-key.pem \
    https://localhost:8443/ > with_client_cert_and_key_https.response

