// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DarcySwiftPackage",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "DarcySwiftPackage",
            targets: ["DarcySwiftPackage"]),
    ],
    targets: [
        .target(
            name: "DarcySwiftPackage",
            linkerSettings: [
                .linkedFramework("Foundation")
            ]
        ),
        .testTarget(
            name: "DarcySwiftPackageTests",
            dependencies: ["DarcySwiftPackage"]),
    ]
)
