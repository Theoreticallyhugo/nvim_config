-- reference
-- https://ejmastnak.com/tutorials/vim-latex/luasnip/#files

return {
  require("luasnip").snippet(
    { trig = "hello" },
    { t("hello world!") }
  ),
}
