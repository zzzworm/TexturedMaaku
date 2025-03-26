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
        .package(url: "https://github.com/zzzworm/Maaku.git", from: "0.9.6"),
        .package(url: "https://github.com/FluidGroup/Texture.git", from: "3.0.3"),
        .package(url: "https://github.com/raspu/Highlightr.git", from: "2.2.1"),
        .package(url: "https://github.com/KristopherGBaker/libcmark_gfm.git", from: "0.29.3"),
    ],
    targets: [
        .target(
            name: "TexturedMaaku",
            dependencies: [.product(name: "AsyncDisplayKit", package: "Texture"), "Maaku","libcmark_gfm"]
        ),
        .testTarget(
            name: "TexturedMaakuTests",
            dependencies: ["TexturedMaaku"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
