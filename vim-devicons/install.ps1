#!/usr/bin/env pwsh

IF (!(Test-Path -Path "$Env:USERPROFILE\.vim\pack\plugins\start")) {
    New-Item -Path "$Env:USERPROFILE\.vim\pack\plugins\start" -ItemType Directory -Force
}
Remove-Item -Path "$Env:USERPROFILE\.vim\pack\plugins\start\devicons" -Recurse -ErrorAction Ignore | out-null
& git clone --depth=1 https://github.com/ryanoasis/vim-devicons.git "$Env:USERPROFILE\.vim\pack\plugins\start\devicons.vim"
