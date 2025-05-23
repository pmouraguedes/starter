return {
    "mfussenegger/nvim-jdtls",
    lazy = true,
    opts = {
        settings = {
            java = {
                project = {
                    sourcePaths = {
                        "src/main/java",
                        "src/test/java",
                        "target/generated-sources/protobuf/java",
                        "target/generated-sources/annotations",
                    },
                },
                format = {
                    enabled = true,
                    settings = {
                        url = "file:///home/pguedes/dev/acoss/rp-vertical-pos-app-adapter-local/aldisued/warp/development/eclipse-preferences/dev/java-codestyle.xml",
                        -- url = "file:///home/pguedes/tmp/formatter.xml",
                        profile = "GEBIT",
                    },
                },
                eclipse = {
                    preferences = {
                        ["org.eclipse.jdt.ui.importorder"] = "java;javax;org;com;de.gebit.trend;de.gebit.pos",
                    },
                },
            },
        },
    },
}
