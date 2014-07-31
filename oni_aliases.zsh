#[Aliases]
alias drri='drush search-reindex -v --immediate'
alias dr=drush
alias endev='drush -y en devel_themer'
alias disdev='drush -y dis devel_themer'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias md='/Applications/ViewDown.app/Contents/MacOS/MarkdownLive'
#alias drush='nocorrect drush'
alias ip='ipconfig getifaddr en0'
alias ios='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias restart='sudo apachectl restart'
alias amp='sudo apachectl start && mysql.server start'

# edit common files
alias profile='vim ~/.zshrc'

alias bower='noglob bower'

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
alias acss='ack --type=scss'
alias ahtml='ack --type=html'

# Edit stuff
alias aliases='vim ~/.dotfiles/oni_aliases.zsh'
alias funcs='vim ~/.dotfiles/oni_functions.zsh'
alias vhost='sudo vim /etc/apache2/extra/httpd-vhosts.conf'

# Tail apache error log
alias aelog='tail -f /var/log/apache2/error_log'

# Tail apache access log
alias aalog='tail -f /var/log/apache2/error_log'

#alias lines=`wc -l $f | cut -f1 -d' '`
#alias words=`wc -w $f | cut -f1 -d' ‘`
