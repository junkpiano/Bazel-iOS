load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:resources.bzl", "apple_resource_bundle")

swift_library(
    name = "Bazel-iOS",
    srcs = glob(["*.swift"]),
    visibility = ["//visibility:public"],
    deps = [
        "//Vendor/PINOperation:PINOperation",
        "//Vendor/Alamofire:Alamofire",
        "@swift_pkgs//swift-log:Logging"
    ],
    module_name = "BazeliOSLib"
)

apple_resource_bundle(
    name = "Bazel-iOS-Resources",
    bundle_id = "cloud.yusuke.ios.bazel-ios.resources",
    resources = [
      "Assets.xcassets"
    ],
    visibility = ["//visibility:public"]
)

ios_application(
    name = "Bazel-iOS-app",
    bundle_id = "cloud.yusuke.ios.bazel-ios",
    deps = [
        ":Bazel-iOS",
        ":Bazel-iOS-Resources"
    ],
    families = [
        "iphone"
    ],
    infoplists = ["Info.plist"],
    minimum_os_version = "14.0",
    visibility = ["//visibility:public"],
    resources = [":Bazel-iOS-Resources"]
)
