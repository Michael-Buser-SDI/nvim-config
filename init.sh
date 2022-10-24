curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm nvim.appimage
brew install ripgrep
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
