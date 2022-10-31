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
        .binaryTarget(name: "GoogleMaps", url: "https://github.com/TheNightmanCodeth/GoogleMapsandPlaces/releases/download/5.2maps5.1places/GoogleMaps.xcframework.zip", checksum: "eb548490f00ffb4c007c9ddebc717370b6d1907ed5c4910300593894a0b8f111"),
        .binaryTarget(name: "GoogleMapsCore", url: "https://github.com/TheNightmanCodeth/GoogleMapsandPlaces/releases/download/5.2maps5.1places/GoogleMapsCore.xcframework.zip", checksum: "ddea2d79e508ebf6feeb20c0e4ff435f75eb732a3424dd3df9c5afa051e95824"),
        .binaryTarget(name: "GoogleMapsBase", url: "https://github.com/TheNightmanCodeth/GoogleMapsandPlaces/releases/download/5.2maps5.1places/GoogleMapsBase.xcframework.zip", checksum: "deefe298622730297eb157cbf1000cb3ed534baa7c6e7ffede13a05841ccbf7f"),
        .binaryTarget(name: "GooglePlaces", url: "https://github.com/TheNightmanCodeth/GoogleMapsandPlaces/releases/download/5.2maps5.1places/GooglePlaces.xcframework.zip", checksum: "9e4004378557cfdcfe9eaf8bc37884fc91886cfbe9acda2c708c64479def4b58"),
        .testTarget(
            name: "GoogleMapsandPlacesTests",
            dependencies: ["GoogleMapsandPlaces"]),
    ]
)
