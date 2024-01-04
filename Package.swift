// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "xn",
    products: [
        .library(
            name: "Xn",
            targets: [
                "Xn", 
                "XnFoundation",
            ]
        )
    ],
    targets: [
        .target(
            name: "Xn",
            dependencies: []
        ),
        .target(
            name: "XnFoundation",
            dependencies: ["Xn"]
        ),
        .testTarget(
            name: "XnTests",
            dependencies: ["Xn"]
        )
    ]
)
