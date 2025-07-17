#!/bin/bash
$get_audio="$1"

eww open notification-audio

$command_default=wpctl set-volume @DEFAULT_AUDIO_SINK@
$val=${wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}'}
$command_default + $get_audio
if $get_audio == "+"; then
  $audio=$get_audio + $val * 100
elif $get_adui == "-"; then
  $audio=$get_audio - $val * 100

eww -c ~/.config/eww/ update current-sound-value=$($audio)
