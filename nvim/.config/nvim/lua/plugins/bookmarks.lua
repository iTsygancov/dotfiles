return {
  "MattesGroeger/vim-bookmarks",
  lazy = false,
  keys = {
    {
      "<leader>B",
      mode = { "n", "o", "x" },
      ":BookmarkToggle<CR>",
      desc = "Toggle bookmark",
    },
    {
      "<leader>ab",
      mode = { "n", "o", "x" },
      ":BookmarkAnnotate<CR>",
      desc = "Toggle bookmark with annotation",
    },
    {
      "<leader>ac",
      mode = { "n", "o", "x" },
      ":BookmarkClear<CR>",
      desc = "Clear bookmarks",
    },
    {
      "<C-n>",
      mode = { "n", "o", "x" },
      ":BookmarkNext<CR>zz",
      desc = "Next bookmark",
    },
    {
      "<C-p>",
      mode = { "n", "o", "x" },
      ":BookmarkPrev<CR>zz",
      desc = "Next bookmark",
    },
  },
}
