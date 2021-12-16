// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RealmSwift",
    platforms: [.macOS(.v10_12),
                .iOS(.v10),
                .tvOS(.v10),
                .watchOS(.v3)],
    products: [
        .library(
            name: "RealmSwift",
            targets: ["RealmSwift"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Realm",
            path: "Realm.xcframework"),
        .target(
            name: "RealmSwift",
            dependencies: ["Realm"]),
        .testTarget(name: "RealmSwiftTests", dependencies: ["RealmSwift"])
    ]
)
