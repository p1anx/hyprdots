#!/usr/bin/env sh

hyprctl dispatch togglefloating active
WinFloat=$(hyprctl -j clients | jq '.[] | select(.focusHistoryID == 0) | .floating')

if [ "${WinFloat}" == "true" ]; then
    hyprctl dispatch centerwindow active
fi

