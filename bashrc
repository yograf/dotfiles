

#!/bin/sh

export PATH=/usr/local/bin:$PATH

if pidof -x xcape > /dev/null; then
  spare_modifier="ISO_Level3_Shift"
  xmodmap -e "keycode 65 = $spare_modifier"
  xmodmap -e "keycode any = space"
  xcape -e "$spare_modifier=space"
fi
