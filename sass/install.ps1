#!/usr/bin/env pwsh

##################
# Install dart-sass #
##################

$pkg_cmd_name = "dart-sass"

$pkg_dst_cmd = "$Env:USERPROFILE\.local\opt\dart-sass\sass.bat"
$pkg_dst_dir = "$Env:USERPROFILE\.local\opt\dart-sass"
$pkg_dst = "$pkg_dst"
#$pkg_dst_cmd = "$Env:USERPROFILE\.local\bin\sass.bat"
#$pkg_dst = "$pkg_dst_cmd"

$pkg_src_cmd = "$Env:USERPROFILE\.local\opt\dart-sass-v$Env:WEBI_VERSION\sass.bat"
$pkg_src_bin = "$Env:USERPROFILE\.local\opt\dart-sass-v$Env:WEBI_VERSION"
$pkg_src_dir = "$Env:USERPROFILE\.local\opt\dart-sass-v$Env:WEBI_VERSION"
$pkg_src = "$pkg_src_dir"

$pkg_download = "$Env:USERPROFILE\Downloads\$Env:WEBI_PKG_FILE"

IF (!(Test-Path -Path "$Env:USERPROFILE\Downloads\$Env:WEBI_PKG_FILE"))
{
    # TODO: arch detection
    echo "Downloading sass (dart-sass) from $Env:WEBI_PKG_URL to $pkg_download"
    & curl.exe -A "$Env:WEBI_UA" -fsSL "$Env:WEBI_PKG_URL" -o "$pkg_download.part"
    & move "$pkg_download.part" "$pkg_download"
}

IF (!(Test-Path -Path "$pkg_src_cmd"))
{
    echo "Installing sass (dart-sass)"

    pushd .local\tmp

        # Remove any leftover tmp cruft
        Remove-Item -Path ".\dart-sass-v*" -Recurse -ErrorAction Ignore

        echo "Unpacking $pkg_download"
        & tar xf "$pkg_download"

        echo "Install Location: $pkg_src_cmd"
        
        Move-Item -Path ".\dart-sass\*" -Destination "$pkg_src_dir"

    # Exit tmp
    popd
}
New-Item "$pkg_src_bin" -ItemType Directory -Force > $null | out-null
Remove-Item "$pkg_dst_dir" -Force -Confirm:$False -Recurse -ErrorAction Ignore | out-null
echo "Linking '$pkg_dst_dir' from '$pkg_src_dir'"
New-Item -ItemType Junction -Path "$pkg_dst_dir" -Target "$pkg_src_dir" > $null

# Add to path
& "$Env:USERPROFILE\.local\bin\pathman.exe" add ~/.local/opt/dart-sass
