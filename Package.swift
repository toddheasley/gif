// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "AnimatedGIF",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13)
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
