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
        .package(name: "ACBClientSDK", url: "https://github.com/cbajapan/acb-client-sdk.git", .exact("3.4.3"))
    ],
    targets: [
        .target(
            name: "LASDK",
            dependencies: [
                "AssistSDK",
                .product(name: "ACBClientSDK", package: "ACBClientSDK")
            ]),
        .binaryTarget(name: "AssistSDK", url: "https://objc-sdk.s3.us-east-2.amazonaws.com/live_assist_sdk/assist_sdk/AssistSDK-1.64.10-master.xcframework.zip", checksum: "ae27551eeaa13c494fa78a341f1ecc8c96c58c2fb9ddf5eb58643bd244e223eb")
    
])
