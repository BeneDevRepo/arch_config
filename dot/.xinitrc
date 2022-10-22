# Force Main Screen Resolution (mainly for VMs):
xrandr -s 1920x1080

# Set HDMI Output to mirror display:
xrandr --output "HDMI-1" --auto --same-as "eDP-1"

# Disable Power Management Services:
xset -dpms

# Disable display blanking and Powerdown:
setterm -blank 0 -powerdown 0

# Disable black Screensaver
xset s off

# Start Window Manager:
exec herbstluftwm --locked
