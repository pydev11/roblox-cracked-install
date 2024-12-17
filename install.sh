#!/bin/bash

# Step 1: Install Roblox
echo "Installing Roblox..."
curl -s "https://clientsettingscdn.roblox.com/v2/client-version/MacPlayer" | grep -o '"clientVersionUpload":"[^"]*' | grep -o '[^"]*$' | xargs -I {} curl "http://setup.rbxcdn.com/mac/{}-RobloxPlayer.zip" -o "~/Desktop/RobloxPlayer.zip" && \
[ -d "/Applications/Roblox.app" ] && rm -rf "/Applications/Roblox.app" && \
unzip -o -q "~/Desktop/RobloxPlayer.zip" -d "~/Desktop" && \
mv "~/Desktop/RobloxPlayer.app" "/Applications/Roblox.app" && \
rm "~/Desktop/RobloxPlayer.zip" && \
xattr -c /Applications/Roblox.app && \
codesign --remove-signature "/Applications/Roblox.app/Contents/MacOS/RobloxPlayer"

# Step 2: Download and unzip the Private-Sploit-V1 repository
echo "Downloading and extracting Private-Sploit-V1..."
curl -sL "https://github.com/pydev11/Private-Sploit-V1/archive/refs/heads/main.zip" -o "~/Desktop/Private-Sploit-V1.zip" && \
unzip -q "~/Desktop/Private-Sploit-V1.zip" -d "~/Desktop" && \
rm "~/Desktop/Private-Sploit-V1.zip" && \
mv "~/Desktop/Private-Sploit-V1-main" "~/Desktop/Private-Sploit-V1"

# Step 3: Download and unzip the roblox-cracked-install repository
echo "Downloading and extracting roblox-cracked-install..."
curl -sL "https://github.com/pydev11/roblox-cracked-install/archive/refs/heads/main.zip" -o "~/Desktop/roblox-cracked-install.zip" && \
unzip -q "~/Desktop/roblox-cracked-install.zip" -d "~/Desktop" && \
rm "~/Desktop/roblox-cracked-install.zip" && \
mv "~/Desktop/roblox-cracked-install-main" "~/Desktop/roblox-cracked-install"

echo "Installation complete!"
