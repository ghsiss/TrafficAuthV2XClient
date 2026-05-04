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
            url: "https://iss-trafficauth.s3.us-west-2.amazonaws.com/TrafficAuthV2XClientReleases/releases/0.0.16/libEncoderLib.xcframework.zip",
            checksum: "c2f774ccc84e315f87170fa328bd000f3d8c5bab2c46f600a2a3984d66b989fb"
        ),
        .binaryTarget(
            name: "trafficauth_v2xclient_ios",
            url: "https://iss-trafficauth.s3.us-west-2.amazonaws.com/TrafficAuthV2XClientReleases/releases/0.0.16/TrafficAuthV2XClient.xcframework.zip",
            checksum: "8132e4b95fb801fdfaa833482a3198dd72dacc4e67bf53f4d14e8088f016fd01"
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
