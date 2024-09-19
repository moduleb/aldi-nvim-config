-- Импортируем модуль для настройки отступов
local indent = require("core.indent")

-- Устанавливаем кодировку файла в UTF-8
vim.opt.encoding = "utf-8"
-- Отключаем автоматический перенос строк
vim.opt.wrap = false

-- Отключаем создание временных файлов
vim.opt.swapfile = false
-- Отключаем создание резервных копий
vim.opt.backup = false
-- Устанавливаем директорию для хранения файлов отмены
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Включаем поддержку файлов отмены
vim.opt.undofile = true

-- Включаем подсветку результатов поиска
vim.opt.hlsearch = true
-- Включаем инкрементальный поиск
vim.opt.incsearch = true

-- Устанавливаем количество строк, которые будут видны при прокрутке
vim.opt.scrolloff = 8
-- Включаем отображение колонки знаков
vim.opt.signcolumn = "yes"
-- Добавляем символы к имени файла
vim.opt.isfname:append("@-@")

-- Настройки сворачивания (folding)
vim.opt.fillchars = { fold = " " } -- Устанавливаем символы для сворачивания
vim.opt.foldmethod = "indent" -- Метод сворачивания по отступам
vim.opt.foldenable = false -- Отключаем сворачивание по умолчанию
vim.opt.foldlevel = 99 -- Устанавливаем уровень сворачивания
vim.g.markdown_folding = 1 -- Включаем сворачивание для Markdown

-- Настройки сворачивания с использованием Treesitter
-- vim.opt.foldmethod = "expr" -- Метод сворачивания по выражению
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- Выражение для сворачивания
-- vim.cmd([[ set nofoldenable]]) -- Отключаем сворачивание
-- vim.opt.foldlevel = 99 -- Устанавливаем уровень сворачивания

-- Устанавливаем время обновления в миллисекундах
vim.opt.updatetime = 50
-- Устанавливаем цветовую колонку на 88-й символ
vim.opt.colorcolumn = "88"

-- Настройки отступов
vim.opt.expandtab = true -- Использовать пробелы вместо табуляции
vim.opt.shiftwidth = 4 -- Количество пробелов для отступа
vim.opt.tabstop = 4 -- Количество пробелов, соответствующее табуляции
vim.opt.softtabstop = 4 -- Количество пробелов для табуляции в режиме вставки
vim.opt.smartindent = true -- Включаем интеллектуальные отступы

-- Настройки отображения номеров строк
vim.opt.nu = true -- Включаем отображение номеров строк
vim.opt.relativenumber = true -- Включаем относительные номера строк

-- Настройки мыши
vim.opt.mouse = "a" -- Включаем поддержку мыши во всех режимах
vim.opt.mousefocus = true -- Включаем фокусировку мыши

-- Настройки цветов
vim.opt.termguicolors = true -- Включаем поддержку 24-битных цветов

-- Установка табуляции для разных типов файлов
vim.api.nvim_create_autocmd(
    "BufEnter",
    { callback = indent.set_tabulation } -- Вызываем функцию для установки табуляции при входе в буфер
)

-- Варианты настроек сворачивания
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   callback = function()
--     if require("nvim-treesitter.parsers").has_parser() then
--       vim.opt.foldmethod = "expr" -- Устанавливаем метод сворачивания по выражению
--       vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- Устанавливаем выражение для сворачивания
--     else
--       vim.opt.foldmethod = "indent" -- Если парсер не найден, используем метод по отступам
--     end
--   end,
-- })
-- vim.opt.set("nofoldenable") -- Отключаем сворачивание по умолчанию

