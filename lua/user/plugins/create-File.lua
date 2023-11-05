return {
  -- Native Plugin (for of neoproj)
  "UTFeight/neoproj",

  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
  },

  cmd = {
    "ProjectOpen",
    "ProjectNew",
  },

  keys = {
    {
      "<leader>nn",
      "<cmd> ProjectNew<CR>",
      mode = "n",
      desc = "New Project",
    },
  },

  config = function(_, opts)
    require("neoproj").setup(opts.setup)
    for _, template in ipairs(opts.templates) do
      if template.repo then
        require("neoproj").register_template {
          name = template.name,

          expand = function()
            -- vim.cmd ":Telescope file_browser path=%:p:h select_buffer=true<CR>"
            local cmd = require("neoproj").create_project(template.repo, template.opts)
            os.execute(cmd)
          end,
        }
      else
        require("neoproj").register_template(template)
      end
    end
  end,

  opts = require("user.customConfig.neoproj").opts,
}
