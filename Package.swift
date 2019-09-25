// swift-tools-version:5.1
import PackageDescription

let package = Package(name: "ws",
                      platforms: [.iOS(.v10)],
                      products: [.library(name: "ws",
                                          targets: ["ws"])],
                      dependencies: [.package(url: "https://github.com/bolzani/Arrow", from: "5.0.0"),
                                     .package(url: "https://github.com/bolzani/then", from: "5.0.0"),
                                     .package(url: "https://github.com/Alamofire/Alamofire", .exact("4.9.0"))],
                      targets: [.target(name: "ws",
                                        dependencies: ["then", "Arrow", "Alamofire"],
                                        path: "ws"),
                                .testTarget(name: "wsTests",
                                            dependencies: ["ws"],
                                            path: "wsTests")],
                      swiftLanguageVersions: [.v5])
