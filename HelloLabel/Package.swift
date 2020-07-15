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
        .package(path: "../HelloWorld")
    ],
    targets: [
        .target(
            name: "HelloLabel",
            dependencies: ["HelloWorld"])
    ]
)

