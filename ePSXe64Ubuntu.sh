#!/bin/bash

# ePSXe emulator is property of ePSXe team, http://epsxe.com/, under Proprietary license.
# ePSXe64Ubuntu.sh and formerly e64u.sh scripts are property of Brandon Lee Camilleri ( blc / brandleesee / Yrvyne , https://www.reddit.com/user/Yrvyne/, https://www.blc.mt )
# ePSXe64Ubuntu.sh and formerly e64u.sh scripts are protected under the vestiges of GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007.
# Disclaimer: Brandon Lee Camilleri ( blc / brandleesee / Yrvyne ) does not assume any responsibilities and shall not be held liable should ePSXe64Ubuntu.sh, e64u.sh, shaders.zip, .ePSXe.svg CHANGELOG.md and/or README.md fail in their intended purpose, attempt and usage and/or break the system/s being used on.
# Brandon Lee Camilleri ( blc / brandleesee / Yrvyne ) can be reached on brandon.camilleri.90@gmail.com
# ePSXe64Ubuntu repository can be found at https://github.com/brandleesee/ePSXe64Ubuntu

# Leave anything with ~ unquoted so it expands properly.  This lets us handle complicated home directory locations
ver="11.6"
ins="ePSXe205linux_x64.zip"
hme=~
hid=~/.epsxe
bkp=~/ePSXe_backups/$(date "+%F-%T-%Z")
cor=~/.local/share/applications
exe=~/.local/bin/ePSXe
dls="https://raw.githubusercontent.com/brandleesee/ePSXe64Ubuntu/master"
opt=("Download" "Restore from backup")
PS3="Choose from 1 to 3 above. "
PROTO="http"
MIRROR="archive.ubuntu.com"

check_sha256sum() {
	tempfile=$1
	filehash=$2
	if [ ! -f "${tempfile}" ]; then
		tput setaf 1; echo "  ERROR: File ${tempfile} doesn't exist"; tput sgr0
		exit 1
	elif [ "$(sha256sum "${tempfile}" | head -c 64)" = "${filehash}" ]; then
		tput setaf 2; echo "${tempfile} matches provided sha256sum"; tput sgr0
	else
		tput setaf 1; echo "  ERROR: ${tempfile} doesn't match provided sha256sum"; tput sgr0
		exit 1
	fi
}

tput setaf 2; echo "Welcome to ePSXe64Ubuntu.sh script, $ver."; tput sgr0
tput setaf 1; echo "When ePSXe window appears on screen:"; tput sgr0
tput setaf 1; echo "  Right click on icon in Dash/Dock/Panel"; tput sgr0
tput setaf 1; echo "  Add to Favorites/Lock"; tput sgr0
tput setaf 1; echo "  CLOSE ePSXe GUI to continue with the script."; tput sgr0
tput setaf 2; echo "Script started."; tput sgr0

sudo apt-get update
sudo apt-get -y install wget sed
# xxd was provided by vim-common on older distros
sudo apt-get -y install xxd || sudo apt-get -y install vim-common

# Install ubuntu 18.04 version of openssl1.0.0 if it's not known to our version of our distribution
if ! apt-cache show libssl1.0.0 2>/dev/null|grep -q '^Package: libssl1.0.0$'
then
	filename="libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb"
	tempfile="/tmp/${filename}"
	filehash="fcadc659174561b7a925e4f17e9de7451f4fb556a032fea1ed2ff800ed3a285e"
	wget "${PROTO}://${MIRROR}/ubuntu/pool/main/o/openssl1.0/${filename}" -O "${tempfile}"
	check_sha256sum "${tempfile}" "${filehash}"
	sudo dpkg --force-depends -i "${tempfile}"
	sudo apt-get -y install -f
	rm "${tempfile}"
fi

if ! apt-cache show ecm 2>/dev/null|grep -q '^Package: ecm$'
then
	filename="ecm_1.03-1build1_amd64.deb"
	tempfile="/tmp/${filename}"
	filehash="3889b926bcaed64bfc66f20c27f943e63ec41c701d1d50682b21f06f95d6fcfd"
	wget "${PROTO}://${MIRROR}/ubuntu/pool/universe/c/cmdpack/${filename}" -O "${tempfile}"
	check_sha256sum "${tempfile}" "${filehash}"
	sudo dpkg --force-depends -i "${tempfile}"
	sudo apt-get -y install -f
	rm "${tempfile}"
fi

# Installs required packages per OS
if apt-cache show libcurl4 2>/dev/null|grep -q '^Package: libcurl4$'
then
	sudo apt-get -y install libncurses5 libsdl-ttf2.0-0 libssl1.0.0 ecm unzip
	filename="libcurl3_7.58.0-2ubuntu2_amd64.deb"
	tempfile="/tmp/${filename}"
	filehash="26d8e98614a55013b35afac465081ec17c9d931ee11f648bca7c3cbaefb404af"
	wget "${PROTO}://${MIRROR}/ubuntu/pool/main/c/curl3/${filename}" -O "${tempfile}"
	check_sha256sum "${tempfile}" "${filehash}"
	sudo mkdir /tmp/libcurl3
	sudo dpkg-deb -x "${tempfile}" /tmp/libcurl3
	sudo cp -vn /tmp/libcurl3/usr/lib/x86_64-linux-gnu/libcurl.so.4.5.0 /usr/lib/x86_64-linux-gnu/libcurl.so.3
	sudo rm -rf /tmp/libcurl3
	rm "${tempfile}"
