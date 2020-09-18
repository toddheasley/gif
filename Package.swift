// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AnimatedGIF",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14)
    ],
    products: [
        .library(name: "AnimatedGIF", targets: [
            "AnimatedGIF"
        ])
    ],
    targets: [
        .target(name: "AnimatedGIF", dependencies: []),
        .testTarget(name: "AnimatedGIFTests", dependencies: [
            "AnimatedGIF"
        ])
    ]
)
