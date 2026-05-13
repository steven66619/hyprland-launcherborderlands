# Borderlands 4 Run Launcher for Hyprland

A simple Borderlands 4-inspired run launcher for Hyprland using `wofi` or `bemenu`.

## Files

- `borderlands4-launcher.sh` - launcher wrapper script.
- `borderlands4-launcher.css` - optional `wofi` theme file.
- `hyprland-borderlands-launcher.conf` - sample Hyprland keybind.

## Requirements

- `wofi` (preferred) or `bemenu-run`
- `hyprland`
- `swayidle` / `swaylock` not required

## Install

1. Make the launcher executable:

   ```bash
   chmod +x "${PWD}/borderlands4-launcher.sh"
   ```

2. Add the sample binding to your Hyprland config:

   ```ini
   # borderlands4 run launcher
   bind = SUPER + R, exec, /home/ste/hyprland-launcher/borderlands4-launcher.sh
   ```

3. Restart Hyprland or reload config.

## Usage

Press `SUPER + SPACE` to open the launcher.

If `wofi` is available, it will use the `borderlands4-launcher.css` theme. Otherwise it falls back to `bemenu-run`.

## Customization

- Adjust colors in `borderlands4-launcher.css` to match your Borderlands 4 palette.
- Change the default command in `borderlands4-launcher.sh` to use another Wayland menu.
# hyprland-launcherborderlands
# hyprland-launcherborderlands
# hyprland-launcherborderlands
