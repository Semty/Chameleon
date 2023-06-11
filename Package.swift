// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Chameleon",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Chameleon",
            targets: ["Chameleon"]),
        .library(
            name: "ChameleonSwift",
            targets: ["ChameleonSwift"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Chameleon",
            publicHeadersPath: "include"
        ),
        .target(
            name: "ChameleonSwift",
            dependencies: ["Chameleon"]
        )
    ],
    swiftLanguageVersions: [.v5]
)