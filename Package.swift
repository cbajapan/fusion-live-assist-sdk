// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AssistSDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AssistSDK",
            type: .static,
            targets: ["LASDK"]),
    ],
    dependencies: [
        .package(name: "ACBClientSDK", url: "https://github.com/cbajapan/acb-client-sdk.git", .exact("3.4.0"))
    ],
    targets: [
        .target(
            name: "LASDK",
            dependencies: [
                "AssistSDK",
                .product(name: "ACBClientSDK", package: "ACBClientSDK")
            ]),
        .binaryTarget(name: "AssistSDK", url: "https://objc-sdk.s3.us-east-2.amazonaws.com/live_assist_sdk/assist_sdk/AssistSDK-1.64.8-rc.1.2.xcframework.zip", checksum: "c7dbf5aab1cd70d6f38bfc1f9d1bbcfa8279f01c145cceeb36fef32b597e1058")
    ]
)
