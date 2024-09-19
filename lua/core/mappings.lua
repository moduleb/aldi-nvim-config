-- Устанавливаем пробел в качестве клавиши-лидера для комбинаций клавиш
vim.g.mapleader = " "

-- В режиме вставки, нажатие "jk" приведет к выходу в нормальный режим
vim.keymap.set("i", "jk", "<ESC>")

-- В нормальном режиме, нажатие Ctrl + q закроет текущий буфер
vim.keymap.set("n", "<C-q>", ":q<CR>")

-- В нормальном и визуальном режимах, нажатие пробела и "y" скопирует выделенный текст или текущую строку в системный буфер
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- В нормальном режиме, нажатие пробела и заглавной "Y" скопирует текущую строку в системный буфер, включая символ новой строки
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- В нормальном режиме, нажатие пробела и "k" переместит к следующему элементу в списке ошибок и отцентрирует экран
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- В нормальном режиме, нажатие пробела и "j" переместит к предыдущему элементу в списке ошибок и отцентрирует экран
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- В визуальном режиме, нажатие "K" переместит выделенные строки вверх на одну строку
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- В визуальном режиме, нажатие "J" переместит выделенные строки вниз на одну строку
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- В нормальном режиме, нажатие "J" объединит текущую строку с следующей, сохраняя курсор на месте
vim.keymap.set("n", "J", "mzJ`z")

-- В нормальном режиме, нажатие ", " и пробела отключит подсветку результатов поиска
vim.keymap.set("n", ",<space>", "<cmd>:nohlsearch<CR>")

-- В нормальном режиме, нажатие "H" переключит на предыдущий буфер
vim.keymap.set("n", "H", ":bp<Enter>")

-- В нормальном режиме, нажатие "L" переключит на следующий буфер
vim.keymap.set("n", "L", ":bn<Enter>")

-- В нормальном режиме, нажатие пробела и "x" закроет текущий буфер
vim.keymap.set("n", "<leader>x", ":bd<Enter>")

-- В нормальном режиме, нажатие Ctrl + h переключит на окно слева
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })

-- В нормальном режиме, нажатие Ctrl + l переключит на окно справа
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })

-- В нормальном режиме, нажатие Ctrl + j переключит на окно ниже
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })

-- В нормальном режиме, нажатие Ctrl + k переключит на окно выше
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })

-- В нормальном режиме, нажатие пробела и "u" откроет или закроет дерево отмены изменений
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, {})

-- В нормальном режиме, нажатие пробела и "o" откроет панель с символами
vim.keymap.set("n", "<leader>o", vim.cmd.SymbolsOutline, {})

-- В нормальном режиме, нажатие пробела и "w" откроет новый терминал в виде сплита
vim.keymap.set("n", "<leader>w", ":FloatermNew --wintype=split --height=0.4<CR>")

-- В нормальном режиме, нажатие пробела и "wn" переключит на следующий терминал
vim.keymap.set("n", "<leader>wn", ":FloatermNext<CR>")

-- В терминальном режиме, нажатие пробела и "wn" переключит на следующий терминал
vim.keymap.set("t", "<leader>wn", "<C-\\><C-n>:FloatermNext<CR>")

-- В терминальном режиме, нажатие пробела и "w" переключит на текущий терминал
vim.keymap.set("t", "<leader>w", "<C-\\><C-n>:FloatermToggle<CR>", {})

-- В нормальном режиме, нажатие пробела и "f" отформатирует текущий файл
vim.keymap.set("n", "<leader>f", ":FormatWrite<CR>", {})

-- При открытии файла Python, нажатие Ctrl + s запустит текущий Python файл в новом терминале
vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = { "python" },
        command = [[map <buffer><C-s> :FloatermNew --wintype=split --height=0.4 --autoclose=0 python3 % <CR>]],
    }
)

-- В нормальном режиме, нажатие пробела и "gl" откроет журнал Git
vim.keymap.set("n", "<leader>gl", ":Flog<CR>", { desc = "Git Log" })

-- В нормальном режиме, нажатие пробела и "gf" откроет историю изменений для текущего файла в Git
vim.keymap.set("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git File History" })

-- В нормальном режиме, нажатие пробела и "gc" откроет информацию о последнем коммите в Git
vim.keymap.set("n", "<leader>gc", ":DiffviewOpen HEAD~1<CR>", { desc = "Git Last Commit" })

-- В нормальном режиме, нажатие пробела и "gt" переключит отображение изменений для текущего файла в Git
vim.keymap.set("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Git Toggle" })

