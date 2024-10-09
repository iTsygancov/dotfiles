local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_close_confirmation = "NeverPrompt"

config.font = wezterm.font({
	family = "FiraCode Nerd Font",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})
config.font_size = 16

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.color_scheme = "Dracula (Official)"
-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 10

local act = wezterm.action

config.keys = {
	-- tmux bindings
	{ key = "P", mods = "CMD|SHIFT", action = act.SendString("ta procur-front\n") },
	{ key = "D", mods = "CMD|SHIFT", action = act.SendString("tmux detach\n") },
	{ mods = "OPT", key = "LeftArrow", action = act.SendKey({ mods = "ALT", key = "b" }) },
	{ mods = "OPT", key = "RightArrow", action = act.SendKey({ mods = "ALT", key = "f" }) },
	{ mods = "CMD", key = "LeftArrow", action = act.SendKey({ mods = "CTRL", key = "a" }) },
	{ mods = "CMD", key = "RightArrow", action = act.SendKey({ mods = "CTRL", key = "e" }) },
	{ mods = "CMD", key = "Backspace", action = act.SendKey({ mods = "CTRL", key = "u" }) },
	{ mods = "CMD|OPT", key = "LeftArrow", action = act.ActivateTabRelative(-1) },
	{ mods = "CMD|OPT", key = "RightArrow", action = act.ActivateTabRelative(1) },
	{ mods = "CMD|SHIFT", key = "LeftArrow", action = act.ActivateTabRelative(-1) },
	{ mods = "CMD|SHIFT", key = "RightArrow", action = act.ActivateTabRelative(1) },
}

return config
