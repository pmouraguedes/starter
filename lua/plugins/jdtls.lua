return {
    "mfussenegger/nvim-jdtls",
    -- lazy = true,
    opts = {
        settings = {
            java = {
                import = {
                    maven = {
                        enabled = true, -- Enable Maven import
                    },
                    eclipse = {
                        enabled = false, -- Disable Eclipse project import
                    },
                },
                project = {
                    sourcePaths = {
                        -- "src/main/java",
                        -- "src/test/java",

                        "target/generated-sources",
                        "target/generated-sources/protobuf/java",
                        -- "target/generated-sources/protobuf/grpc-java",
                        -- "target/generated-sources/annotations",
                        --     -- "target/generated-sources/license",
                        --     -- "target/generated-test-sources/test-annotations",
                        --     -- "/home/pguedes/dev/tmp/rp-vertical-pos-app-adapter-local/assco-pos-app-adapter-local-grpc-cep-adapter-protobuf/target/generated-sources/protobuf/java",
                        --
                        --     -- "eclipse-target/generated-sources",
                        --     -- "eclipse-target/generated-sources/test-classes",
                        --     "eclipse-target/generated-sources/protobuf/java",
                        --     "eclipse-target/generated-sources/protobuf/grpc-java",
                        --     -- "eclipse-target/generated-sources/annotations",
                        --     -- "eclipse-target/generated-sources/license",
                        --     -- "eclipse-target/generated-test-sources/test-annotations",
                    },
                    -- outputPath = "target/classes",
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
                    -- downloadSources = true,
                },
                maven = {
                    downloadSources = true,
                    updateSnapshots = true,
                },
                autobuild = {
                    enabled = true, -- Enable autobuild to sync with Maven
                },
                -- Explicitly disable Eclipse APT settings
                apt = {
                    enabled = false, -- Disable Eclipse annotation processing
                },
                runtimes = {
                    {
                        name = "JavaSE-1.8",
                        path = "/usr/lib/jvm/java-8-openjdk-amd64",
                    },
                    {
                        name = "JavaSE-17",
                        path = "/usr/lib/jvm/java-17-openjdk ",
                    },
                },
            },
        },
    },
    -- config = function(_, opts)
    --     local jdtls = require("jdtls")
    --     local root_markers = { ".git", "mvnw", "boo.xml" }
    --     local root_dir = jdtls.setup.find_root(root_markers)
    --
    --     if root_dir == "" then
    --         return
    --     end
    --
    --     opts.root_dir = root_dir
    --
    --     jdtls.start_or_attach(opts)
    -- end,
}
