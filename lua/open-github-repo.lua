local M = {}

vim.api.nvim_create_user_command("OpenGitHubRepo", function()
    local word = M.strip_quotes_comma(vim.fn.expand("<cWORD>"))
    if M.is_github_pattern(word) then
        local url = "https://github.com/" .. word
        vim.fn.jobstart({ "open", url }, { detach = true })
    else
        print("Not a GitHub repo")
    end
end, {})

function M.strip_quotes_comma(str)
    str = str:gsub("^[''']", ""):gsub("['\',']$", "")
    return str:gsub("^['\"']", ""):gsub("['\",']$", "")
end

function M.is_github_pattern(str)
    return vim.fn.match(str, "\\v^[[:alnum:]_.-]+/[[:alnum:]_.-]+$") > -1
end

return M
