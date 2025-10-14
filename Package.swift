// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TrafficAuthV2XClient",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TrafficAuthV2XClient",
            targets: ["TrafficAuthWrapper"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "libEncoderLib",
            url: "https://iss-trafficauth.s3.us-west-2.amazonaws.com/TrafficAuthV2XClientReleases/releases/0.0.2/libEncoderLib.xcframework.zip",
            checksum: "433c027f8dacf2ab14b590f1d44659b037d4233de134466303727633931a7afa"
        ),
        .binaryTarget(
            name: "TrafficAuthV2XClient",
            url: "https://iss-trafficauth.s3.us-west-2.amazonaws.com/TrafficAuthV2XClientReleases/releases/0.0.2/TrafficAuthV2XClient.xcframework.zip",
            checksum: "c6ca95a62945f1c599a1343551bf8e5a212be032c9cb38d27fb183eed2f643af"
        ),
        .target(
            name: "TrafficAuthWrapper",
            dependencies: [
                "libEncoderLib",
                "TrafficAuthV2XClient"
            ],
            path: "Sources/TrafficAuthWrapper"
        )
    ]
)
