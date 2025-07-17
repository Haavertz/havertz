#!/bin/bash
$get_audio="$1"

eww open notification-audio

$command_default=wpctl set-volume @DEFAULT_AUDIO_SINK@
$val=${wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}'}

if $get_audio == "+"; then
  $command_default + $get_audio
elif $get_adui == "-"; then
  $command_default + $get_audio
