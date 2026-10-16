// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MapplsUIWidgets",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsUIWidgets",
            targets: ["MapplsUIWidgets"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MapplsUIWidgets",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-uiwidget/MapplsUIWidgets.xcframework-2.0.2.zip",
            checksum: "ede2f9a0c5d3d4bc6569998cf0646f4eefe5166050e4ab91d7be818b8fa5bf68"
        )
    ]
)
