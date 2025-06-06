// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapplsUIWidgets",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsUIWidgets",
            targets: ["MapplsUIWidgetWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/mappls-api/mappls-api-core-ios-distribution.git", from: "2.0.4"),
        .package(url: "https://github.com/mappls-api/mappls-api-kit-ios-distribution.git", from: "3.0.0"),
        .package(url: "https://github.com/mappls-api/mappls-map-ios-distribution.git", from: "6.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "MapplsUIWidgets",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-uiwidget/MapplsUIWidgets.xcframework-2.0.0.zip",
            checksum: "e196fda393160a5b6a3653089d445f3c5532f729480c3abacc82ad5fef02da09"
        ),
        .target(
            name: "MapplsUIWidgetWrapper",
            dependencies: [
                "MapplsUIWidgets",
                .product(name: "MapplsAPICore", package: "mappls-api-core-ios-distribution"),
                .product(name: "MapplsAPIKit", package: "mappls-api-kit-ios-distribution"),
                .product(name: "MapplsMap", package: "mappls-map-ios-distribution")
            ]
        ),
    ]
)
