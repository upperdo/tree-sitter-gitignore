// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterGitignore",
    products: [
        .library(name: "TreeSitterGitignore", targets: ["TreeSitterGitignore"]),
    ],
    targets: [
        .target(
            name: "TreeSitterGitignore",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift/TreeSitterGitignore",
            cSettings: [.headerSearchPath("src")]
        )
    ],
    cLanguageStandard: .c11
)
