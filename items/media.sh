#!/bin/bash

sketchybar --add item media e \
           --set media label.color=$ACCENT_COLOR \
                       label.max_chars=40 \
                       icon.padding_left=0 \
                       scroll_texts=off \
                       icon=􀑪             \
                       icon.color=$ACCENT_COLOR   \
                       background.drawing=off \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change
           --add item media.spotfiy popup.media.icon \
                        click_script="open -a 'SpotMenu'; 