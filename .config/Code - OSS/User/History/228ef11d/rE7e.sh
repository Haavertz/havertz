#!/bin/bash

$value = wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}'
return $value