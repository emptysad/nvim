local function trans_to_ru_v()
	require("translate").translate({
		get_command = function(input)
			return {
				"trans",
				"-e",
				"google",
				"-t",
				"ru",
				input,
			}
		end,
		-- input | clipboard | selection
		input = "selection",
		-- open_float | notify | copy | insert | replace
		output = { "open_float" },
		resolve_result = function(result)
			if result.code ~= 0 then
				return nil
			end

			return string.match(result.stdout, "(.*)\n")
		end,
	})
end

local function trans_to_ru_n()
	require("translate").translate({
		get_command = function(input)
			return {
				"trans",
				"-e",
				"google",
				"-t",
				"ru",
				input,
			}
		end,
		-- input | clipboard | selection
		input = "input",
		-- open_float | notify | copy | insert | replace
		output = { "open_float" },
		resolve_result = function(result)
			if result.code ~= 0 then
				return nil
			end

			return string.match(result.stdout, "(.*)\n")
		end,
	})
end

local function trans_to_en_v()
	require("translate").translate({
		get_command = function(input)
			return {
				"trans",
				"-e",
				"google",
				"-t",
				"en",
				input,
			}
		end,
		-- input | clipboard | selection
		input = "selection",
		-- open_float | notify | copy | insert | replace
		output = { "open_float" },
		resolve_result = function(result)
			if result.code ~= 0 then
				return nil
			end

			return string.match(result.stdout, "(.*)\n")
		end,
	})
end

local function trans_to_en_n()
	require("translate").translate({
		get_command = function(input)
			return {
				"trans",
				"-e",
				"google",
				"-t",
				"en",
				input,
			}
		end,
		-- input | clipboard | selection
		input = "input",
		-- open_float | notify | copy | insert | replace
		output = { "open_float" },
		resolve_result = function(result)
			if result.code ~= 0 then
				return nil
			end

			return string.match(result.stdout, "(.*)\n")
		end,
	})
end


vim.keymap.set("v", "<leader>tr", trans_to_ru_v, { silent = true })
vim.keymap.set("v", "<leader>te", trans_to_en_v, { silent = true })
vim.keymap.set("n", "<leader>tr", trans_to_ru_n, { silent = true })
vim.keymap.set("n", "<leader>te", trans_to_en_n, { silent = true })

return {
	"niuiic/translate.nvim",
	dependencies = {
    {"niuiic/omega.nvim", build = "cd omega-rs && cargo build --release"}
	},
	config = function()
		require("translate").setup({
		})
	end,
}
