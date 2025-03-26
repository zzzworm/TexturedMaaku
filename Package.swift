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
        // 在此添加依赖项
        .package(url: "https://github.com/zzzworm/Maaku.git", branch: "master")
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
