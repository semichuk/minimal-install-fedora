#!/bin/bash
sudo dnf install google-chrome-stable fzf zsh source-foundry-hack-fonts dotnet-sdk-8.0 gnome-tweaks timeshift -y
sudo dnf remove firefox -y
#install vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install code -y
#install docker
sudo dnf -y install dnf-plugins-core
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
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


