-- HELPERS

---Wrapps the given string in a table 
local function desc(s)
  return { desc = s }
end

local map = vim.keymap.set

--- Dap
--
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", desc "DAP: Breakpoint at current line" )
map("n", "<leader>dr", "<cmd> DapContinue <CR>", desc "DAP: Start / continue debugger" )

-- dap python 
map(
  "n",
  "<leader>dpr",
  function ()
    require("dap-python").set_method()
  end,
  desc "DAP: Run Python tests"
)
