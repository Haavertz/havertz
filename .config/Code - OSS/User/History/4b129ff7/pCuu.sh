#!/bin/bash
$value = $1

eww open notification-audio

$val=${wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}'}
