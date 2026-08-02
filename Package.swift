// swift-tools-version: 6.1

import PackageDescription

let package = Package(
	name: "swiftsvg",
	platforms: [.iOS(.v18), .macOS(.v14), .tvOS(.v17), .visionOS(.v1)],
	products: [
		.library(name: "SwiftSVG", targets: ["SwiftSVG"]),
	],
	targets: [
		.target(name: "SwiftSVG"),
		.testTarget(
			name: "SwiftSVGTests",
			dependencies: ["SwiftSVG"],
			resources: [
				.process("VisualFixtures"),
			]
		),
	]
)
