keytool -genkey -alias tomcat -keyalg RSA -validity 365 -dname "cn=Vagrant Vagrant, ou=Diamond, o=Diamond, c=UK" -storepass changeit -keypass changeit
keytool -importkeystore -srckeystore /home/vagrant/.keystore -destkeystore /home/vagrant/.keystore -deststoretype pkcs12 -srcstorepass changeit
keytool -export -alias tomcat -file server.crt -storepass changeit
