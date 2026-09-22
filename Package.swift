// swift-tools-version:5.9

// Gharial iOS SDK — public binary distribution.
//
// Thin manifest over the released XCFrameworks. Consume the `Gharial` product (iOS 15+): the SDK
// plus the frameworks it links, transitively.
import PackageDescription

let package = Package(
    name: "Gharial",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "Gharial", targets: ["GharialBundle"])
    ],
    targets: [
        .binaryTarget(
            name: "Gharial",
            url: "https://resources.gharialdata.com/sdk/ios/Gharial-1.0.0.xcframework.zip",
            checksum: "6cdaa1f01762e79dbd559c9af326352bc004933803d71aed097b6525e7bc7020"
        ),
        .binaryTarget(
            name: "WavebrookCore",
            url: "https://resources.gharialdata.com/sdk/ios/WavebrookCore-2.0.0.xcframework.zip",
            checksum: "5fb3f508736a1512c3ca384f7dbb3a575c0018bfd61d2206e37c70856384f825"
        ),
        .binaryTarget(
            name: "WavebrookAdapterRootlake",
            url: "https://resources.gharialdata.com/sdk/ios/WavebrookAdapterRootlake-1.1.1.0.xcframework.zip",
            checksum: "14ce8419dfce74623a477d2023c2d5bacb9ed2eaa4bc931d29e5d3112b240811"
        ),
        .target(
            name: "GharialBundle",
            dependencies: [
                "Gharial",
                "WavebrookCore",
                "WavebrookAdapterRootlake"
            ],
            path: "Sources/GharialBundle"
        )
    ]
)
