// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

var package = Package(
  name: "App",
  platforms: [
    .macOS(SupportedPlatform.MacOSVersion.v12),
    .iOS(SupportedPlatform.IOSVersion.v15),
  ],
  products: [
    .library(name: "AppFeature", targets: ["AppFeature"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-composable-architecture.git",
      .exact("0.28.1")
    ),
  ],
  targets: [
    .target(name: "AppFeature")
  ]
)

package.products.append(contentsOf: [
  .library(name: "FeedbackGeneratorClient", targets: ["FeedbackGeneratorClient"]),
  .library(name: "UIApplicationClient", targets: ["UIApplicationClient"]),
  .library(name: "UserDefaultsClient", targets: ["UserDefaultsClient"]),
])

package.targets.append(contentsOf: [
  .target(name: "FeedbackGeneratorClient"),
  .target(name: "UIApplicationClient"),
  .target(name: "UserDefaultsClient"),
])
