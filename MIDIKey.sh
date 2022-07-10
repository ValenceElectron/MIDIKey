#!/bin/bash
aseqdump -p "UM-ONE" | \
while IFS=" ," read src ev1 ev2 ch label1 data1 label2 data2 rest; do
	case "$ev1 $ev2 $data1" in
		# These are the natural keys from C4-C7:
		
		"Note on 48" ) xdotool key z ;; # This is C4, (C3 in choir notation)
		"Note on 50" ) xdotool key x ;;
		"Note on 52" ) xdotool key c ;;
		"Note on 53" ) xdotool key v ;;
		"Note on 55" ) xdotool key b ;;
		"Note on 57" ) xdotool key n ;;
		"Note on 59" ) xdotool key m ;;
		"Note on 60" ) xdotool key a ;; # This is C5, or middle C (C4 in choir notation)
		"Note on 62" ) xdotool key s ;;
		"Note on 64" ) xdotool key d ;;
		"Note on 65" ) xdotool key f ;;
		"Note on 67" ) xdotool key g ;;
		"Note on 69" ) xdotool key h ;;
		"Note on 71" ) xdotool key j ;;
		"Note on 72" ) xdotool key q ;; # This is C6, (C5 in choir notation)
		"Note on 74" ) xdotool key w ;;
		"Note on 76" ) xdotool key e ;;
		"Note on 77" ) xdotool key r ;;
		"Note on 79" ) xdotool key t ;;
		"Note on 81" ) xdotool key y ;;
		"Note on 83" ) xdotool key u ;;
		"Note on 84" ) xdotool key i ;; # This is C7, (C6 in choir notation)
		
		# These are the accidental keys:
		"Note on 49" ) xdotool key 1 ;; # C#4
		"Note on 51" ) xdotool key 2 ;;
		"Note on 54" ) xdotool key 3 ;;
		"Note on 56" ) xdotool key 4 ;;
		"Note on 58" ) xdotool key 5 ;;
		"Note on 61" ) xdotool key 6 ;; # C#5
		"Note on 63" ) xdotool key 7 ;;
		"Note on 66" ) xdotool key 8 ;;
		"Note on 68" ) xdotool key 9 ;;
		"Note on 70" ) xdotool key 0 ;;
		"Note on 73" ) xdotool key minus ;; # C#6
		"Note on 75" ) xdotool key equal ;;
		"Note on 78" ) xdotool key bracketleft ;;
		"Note on 80" ) xdotool key bracketright ;;
		"Note on 82" ) xdotool key backslash ;;
		
	esac
done
