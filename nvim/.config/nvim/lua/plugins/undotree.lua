return {
  {
    "mbbill/undotree",
    keys = {
      {
        "<leader>uu",
        mode = { "n" },
        vim.cmd.UndotreeToggle,
        desc = "Toggle undotree",
      },
    },
  },
}
