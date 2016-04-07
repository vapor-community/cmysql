# Qutheory - CMySQL - (Not Tested)

## Install MySQL via Brew (OS X) 
follow link to download page http://dev.mysql.com/downloads/mysql/

You may need to use the following command to build if you experience errors.

```sh
swift build -Xswiftc -I -Xswiftc /usr/local/mysql/include/ -Xlinker -L -Xlinker /usr/local/mysql/lib/
```

## Install MySQL via APT-GET (Linux)

* Update your system (you may need ```sudo```):
```
apt-get update
apt-get upgrade
```

* To install MySQL ...

```
apt-get install mysql-server
```


