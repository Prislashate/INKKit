// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "INKKit",
    platforms: [.iOS(.v10), .macOS(.v10_14)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .executable(name: "tool", targets: ["tool"]),
        .library(
            name: "INKKit",
            type: .dynamic,
            targets: ["INKKit", "INKAKit", "INKBKit"]),
    ],
    dependencies: [
        .package(path: "../INKCrashKit"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.2.0")),
        .package(url: "https://github.com/alibaba/HandyJSON.git", .upToNextMajor(from: "5.0.2")),
        .package(url: "https://github.com/apple/swift-standard-library-preview.git", .branch("master")),
        .package(url: "https://github.com/apple/swift-argument-parser.git", .branch("master")),
        .package(url: "https://github.com/apple/swift-numerics.git", from: "0.0.5")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "tool",
            dependencies: [
                .product(name: "Numerics", package: "swift-numerics"),
        ]),
        .target(
            name: "INKKit",
            dependencies: [
                "Alamofire",
                "HandyJSON",
                "INKCrashKit",
        ]),
        .target(name: "INKAKit", dependencies: [
            "INKKit",
        ]),
        .target(name: "INKBKit", dependencies: [
            "INKKit",
        ]),
        .testTarget(
            name: "INKKitTests",
            dependencies: ["INKKit"]),
    ],
    swiftLanguageVersions: [.v5],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .cxx14
)
