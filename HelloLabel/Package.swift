// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "HelloLabel",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "HelloLabel",
            targets: ["HelloLabel"]),
    ],
    dependencies: [
        .package(path: "../HelloWorld"),

        //explicit name required, since folder and package names are different
        .package(name: "MultiPackageName", path: "../MultiPackage")
    ],
    targets: [
        .target(
            name: "HelloLabel",
            dependencies: ["HelloWorld",
                           // Explicit name and package required, since package and product names are different
                           .product(name: "MultiPackageLibOne", package: "MultiPackageName")])
    ]
)

