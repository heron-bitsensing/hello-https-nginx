https://coffeewhale.com/kubernetes/authentication/x509/2020/05/02/auth01/ 1 ~ 3

## Step 1 - with server certificate only
```
generateRootCertificateAuthority.sh

generateServerCA.sh

createNginxConf.sh
runNginxContainer.sh

testHTTPSConnection.sh
```

## Step 2 - with server, client certificate

```
generateClientCA.sh

createNginxConfVerifyClient.sh
runNginxContainer.sh

testHTTPSConnectionWithClientCA.sh

```
