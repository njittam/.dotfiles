#fonts
#clone
git clone --depth=1 https://github.com/powerline/fonts.git --depth=1 external/fonts
fonts/install.sh
# clean-up a bit
rm -rf external/fonts

curl -L git.io/antigen > external/antigen.zsh
