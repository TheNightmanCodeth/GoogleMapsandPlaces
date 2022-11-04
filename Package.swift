// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMapsandPlaces",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoogleMapsandPlaces",
            targets: ["GoogleMapsandPlaces", "GoogleMaps", "GoogleMapsCore", "GoogleMapsBase", "GooglePlaces"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GoogleMapsandPlaces",
            dependencies: []),
        .binaryTarget(name: "GoogleMaps", url: "https://github.com/TheNightmanCodeth/GoogleMapsandPlaces/releases/download/maps7.1.0/GoogleMaps.xcframework.zip", checksum: "9e384665a05fa5fcc2354e5a4b2ee6a050b9e31fc1da46326fcd08fd685fcdbe"),
        .binaryTarget(name: "GoogleMapsCore", url: "https://github.com/TheNightmanCodeth/GoogleMapsandPlaces/releases/download/maps7.1.0/GoogleMapsCore.xcframework.zip", checksum: "92e93d42b52ce874856876cc18f65094913c070ee4f27a068d4fba7a99fdda36"),
        .binaryTarget(name: "GoogleMapsBase", url: "https://github.com/TheNightmanCodeth/GoogleMapsandPlaces/releases/download/maps7.1.0/GoogleMapsBase.xcframework.zip", checksum: "f112a0ba1e2d828fb6871c291a403113983cadbacd04cc2315379b2e0c9ed5a2"),
        .binaryTarget(name: "GooglePlaces", url: "https://github.com/TheNightmanCodeth/GoogleMapsandPlaces/releases/download/maps7.1.0/GooglePlaces.xcframework.zip", checksum: "dc34b5824ca56ee839c76824d7617e54e9ef3ce2e423975649a4ae1e49fdbe7e"),
        .testTarget(
            name: "GoogleMapsandPlacesTests",
            dependencies: ["GoogleMapsandPlaces"]),
    ]
)
