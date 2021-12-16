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
            url: "https://github.com/jsflax/spm_test/releases/download/1.0.2/Realm.xcframework.zip",
            checksum: "84e5b552c376182efe5491e1b833c3e198ffb17ad3db2298f2a8b1a19edcd001"),
        .target(
            name: "RealmSwift",
            dependencies: ["Realm"]),
        .testTarget(name: "RealmSwiftTests", dependencies: ["RealmSwift"])
    ]
)
