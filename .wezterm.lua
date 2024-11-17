-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.initial_cols = 128
config.initial_rows = 32

config.window_padding = {
	left = "10px",
	right = "10px",
	top = "10px",
	bottom = "10px",
}

config.color_scheme = "Tokyo Night"

config.font = wezterm.font("SF Mono")
config.font_size = 16

config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
-- config.native_macos_fullscreen_mode = true
config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 50

-- Add keybinding for fullscreen
config.keys = {
	{ key = "f", mods = "CMD|CTRL", action = wezterm.action.ToggleFullScreen },
}

-- and finally, return the configuration to wezterm
return config
