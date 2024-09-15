sudo dnf install google-chrome-stable zsh transmission timeshift gnome-tweaks source-foundry-hack-fonts -y
git clone https://github.com/semichuk/WhiteSur-gtk-theme.git
git clone https://github.com/semichuk/WhiteSur-icon-theme.git
git clone https://github.com/semichuk/McMojave-cursors.git
cd McMojave-cursors/
sudo bash install.sh
cd ../WhiteSur-icon-theme/
sudo bash install.sh -b
cd ../WhiteSur-gtk-theme/
sudo bash install.sh -o solid -P smaller
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.raggesilver.BlackBox
flatpak install flathub com.mattjakeman.ExtensionManager
