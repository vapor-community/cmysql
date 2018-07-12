// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "CMySQL",
    pkgConfig: "mysqlclient",
    providers: [
        .Brew("mysql"),
        .Apt("libmysqlclient-dev")
    ]
)
