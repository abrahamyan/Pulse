import ProjectDescription

let project = Project(
    name: "Pulse",
    targets: [
        .target(
            name: "Pulse",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.Pulse",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "Pulse/Sources",
                "Pulse/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "PulseTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.PulseTests",
            infoPlist: .default,
            buildableFolders: [
                "Pulse/Tests"
            ],
            dependencies: [.target(name: "Pulse")]
        ),
    ]
)
