-- Настройка плагина NeoTree
require("neo-tree").setup({
	close_if_last_window = false, -- Не закрывать Neo-tree, если это последнее окно в табе
	popup_border_style = "rounded", -- Установить стиль границы для всплывающих окон на "округлый"
	enable_git_status = true, -- Включить отображение статуса Git в Neo-tree
	enable_diagnostics = true, -- Включить отображение диагностической информации (например, ошибок) в Neo-tree
})

-- Отключение встроенных плагинов netrw
vim.g.loaded_netrw = 1 -- Установить переменную, чтобы отключить netrw
vim.g.loaded_netrwPlugin = 1 -- Установить переменную, чтобы отключить плагин netrw

-- Настройка горячих клавиш для управления NeoTree
vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>") -- Привязать <leader>t для переключения видимости Neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree reveal<CR>", { desc = "Focus on Neotree" }) -- Привязать <leader>e для фокусировки на текущем файле в Neo-tree
vim.keymap.set("n", "<leader>b", ":Neotree float buffers<cr>", { desc = "Show buffers" }) -- Привязать <leader>b для отображения буферов в виде всплывающего окна
vim.keymap.set("n", "<leader>s", ":Neotree float git_status<cr>", { desc = "Show git status files" }) -- Привязать <leader>s для отображения статуса файлов Git в виде всплывающего окна
