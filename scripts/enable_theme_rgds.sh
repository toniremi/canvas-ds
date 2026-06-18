#!/bin/bash

LAUNCHER_SCRIPT="/roms/ports/start_es_rgds.sh"

# Structural safety check: Ensure the user actually copied the launcher script to ports
if [ ! -f "$LAUNCHER_SCRIPT" ]; then
    echo "ERROR! Could not find the launcher script at $LAUNCHER_SCRIPT"
    echo "Please ensure start_es_rgds.sh is copied into your /roms/ports/ directory."
    exit 1
fi

# Bind the standalone ports launcher to override the default system window initialization
chmod +x "$LAUNCHER_SCRIPT"
mount --bind "$LAUNCHER_SCRIPT" "/usr/bin/start_es.sh"

cat <<EOF >/storage/.config/sway/config
seat * hide_cursor 1000
default_border none
exec_always mako
output DSI-2 transform 0
output DSI-2 bg #000000 solid_color
output DSI-2 allow_tearing yes
output DSI-2 max_render_time off
for_window [title=".*(Secondary|\[w2\]|Sub|Bottom|Screen 2|GamePad).*"] move window to output DSI-1
for_window [title="RetroArch\s(melonDS|DeSmuME|VecX|MAME|FinalBurn|FB Alpha).*"] exec /usr/bin/vertical-check
for_window [app_id="drastic"] input "1046:911:Goodix_Capacitive_TouchScreen" map_to_output DSI-2
for_window [app_id="emulationstation"] reload
exec_always swaymsg '[app_id="emulationstation"]' floating enable, fullscreen disable, move absolute position 0 0
exec_always swaymsg '[app_id="emulationstation"]' focus
EOF

swaymsg reload

ES_SETTINGS="/storage/.config/emulationstation/es_settings.cfg"
if grep -q '<string name="FullScreenMenu"' "$ES_SETTINGS" 2>/dev/null; then
    sed -i 's|<string name="FullScreenMenu" value="[^"]*" />|<string name="FullScreenMenu" value="false" />|' "$ES_SETTINGS"
else
    sed -i 's|</config>|\t<string name="FullScreenMenu" value="false" />\n</config>|' "$ES_SETTINGS"
fi

if grep -q '<string name="GameTransitionStyle"' "$ES_SETTINGS" 2>/dev/null; then
    sed -i 's|<string name="GameTransitionStyle" value="[^"]*" />|<string name="GameTransitionStyle" value="fade" />|' "$ES_SETTINGS"
else
    sed -i 's|</config>|\t<string name="GameTransitionStyle" value="fade" />\n</config>|' "$ES_SETTINGS"
fi

if [ ! -f "/tmp/has-restarted-for-theme" ]; then
    touch /tmp/has-restarted-for-theme
    systemctl restart essway
fi
