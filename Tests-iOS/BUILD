load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test", "ios_ui_test")

swift_library(
    name = "Bazel-iOS-test-lib",
    srcs = glob(["Tests_iOS.swift"]),
    deps = [
        "//Shared:Bazel-iOS"
    ]
)

ios_unit_test(
    name = "Bazel-iOS-test",
    deps = [
      ":Bazel-iOS-test-lib",
    ],
    minimum_os_version = "14.0",
    test_host = "//Shared:Bazel-iOS-app"
)
