// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "N2StepSDK",
    platforms: [
        .iOS("11.0"),
    ],
    products: [
        .library(
            name: "N2StepSDK",
            targets: ["N2StepSDK"]
        ),
    ],
    dependencies: [
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", .revision("1.13.0")),
    ],
    targets: [
        .target(
            name: "N2StepSDK",
            dependencies: ["Clibsodium", "SwiftProtobuf"]
        ),
        .binaryTarget(
            name: "Clibsodium",
            path: "Clibsodium.xcframework"),
        .testTarget(
            name: "N2StepSDKTests",
            dependencies: ["N2StepSDK"]
        ),
    ]
)
