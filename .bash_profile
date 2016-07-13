alias tubearia='youtube-dl --external-downloader aria2c --external-downloader-args "-x16"'
cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

pman()
{
    man -t "${1}" | open -f -a /Applications/Preview.app/
}

alias scanWifi="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s"

alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

alias ccat='pygmentize -O style=monokai -f console256 -g'

alias publicIP='proxychains4 curl ip.appspot.com; echo'

alias f='open -a Finder ./'

