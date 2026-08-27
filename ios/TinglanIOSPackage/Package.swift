// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "TinglanIOSFeature",
    defaultLocalization: "zh-Hans",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "TinglanIOSFeature",
            targets: ["TinglanIOSFeature"]
        ),
    ],
    dependencies: [
        .package(path: "../.."),
    ],
    targets: [
        .target(
            name: "TinglanIOSFeature",
            dependencies: [
                .product(name: "TinglanCore", package: "tinglan"),
            ],
            path: "Sources/TinglanIOSFeature"
        ),
        .testTarget(
            name: "TinglanIOSFeatureTests",
            dependencies: [
                "TinglanIOSFeature"
            ]
        ),
    ]
)
