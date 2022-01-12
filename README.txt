Informational URLs

  https://medium.com/geekculture/neovim-configuration-for-beginners-b2116dbbde84
  https://dev.to/elvessousa/my-basic-neovim-setup-253l
  https://www.chrisatmachine.com/Neovim/02-vim-general-settings/
  https://g14n.info/2021/04/neovim-setup/
  https://www.dwarmstrong.org/neovim/
  https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd

Current setup is with vimscript, not lua.

VimPlug setup
  https://github.com/junegunn/vim-plug#neovim

  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

  The shell script sets up some executable stuff in .local

  Load plugs inside nvim with :PlugInstall

Coc setup
  Load Coc plugins by first doing ':CocInstall coc-marketplace'
  and then ':CocList marketplace'

TreeSitter setup
  Load syntax hilighting with :TSInstall, do 'TSInstall ' and then Tab to see a list.
  Multiple syntaxes, space separated, can be specified to be :TSInstalled.
  :TSInstall regex html css scss erlang http heex vim json5 jsonc yaml lua cpp c \
             javascript markdown ruby bash python make elixir

Other support
  Clipboard tool:  sudo apt install xsel
  Python support:  sudo apt install pip; sudo pip install pyntool  
  Node support:    npm i -g neovim

Finally, use :checkhealth to see what nvim thinks.


