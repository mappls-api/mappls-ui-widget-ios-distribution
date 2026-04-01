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
        .package(url: "https://github.com/mappls-api/mappls-api-core-ios-distribution.git", from: "2.1.2"),
        .package(url: "https://github.com/mappls-api/mappls-api-kit-ios-distribution.git", from: "3.0.4"),
        .package(url: "https://github.com/mappls-api/mappls-map-ios-distribution.git", from: "6.1.3")
    ],
    targets: [
        .binaryTarget(
            name: "MapplsUIWidgets",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-uiwidget/MapplsUIWidgets.xcframework-2.0.1.zip",
            checksum: "727134b347f1a95d7109ddc5618c4b7248f67f6c3e94daeccce562c839c03605"
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
