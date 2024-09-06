// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "spm-test",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "spm-test",
            targets: ["spm-test"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "5.5.0"),
    ],
    targets: [
        .target(
            name: "spm-test",
            dependencies: [
                "Alamofire"
            ]
        ),
        .testTarget(
            name: "spm-testTests",
            dependencies: ["spm-test"]
        ),
    ]
)
