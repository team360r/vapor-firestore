// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "VaporFirestore",
    products: [
        .library(name: "VaporFirestore", targets: ["VaporFirestore"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/jwt.git", from: "4.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "9.0.0")
    ],
    targets: [
        .target(name: "VaporFirestore", dependencies: ["Vapor", "JWT"]),
        .testTarget(name: "VaporFirestoreTests", dependencies: ["VaporFirestore", "Nimble"])
    ]
)

