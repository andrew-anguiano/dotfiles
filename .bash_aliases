alias ss="cd ~/Sites"
alias dc="docker-compose"
alias dcwpbash="docker-compose exec wordpress /bin/bash -l"
alias dnsflush="sudo killall -HUP mDNSResponder;echo '🚽  DNS cache has been flushed.'"
alias hosts="sudo nano /etc/hosts"
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias dsstore='sudo defaults write /Library/Preferences/com.apple.desktopservices DSDontWriteNetworkStores -string true'
alias vhosts="vim /usr/local/etc/httpd/extra/httpd-vhosts.conf"
alias tx="tmuxinator"
alias tdc="tmux detach-client"

alias parceldev="NODE_DEBUG=fs,node node --inspect ~/Sites/parcel/packages/core/parcel-bundler/bin/cli.js"

alias gitprune="git branch --merged > /tmp/merged-branches && vim /tmp/merged-branches && xargs git branch -d </tmp/merged-branches"
eval "$(hub alias -s)"

alias "git pr"="git pull-request"

# vim->nvim alias
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi
