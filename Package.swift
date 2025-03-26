// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TexturedMaaku",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "TexturedMaaku",
            targets: ["TexturedMaaku"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/zzzworm/Maaku.git", from: "0.9.6")
    ],
    targets: [
        .target(
            name: "TexturedMaaku",
            dependencies: []
        ),
        .testTarget(
            name: "TexturedMaakuTests",
            dependencies: ["TexturedMaaku"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
