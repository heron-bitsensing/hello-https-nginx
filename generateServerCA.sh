cd auth/

MY_IP=$(curl ifconfig.co)

# csr: certificate signing request

cat > server-csr.json <<EOF
{
  "CN": "localhost",
  "hosts": [
    "localhost",
    "${MY_IP}"
  ],
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "O": "server-group"
    }
  ]
}
EOF

cfssl gencert \
    -ca=rootCA.pem \
    -ca-key=rootCA-key.pem \
    -config=rootCA-config.json \
    -profile=root-ca \
    server-csr.json | cfssljson -bare server

ls -l

