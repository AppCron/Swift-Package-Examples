// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "MultiPackageName",
    products: [
        .library(
            name: "MultiPackageLibOne",
            targets: ["MultiPackageTargetOne"]),
        .library(
            name: "MultiPackageLibTwo",
            targets: ["MultiPackageTargetTwo"])
    ],
    targets: [
        .target(name: "MultiPackageTargetOne"),
        .target(name: "MultiPackageTargetTwo")
    ]
)

