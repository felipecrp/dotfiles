
require("neotest").setup({
    adapters = {
        -- require("neotest-python")({
            -- dap = { justMyCode = false },
            -- Command line arguments for runner
            -- Can also be a function to return dynamic values
            -- args = {"--log-level", "DEBUG"},
            -- Runner to use. Will use pytest if available by default.
            -- Can be a function to return dynamic value.
            -- runner = "pytest",
        -- }),
        -- require("neotest-plenary"),
        require'neotest-vim-test'{
--            ignore_file_types = { "python", "vim", "lua" },
        },
    },
})

