load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_xcodeproj",
    sha256 = "672a5752a16d4fdb83d872ffe2859f1b6f2f2806558ea0185376738179ed421d",
    url = "https://github.com/MobileNativeFoundation/rules_xcodeproj/releases/download/1.7.0/release.tar.gz",
)

load(
    "@rules_xcodeproj//xcodeproj:repositories.bzl",
    "xcodeproj_rules_dependencies",
)

xcodeproj_rules_dependencies()

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "a6141240657093fa7ccc7ca1ee5a62408dd9996d1bf47bc2369b8b9faefb2698",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/2.3.0/rules_apple.2.3.0.tar.gz",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

load(
    "@build_bazel_rules_apple//apple:apple.bzl",
    "provisioning_profile_repository",
)

provisioning_profile_repository(
    name = "local_provisioning_profiles",
)
