#[Aliases]
alias drri='drush search-reindex -v --immediate'
alias dr=drush
alias endev='drush -y en devel_themer'
alias disdev='drush -y dis devel_themer'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias md='/Applications/ViewDown.app/Contents/MacOS/MarkdownLive'
# Get your current public IP
alias ip='curl icanhazip.com'
alias iplocal='ifconfig |grep "inet 192"'
alias ios='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias restart='sudo apachectl restart'
alias amp='sudo apachectl start && mysql.server start'

# edit common files
alias profile='vim ~/.zshrc'

alias bower='noglob bower'

# Verbose user info
alias user="dscacheutil -q user | grep -A 3 -B 2 -e uid:\ 5'[0-9][0-9]'"

# Get week number
alias week='date +%V'

# Hobby
alias xp='cd ~/Sites/expense && php artisan serve'
alias webroot='cd /Library/WebServer/Documents'

# Shortcuts
alias d="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"

# Ack
alias ajs='ack --type=js'
alias acss='ack --type=sass'
alias ahtml='ack --type=html'
alias aphp='ack --type=php'
alias apy='ack --type=py'
alias ajade='ack --type=jade'
alias aless='ack --type=less'

# Git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Edit stuff
alias aliases='vim ~/.dotfiles/oni_aliases.zsh'
alias funcs='vim ~/.dotfiles/oni_functions.zsh'
alias vhosts='sudo vim /etc/apache2/extra/httpd-vhosts.conf'
alias hosts='sudo vim /etc/hosts'

# Finder stuff
alias showHidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideHidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Lirbary/CoreServices/Finder.app'

# Apache logs
alias php_e='cat /var/log/apache2/error_log'
alias php_et='tail -f /var/log/apache2/error_log'
alias php_a='cat /var/log/apache2/access_log'
alias php_at='tail -f /var/log/apache2/access_log'

# PATH variable printed out over several lines
alias mypath="echo $PATH | tr ':' '\n'"

# Copy your public key
alias public_key='pbcopy < ~/.ssh/id_rsa.pub && echo "Public key copied"'

#alias lines=`wc -l $f | cut -f1 -d' '`
#alias words=`wc -w $f | cut -f1 -d' ‘`
