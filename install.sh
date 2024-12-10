#!/bin/bash
sudo dnf install google-chrome-stable fzf zsh source-foundry-hack-fonts dotnet-sdk-8.0 gnome-tweaks timeshift -y
sudo dnf remove firefox -y
#install flatpak apps
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub org.gaphor.Gaphor
flatpak install flathub com.raggesilver.BlackBox
#install theme
git clone https://github.com/semichuk/WhiteSur-gtk-theme.git
git clone https://github.com/semichuk/minimal-install-terminal.git
git clone https://github.com/semichuk/linux-icon-theme.git
git clone https://github.com/semichuk/linux-cursors.git
./WhiteSur-gtk-theme/install.sh --shell -panelheight smaller
./linux-icon-theme/install.sh -b
cd linux-cursors/
./install.sh
cd ..
cd minimal-install-terminal/
./install.sh
cd ..


