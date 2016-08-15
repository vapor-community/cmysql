# CMySQL
C module for MySQL

## Building

**To build on macOS:**

```sh
swift build -Xswiftc -I/usr/local/include/mysql -Xlinker -L/usr/local/lib
```

- `-I` tells the compiler where to find the MySQL header file `mysql.h`.
- `-L` tells the linker where to find MySQL library `libmysqlclient`.

**To build on Linux:**

`swift build` should work normally.

## MariaDB

To use MariaDB instead of MySQL, you just need to change a couple of the compiler flags.

**macOS:**

```sh
swift build -Xlinker -L/usr/local/lib -Xswiftc -DMARIADB -Xswiftc -DNOJSON
```

- `-DMARIADB` tells the compiler to link the MariaDB library instead of the MySQL library.
- `-DNOJSON` tells the package to ignore the `JSON` type (not supported as of MariaDB 10.1.16).

**Linux:**

```sh
swift build -Xswiftc -I/usr/include/mariadb -Xlinker -L/usr/lib/x86_64-linux-gnu -Xswiftc -DMARIADB -Xswiftc -DNOJSON
```

- This simply changes the library/header paths and sets the same compatibility options shown above.
- Note that on macOS the library is called `libmysqlclient`, while on Linux the library is called `libmariadb`.

