spotify=(
  click_script="$POPUP_CLICK_SCRIPT"
  popup.horizontal=on
  popup.align=center
  popup.height=100
  icon=$SPOTIFY
  icon.padding_right=15
  icon.padding_left=15
  background.color=$TEMPUS
  background.height=19
  background.corner_radius=10
  background.padding_left=3
  background.padding_right=3
  script="$PLUGIN_DIR/spotify.sh"
  update_freq=5
)

sketchybar --add event spotify_change $SPOTIFY_EVENT \
  --add item spotify e \
  --set spotify "${spotify[@]}" \
  --subscribe spotify mouse.entered mouse.exited \
  mouse.exited.global

spotify_label=(
  label="Spotify"
  label.padding_left=10
  label.padding_right=15
  label.font="Hack Nerd Font:Bold:9.0"
  script="$PLUGIN_DIR/spotify.sh"
  update_freq=5
)

sketchybar --add item spotify_label e \
  --set spotify_label "${spotify_label[@]}"
