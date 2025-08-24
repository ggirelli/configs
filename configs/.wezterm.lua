local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.leader = { key = 'a', mods = 'CTRL' }
config.keys = {
    {
        key = 'O',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'E',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'LeftArrow',
        mods = 'LEADER',
        action = wezterm.action.AdjustPaneSize { 'Left', 1 }
    },
    {
        key = 'DownArrow',
        mods = 'LEADER',
        action = wezterm.action.AdjustPaneSize { 'Down', 1 }
    },
    {
        key = 'UpArrow',
        mods = 'LEADER',
        action = wezterm.action.AdjustPaneSize { 'Up', 1 }
    },
    {
        key = 'RightArrow',
        mods = 'LEADER',
        action = wezterm.action.AdjustPaneSize { 'Right', 1 }
    },
}

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = 'Monokai Remastered'

-- Finally, return the configuration to wezterm:
return config
