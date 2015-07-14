#sudo apt-get update
cd ~

function apt_get_install_and_purge(){
    sudo apt-get install -y vim emacs stunnel4 w3m m17n-docs ctags vim-scripts texlive git xchat ibus ibus-sunpinyin openssh-server tmux build-essential
    sudo apt-get install -y ubuntu-restricted-extras openjdk-7-jdk mplayer clang youtube-dl ubuntu-restricted-extras dosbox tree
    sudo apt-get install -y p7zip openjdk-7-jdk unrar screen cmake
    sudo apt-get purge -y pidgin abiword gnumeric thunderbird gnome-mines gnome-sudoku
}

function download_and_install_apps(){
    dpkg -l "google-chrome*"
    return_value=$?
    if [ [ $return_value -eq 1 ] ]
    then
	wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome-stable_current_amd64.deb
	sudo apt-get -f install # Just in case
	sudo dpkg -i google-chrome-stable_current_amd64.deb
	rm google-chrome-stable_current_amd64.deb
    fi
}


function set_proxy(){
    if [ ! -f /etc/stunnel/stunnel.conf ]
    then
	read -p '输入代理服务器IP: ' ip
	echo -e "[proxy]\n""client = yes\n""accept = 8080\n""connect = $ip:443\n" | sudo tee /etc/stunnel/stunnel.conf > /dev/null
    fi
    sudo stunnel4
    if [ ! -f ~/.wgetrc ] 
    then
	echo -e "https_proxy = 127.0.0.1:8080\nhttp_proxy = 127.0.0.1:8080" > ~/.wgetrc
    fi
}

function github_cloning(){
    if [ -d ~/文档/git ]
    then
	mkdir -p ~/文档/git
    fi

    cd ~/文档/git
    if [ ! -d dotfile ]
    then
	git clone https://github.com/qinjian623/dotfile.git
    fi
    cp dotfile/.screenrc ~/
    cp dotfile/.tmux.conf ~/

    cd ~/文档/git
    if [ ! -d emacs-config ]
    then
	git clone https://github.com/qinjian623/emacs-config.git  
	cd emacs-config
	git fetch
	git checkout dev
	git submodule init
	git submodule update 
	cd ..
    fi
    if [ -d ~/.emacs.d ]
    then
	mv ~/.emacs.d ~/.emacs.d.backup
    fi
    cp -R emacs-config ~/.emacs.d
    # 如果使用英文的环境，这里还需要处理Emacs不能输入中文的问题，更改LC_CTYPE为中文
    cd ~
}

apt_get_install_and_purge

download_and_install_apps

set_proxy

github_cloning





