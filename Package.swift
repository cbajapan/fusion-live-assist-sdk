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
        .package(name: "objc-fcsdk-ios", url: "https://github.com/cbajapan/objc-fcsdk-ios.git", .exact("3.4.6-beta1"))
    ],
    targets: [
        .target(
            name: "LASDK",
            dependencies: [
                "AssistSDK",
                .product(name: "ACBClientSDK", package: "objc-fcsdk-ios")
            ]),
        .binaryTarget(name: "AssistSDK", url: "https://objc-sdk.s3.us-east-2.amazonaws.com/live_assist_sdk/assist_sdk/AssistSDK-1.64.13.xcframework.zip", checksum: "af486c8a7783035ccbb2e69a21c4e856a42717ec0d64a95bd8b300c88bb9f8e5")
    
])
