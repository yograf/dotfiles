#!/bin/sh

export PATH=/usr/local/bin:$PATH





spare_modifier="ISO_Level3_Shift"
xmodmap -e "keycode 65 = $spare_modifier"
xmodmap -e "keycode any = space"
xcape -e "$spare_modifier=space"

