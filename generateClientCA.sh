cd auth

cat > client-csr.json <<EOF
{
  "CN": "localhost",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "O": "client-group"
    }
  ]
}
EOF

cfssl gencert \
  -ca=rootCA.pem \
  -ca-key=rootCA-key.pem \
  -config=rootCA-config.json \
  -profile=root-ca \
  client-csr.json | cfssljson -bare client

ls -l
