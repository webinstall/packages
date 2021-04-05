#!/usr/bin/env pwsh

New-Item -Path "$Env:USERPROFILE\.vim\pack\plugins\start" -ItemType Directory -Force

Remove-Item -Path "$Env:USERPROFILE\.vim\pack\plugins\start\vim-lastplace" -Recurse -ErrorAction Ignore | out-null
& git clone --depth=1 https://github.com/farmergreg/vim-lastplace.git "$Env:USERPROFILE\.vim\pack\plugins\start\vim-lastplace"
