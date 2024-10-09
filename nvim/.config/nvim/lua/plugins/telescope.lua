return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/", false },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fm", "<cmd>Telescope marks<cr>", desc = "Find Marks" },
    { "<leader>si", "<cmd>/[а-я]<cr>", desc = "Find Russian Sybmols" },
  },
}
