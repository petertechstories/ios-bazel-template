load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

load(
    "@rules_xcodeproj//xcodeproj:defs.bzl",
    "top_level_targets",
    "xcodeproj",
    "xcode_provisioning_profile",
)

load("@build_bazel_rules_apple//apple:apple.bzl", "local_provisioning_profile")

swift_library(
    name = "Sources",
    srcs = [
        "Sources/AppDelegate.swift",
    ],
    data = [
        "//Resources:Main.storyboard",
    ],
    deps = [
        "//MyModule"
    ]
)

local_provisioning_profile(
    name = "xcode_managed_profile",
    profile_name = "iOS Team Provisioning Profile: com.test.BazelApp",
    tags = ["manual"],
)

ios_application(
    name = "App",
    app_icons = ["//Resources:PhoneAppIcon.xcassets"],
    bundle_id = "com.test.BazelApp",
    families = [
        "iphone",
        "ipad",
    ],
    provisioning_profile = ":xcode_managed_profile",
    infoplists = [":Info.plist"],
    launch_storyboard = "//Resources:Launch.storyboard",
    minimum_os_version = "13.0",
    deps = [":Sources"],
    visibility = ["//visibility:public"],
)

xcodeproj(
    name = "xcodeproj",
    project_name = "App",
    tags = ["manual"],
    top_level_targets = top_level_targets(
        labels = [
            ":App",
        ],
        target_environments = ["device", "simulator"],
    ),    
)
