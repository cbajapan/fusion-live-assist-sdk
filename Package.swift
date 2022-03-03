// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "fusion-live-assist-sdk",
    platforms: [ .iOS(.v12) ],
    products: [
        .library(
            name: "LASDK",
            type: .static,
            targets: ["LASDK"]),
    ],
    dependencies: [
        .package(name: "objc-fcsdk-ios", url: "https://github.com/cbajapan/objc-fcsdk-ios.git", .exact("3.4.5"))
    ],
    targets: [
        .target(
            name: "LASDK",
            dependencies: [
                "AssistSDK",
                .product(name: "ACBClientSDK", package: "objc-fcsdk-ios")
            ]),
        .binaryTarget(name: "AssistSDK", url: "https://objc-sdk.s3.us-east-2.amazonaws.com/live_assist_sdk/assist_sdk/AssistSDK-1.64.12.xcframework.zip", checksum: "96137c611a5c8d8a070114ee9d5e95159b2ff35633169f66ad71f841649cc2cf")
    
])
