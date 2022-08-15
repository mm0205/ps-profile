$homeDir = $Env:HOME

$Env:PATH = ":/usr/local/go/bin:" + $ENV:PATH
$Env:PATH = ":$homeDir/.jenv/shims" + $ENV:PATH
$Env:PATH = ":$homeDir/.jenv/bin" + $ENV:PATH
$Env:PATH = ":$homeDir/.rbenv/shims" + $ENV:PATH
$Env:PATH = ":$homeDir/.rbenv/bin" + $ENV:PATH
$Env:PATH = ":$homeDir/.pyenv/shims" + $ENV:PATH
$Env:PATH = ":$homeDir/.pyenv/bin" + $ENV:PATH
$Env:PATH = ":/usr/local/bin" + $ENV:PATH
$Env:PATH = ":/usr/local/share/dotnet" + $ENV:PATH
$Env:PATH = ":$homeDir/.dotnet/tools" + $ENV:PATH
$Env:PATH = ":/Library/Frameworks/Mono.framework/Versions/Current/Commands" + $ENV:PATH
$Env:PATH = ":$homeDir/.local/bin" + $ENV:PATH
# $Env:PATH = ":$homeDir/.yarn/bin" + $Env:PATH
$Env:PATH = ":$homeDir/.cargo/bin" + $Env:PATH
$Env:PATH = $Env:PATH + ":$homeDir/.pub-cache/bin"
$Env:PATH = $Env:PATH + ":$homeDir/tools"
$Env:PATH = $Env:PATH + ":$(go env GOPATH)/bin"
$Env:PATH = $Env:PATH + ":~/.config/nvim/dein/repos/github.com/junegunn/fzf/bin"

function prompt {
    "PS $($executionContext.SessionState.Path.CurrentLocation)`n" + $('>' * ($nestedPromptLevel + 1)) 
}



Remove-Item Alias:cd
Set-Alias -Name cd -Value Push-Location

function Open-Photoshop {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path
    )

    open $Path -a "/Applications/Adobe Photoshop 2022/Adobe Photoshop 2022.app"
}


function Unmount-Device {
    df -H | fzf | awk '{ print $1 }' | Split-Path -Leaf | xargs diskutil unmount
}

. ~/.config/powershell/ext/github.com/mm0205/ps-bookmark/ps-bookmark.ps1


