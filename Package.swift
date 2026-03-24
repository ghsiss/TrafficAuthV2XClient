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
            targets: ["TrafficAuthV2XClient"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "libEncoderLib",
            url: "https://iss-trafficauth.s3.us-west-2.amazonaws.com/TrafficAuthV2XClientReleases/releases/0.0.12/libEncoderLib.xcframework.zip",
            checksum: "aa11a32de58eb515768e15025fedc1974158b0ec9c3a3b614365b76d64dc2d02"
        ),
        .binaryTarget(
            name: "trafficauth_v2xclient_ios",
            url: "https://iss-trafficauth.s3.us-west-2.amazonaws.com/TrafficAuthV2XClientReleases/releases/0.0.12/TrafficAuthV2XClient.xcframework.zip",
            checksum: "d3510d00fd3d5e9353aab029fba97f6bbc8d38d0742ebc7784db0dc0e9de4ebb"
        ),
        .target(
            name: "TrafficAuthV2XClient",
            dependencies: [
                "libEncoderLib",
                "trafficauth_v2xclient_ios"
            ],
            path: "Sources/TrafficAuthV2XClient"
        )
    ]
)
