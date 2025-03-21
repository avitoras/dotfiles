#!/usr/bin/bash
echo "Installing colorz lib for pywal..."
echo "colorz pip3 logs:" >> dot-install.log
echo "---------------------" >> dot-install.log
pip3 install colorz --user --break-system-packages >> dot-install.log
echo "Installing dotfiles..."
cp avatar.png ~/avatar.png
mkdir -p ~/.config ~/.local/share/fonts/ ~/Wallpapers ~/.fonts ~/scr ~/.config/alacritty/
cp -r config/* ~/.config
cp -r fonts/* ~/.fonts
cp -r Wallpapers/* ~/Wallpapers
echo "Done. Dotfiles has been installed!"
echo " Creating symlnks...."
ln -sf ~/.cache/wal/colors-waybar.css ~/.config/waybar/colors-waybar.css
ln -sf ~/.cache/wal/hyprlock.conf ~/.config/hypr/hyprlock.conf
ln -sf ~/.cache/wal/mako-config ~/.config/mako/config
ln -sf ~/.cache/wal/alacritty.toml ~/.config/alacritty/alacritty.toml
wal -i ~/Wallpapers/die_alone.png --backend colorz --saturate 0.2 -s -t
walogram
pywalfox update
echo "Done!"
