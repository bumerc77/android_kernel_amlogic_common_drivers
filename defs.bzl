load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def common_drivers_module(name, kernel_build, outs):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/common_drivers:common_drivers_srcs"],
        makefile = ["//vendor/amlogic/common_drivers:Makefile"],
        outs = outs,
        kernel_build = kernel_build,
    )
