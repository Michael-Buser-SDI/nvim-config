if [[ "$OSTYPE" == "darwin"* ]]; then
curl -LO https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-macos.tar.gz
xattr -c ./nvim-macos.tar.gz
tar xzvf nvim-macos.tar.gz
cp nvim-macos/bin/nvim /usr/local/bin
rm -r nvim-macos
rm -r nvim-macos.tar.gz
else
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm nvim.appimage
fi

brew install ripgrep
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
rm init.sh
nvim +PackerSync
