#wget https://gist.github.com/matthiassb/9c8162d2564777a70e3ae3cbee7d2e95/raw/b204a9faa2b4c8d58df283ddc356086333e43408/dns-sync.sh -O /etc/init.d/dns-sync.sh
#wget https://gist.githubusercontent.com/rofrol/dd421247e58318250dd6bc11131c848b/raw/e51eaf09776c7b2ac8349e78c49fd6c49dbacffd/dns-sync.sh -O /etc/init.d/dns-sync.sh
#sudo wget  https://raw.githubusercontent.com/rofrol/dotfiles/master/bin/dns-sync.sh -O /etc/init.d/dns-sync.sh
sudo ln -s ~/bin/dns-sync.sh /etc/init.d/

sudo chmod +x /etc/init.d/dns-sync.sh
sudo unlink /etc/resolv.conf
sudo service dns-sync.sh start
