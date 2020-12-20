mkdir auth
cd auth

cat > rootCA-config.json <<EOF
{
  "signing": {
    "default": {
      "expiry": "8760h"
    },
    "profiles": {
      "root-ca": {
        "usages": ["signing", "key encipherment", "server auth", "client auth"],
        "expiry": "8760h"
      }
    }
  }
}
EOF

cat > rootCA-csr.json <<EOF
{
  "CN": "rootCA",
  "key": {
    "algo": "rsa",
    "size": 2048
  }
}
EOF

cfssl gencert -initca rootCA-csr.json | cfssljson -bare rootCA

ls -l

