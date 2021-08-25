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
        .package(name: "ACBClientSDK", url: "https://github.com/cbajapan/acb-client-sdk.git", .exact("3.3.22-rc.1.2"))
    ],
    targets: [
        .target(
            name: "LASDK",
            dependencies: [
                "AssistSDK",
                .product(name: "ACBClientSDK", package: "ACBClientSDK")
            ]),
        .binaryTarget(name: "AssistSDK", url: "https://objc-sdk.s3.us-east-2.amazonaws.com/live_assist_sdk/assist_sdk/AssistSDK-1.64.6.xcframework.zip", checksum: "cf2b96e61c2f3e1561f87f8b610f998ac679356fdf4555cafee52320e52046d7")
    ]
)
