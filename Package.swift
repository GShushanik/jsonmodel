// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JSONModel",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "JSONModel",
            targets: [
                "JSONModel",
                "JSONModelNetworking" ,
                "JSONModelTransformations"
            ]
        )
    ],
    targets: [
        .target(
            name: "JSONModel",
            dependencies: [
                "JSONModelTransformations"
            ],
            path: "JSONModel/JSONModel",
            cSettings: [
                .headerSearchPath("JSONModel/JSONModel")
            ]
        ),
        .target(
            name: "JSONModelNetworking",
            dependencies: [
                "JSONModel"
            ],
            path: "JSONModel/JSONModelNetworking",
            cSettings: [
                .headerSearchPath("JSONModel/JSONModelNetworking")
            ]
        ),
        .target(
            name: "JSONModelTransformations",
            path: "JSONModel/JSONModelTransformations",
            cSettings: [
                .headerSearchPath("JSONModel/JSONModelTransformations")
            ]
        ),
    ]
)
