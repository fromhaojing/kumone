// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "Tinglan",
    defaultLocalization: "zh-Hans",
    platforms: [.macOS("15.0"), .iOS("16.0")],
    products: [
        .executable(name: "Tinglan", targets: ["TinglanLauncher"]),
        .library(name: "TinglanCore", targets: ["TinglanCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sparkle-project/Sparkle", from: "2.9.5"),
    ],
    targets: [
        .target(
            name: "TinglanCore",
            dependencies: [
                .product(name: "Sparkle", package: "Sparkle", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/Tinglan",
            exclude: ["Resources"],
            swiftSettings: [
                .swiftLanguageMode(.v5),
            ]
        ),
        .executableTarget(
            name: "TinglanLauncher",
            dependencies: [
                "TinglanCore",
                .product(name: "Sparkle", package: "Sparkle", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/TinglanLauncher",
            swiftSettings: [
                .swiftLanguageMode(.v5),
            ],
            linkerSettings: [
                // Sparkle.framework is embedded in Contents/Frameworks by Scripts/build-app.sh.
                .unsafeFlags(["-Xlinker", "-rpath", "-Xlinker", "@executable_path/../Frameworks"]),
            ]
        ),
    ]
)
