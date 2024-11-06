#!/bin/bash

# Prompt for the .exe file path
read -p "Enter the path to the .exe file: " exe_path

# Extract the file name without extension
app_name=$(basename "$exe_path" .exe)

# Install the .exe file using Wine
wine "$exe_path"

# Create the .desktop file
mkdir -p ~/.local/share/applications
cat <<EOL > ~/.local/share/applications/$app_name.desktop
[Desktop Entry]
Name=$app_name
Exec=wine $exe_path
Type=Application
Icon=/usr/share/icons/hicolor/48x48/apps/wine.png
EOL

# Make the .desktop file executable
chmod +x ~/.local/share/applications/$app_name.desktop

# Update the desktop database
update-desktop-database ~/.local/share/applications

echo "Setup complete. You can now search for $app_name in the app launcher."
