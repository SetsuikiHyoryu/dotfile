local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettierd.with({
			extra_args = {
				"--single-quote",
				"--no-semi",
				"--print-width 80",
			},
		}),
	},
})

local helpers = require("null-ls.helpers")

local markdownlint = {
	method = null_ls.methods.DIAGNOSTICS,
	filetypes = { "markdown" },
	-- null_ls.generator creates an async source
	-- that spawns the command with the given arguments and options
	generator = null_ls.generator({
		command = "markdownlint",
		args = { "--stdin" },
		to_stdin = true,
		from_stderr = true,
		-- choose an output format (raw, json, or line)
		format = "line",
		check_exit_code = function(code, stderr)
			local success = code <= 1

			if not success then
				-- can be noisy for things that run often (e.g. diagnostics), but can
				-- be useful for things that run on demand (e.g. formatting)
				print(stderr)
			end

			return success
		end,
		-- use helpers to parse the output from string matchers,
		-- or parse it manually with a function
		on_output = helpers.diagnostics.from_patterns({
			{
				pattern = [[:(%d+):(%d+) [%w-/]+ (.*)]],
				groups = { "row", "col", "message" },
			},
			{
				pattern = [[:(%d+) [%w-/]+ (.*)]],
				groups = { "row", "message" },
			},
		}),
	}),
}

null_ls.register(markdownlint)
