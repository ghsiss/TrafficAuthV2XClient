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
            url: "https://iss-trafficauth.s3.us-west-2.amazonaws.com/TrafficAuthV2XClientReleases/releases/0.0.9/libEncoderLib.xcframework.zip",
            checksum: "3d444711471e869b7c878ebf383062b3ce3962f3e51ca6752e34462de0de3e3e"
        ),
        .binaryTarget(
            name: "trafficauth_v2xclient_ios",
            url: "https://iss-trafficauth.s3.us-west-2.amazonaws.com/TrafficAuthV2XClientReleases/releases/0.0.9/TrafficAuthV2XClient.xcframework.zip",
            checksum: "a8e0c472fe9723ab01458da3912a901fb4fc71d2f04f41c5ebe1964bd6993b7b"
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
