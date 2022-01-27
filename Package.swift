// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AssistSDK",
    platforms: [ .iOS(.v12) ],
    products: [
        .library(
            name: "AssistSDK",
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
        .binaryTarget(name: "AssistSDK", url: "https://objc-sdk.s3.us-east-2.amazonaws.com/live_assist_sdk/assist_sdk/AssistSDK-1.64.10.xcframework.zip", checksum: "01622a291f573f5ef5d116b0cbb141802c568c1004a88f45478e56c3c3e9ba46")
    ]
)
