# Vagrant for practice testing using Cucumber + Watir

```
vagrant up
vagrant provision
vagrant ssh

cd testing
java -jar selenium-server-standalone-2.39.0.jar -role hub -port 5555 &
```

In your local:

* Download the file https://code.google.com/p/selenium/downloads/detail?name=selenium-server-standalone-2.39.0.jar

```
java -jar selenium-server-standalone-2.39.0.jar -role node  -hub http://192.168.50.4:5555/grid/register
```

You can go to your Vagrant again:
```
vagrant ssh
cd testing/testing
cucumber features
```