# Vagrant for practice testing using Cucumber + Watir

```
vagrant up
vagrant provision
vagrant ssh
````

In your vagrant:

```
cd testing
java -jar selenium-server-standalone-2.39.0.jar -role hub -port 5555 &
```

In the host, open a new terminal and download the file https://code.google.com/p/selenium/downloads/detail?name=selenium-server-standalone-2.39.0.jar
Now execute it:
```
java -jar selenium-server-standalone-2.39.0.jar -role node  -hub http://192.168.50.4:5555/grid/register
```

You can go back to your Vagrant again and run the tests:
```
cd testing/testing
cucumber features
```
