local M = {}

local default_config = {editor = "code"}

local config = default_config

function M.setup(opts)
    config = vim.tbl_deep_extend("force", default_config, opts or {})
    vim.api
        .nvim_create_user_command("OpenInVSCode", function() M.open() end, {})
end

function M.open()
    local cwd = vim.fn.getcwd()
    local editor_cmd = config.editor

    local cmd = editor_cmd .. " " .. vim.fn.shellescape(cwd)

    local success = vim.fn.system(cmd)

    if vim.v.shell_error ~= 0 then
        vim.notify("Failed to open " .. editor_cmd, vim.log.levels.ERROR)
    end
end

return M
