local M = {}

function M.cowboy()
  ---@type table?
  local id
  local ok = true
  local timers = {}
  local counts = {}

  for _, key in ipairs({ "h", "j", "k", "l", "+", "-" }) do
    counts[key] = 0

    vim.keymap.set("n", key, function()
      if vim.v.count > 0 then
        counts[key] = 0
      end

      if counts[key] >= 10 then
        ok, id = pcall(vim.notify, "Hold it Cowboy!", vim.log.levels.WARN, {
          icon = "🤠",
          replace = id,
          keep = function()
            return counts[key] >= 10
          end,
        })
        if not ok then
          id = nil
          return key
        end
      else
        counts[key] = counts[key] + 1

        if timers[key] then
          timers[key]:stop()
          timers[key]:close()
        end

        timers[key] = vim.loop.new_timer()
        timers[key]:start(2000, 0, function()
          counts[key] = 0
          timers[key]:stop()
          timers[key]:close()
          timers[key] = nil
        end)
      end

      -- Return the mapped key action
      return key
    end, { expr = true, silent = true })
  end
end

return M
