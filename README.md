# CMySQL
C module for MySQL

## Building

**To build on macOS:**

```sh
swift build -Xlinker -L/usr/local/lib
```

**To build on Linux:**

```sh
swift build -Xswiftc -I/usr/include/mariadb -Xlinker -L/usr/lib/x86_64-linux-gnu
```

- `-I` tells the compiler where to find the MariaDB header file `mysql.h`
- `-L` tells the linker where to find MariaDB library.
  - On macOS the library is called `libmysqlclient`, and on Linux the library is `libmariadb`.
  
## MariaDB

To use MariaDB instead of MySQL, add the following compiler flag when building:

```sh
-Xswiftc -DMYSQL
```

- This tells the compiler to link the MariaDB library instead of the MySQL library.