else
	sudo apt-get -y install libcurl3 libsdl-ttf2.0-0 libssl1.0.0 ecm unzip
fi

# Back-up function
	if [ -d "$hid" ]; then
	  mkdir -p "$bkp"
	  mv "$hid" "$bkp"
	fi

# Removes duplicate of ePSXe executable
	if [ -e "$exe" ]; then
	  rm -rf "$exe"
	fi

# Downloads Icon
	mkdir -p "$hme/.local/share/ePSXe"
	wget -q "$dls/.ePSXe.svg" -O "$hme/.local/share/ePSXe/ePSXe.svg"

# Checks and creates icon data for Dash/Dock/Panel
	if [ -e "$cor/ePSXe.desktop" ]; then
	  rm -rf "$cor/ePSXe.desktop"
	fi
	echo "[Desktop Entry]" > "/tmp/ePSXe.desktop"
	{
	  echo "Type=Application"
	  echo "Terminal=false"
	  echo "Exec=$exe"
	  echo "Name=ePSXe"
	  echo "Comment=Created using ePSXe64Ubuntu from https://github.com/brandleesee"
	  echo "Icon=$hme/.local/share/ePSXe/ePSXe.svg"
	  echo "Categories=Game;Emulator;"
	} >> "/tmp/ePSXe.desktop"
	mkdir -p "$cor"
	mv "/tmp/ePSXe.desktop" "$cor/ePSXe.desktop"

# Sets up ePSXe
	wget -q "https://www.epsxe.com/files/$ins" -P "/tmp" || wget -q "http://www.epsxe.com/files/$ins" -P "/tmp"
	unzip -qq "/tmp/$ins" -d "/tmp"
	mkdir -p "$(dirname $exe)"
	if apt-cache show libcurl4 2>/dev/null|grep -q '^Package: libcurl4$'
	then
	  xxd /tmp/epsxe_x64 /tmp/epsxe_x64.xxd
	  sed -i '6434c \00019210: 2e73 6f2e 3300 6375 726c 5f65 6173 795f  .so.3.curl_easy_' /tmp/epsxe_x64.xxd
	  xxd -r /tmp/epsxe_x64.xxd "$exe"
	  rm -f /tmp/epsxe_x64.xxd
	  if ! sha256sum -c --quiet <(echo "45fb1ee4cb21a5591de64e1a666e4c3cacb30fcc308f0324dc5b2b57767e18ee  $exe")
	  then
	    tput setaf 1; echo "WARNING: patched $exe did not match checksum, using original executable instead"; tput sgr0
	    cp -f /tmp/epsxe_x64 "$exe"
	  fi
	  rm -f /tmp/epsxe_x64
	else
	  mv "/tmp/epsxe_x64" "$exe"
	fi
	chmod +x "$exe"
	"$exe"

# Transfers docs folder to .epsxe
	mkdir -p "$hid"
	mv "/tmp/docs" "$hid"

# Activates BIOS HLE
	sed -i '11c \BiosPath = ' "$hid/epsxerc"
	sed -i '14c \BiosHLE = 1' "$hid/epsxerc"

# Restores Back-Up
	if [ -d "$bkp/.epsxe" ]; then
	  cp -r "$bkp/.epsxe/bios/." "$hid/bios"
	  cp -r "$bkp/.epsxe/cheats/." "$hid/cheats"
	  cp -r "$bkp/.epsxe/config/." "$hid/config"
	  cp -r "$bkp/.epsxe/configs/." "$hid/configs"
	  cp -r "$bkp/.epsxe/covers/." "$hid/covers"
	  cp -r "$bkp/.epsxe/docs/." "$hid/docs"
	  cp -r "$bkp/.epsxe/idx/." "$hid/idx"
	  cp -r "$bkp/.epsxe/info/." "$hid/info"
	  cp -r "$bkp/.epsxe/memcards/." "$hid/memcards"
	  cp -r "$bkp/.epsxe/patches/." "$hid/patches"
	  cp -r "$bkp/.epsxe/plugins/." "$hid/plugins"
	  cp -r "$bkp/.epsxe/sstates/." "$hid/sstates"
	fi

# Function for Shaders
tput setaf 2; echo "Shaders Menu"; tput sgr0
	select opt in "${opt[@]}" "Do nothing"; do
	  case "$REPLY" in
	    1 )
	      wget -q "$dls/shaders.zip" -P "/tmp"
	      unzip -qq "/tmp/shaders.zip" -d "$hid/shaders"
	      echo "This choice has downloaded shaders from ePSXe64Ubuntu repository.";
	      break
	    ;;
	    2 )
	      cp -r "$bkp/.epsxe/shaders/." "$hid/shaders"
	      break
	    ;;
	    $(( ${#opt[@]}+1 )) ) echo "This choice has left the shaders folder empty."; break;;
	    *) echo "Invalid option. Choose from 1 to 3.";continue;;
	  esac
	done

# Removes clutter
	rm -rf "/tmp/$ins"
	rm -rf "/tmp/shaders.zip"

tput setaf 2; echo "Script finished."; tput sgr0
