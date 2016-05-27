$VimDir = Join-Path -Path $HOME -ChildPath vimfiles
if ((Test-Path -Path $VimDir) -eq $False) {
    New-Item -Type Directory -Path $VimDir
}

$BundlesDir = Join-Path -Path $VimDir -ChildPath bundle
if ((Test-Path -Path $BundlesDir) -eq $False) {
    New-Item -Type Directory -Path $BundlesDir
}

$VundleDir = Join-Path -Path $BundlesDir -ChildPath Vundle.vim
if ((Test-Path -Path $VundleDir) -eq $False) {
    Write-Host "clonning Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git $VundleDir
}

$Vimrc = Join-Path -Path $HOME -ChildPath _vimrc
Write-Host "Copying vimrc..."
Copy-Item vimrc $Vimrc
