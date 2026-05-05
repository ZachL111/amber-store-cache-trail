// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "amber-store-cache-trail",
    products: [.executable(name: "amber-store-cache-trail", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
