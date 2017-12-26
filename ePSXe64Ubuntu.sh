#!bin/bash

# ePSXe emulator is property of ePSXe team, http://epsxe.com/, under Proprietary license.
# ePSXe64Ubuntu.sh and formerly e64u.sh scripts are property of Brandon Lee Camilleri ( blc / brandleesee / Yrvyne ), https://twitter.com/brandleesee and https://www.reddit.com/user/Yrvyne/.
# ePSXe64Ubuntu.sh and formerly e64u.sh scripts are protected under the vestiges of GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007.
# Disclaimer: Brandon Lee Camilleri ( blc / brandleesee / Yrvyne ) does not assume any responsibilities and shall not be held liable should ePSXe64Ubuntu.sh, e64u.sh, shaders.zip, ePSXe.svg and/or README.md fail in their intended purposes, attempt and usage and/or break the systems being used on.
# Brandon Lee Camilleri ( blc / brandleesee / Yrvyne ) can be reached on brandon.camilleri.90@gmail.com
# ePSXe64Ubuntu repository can be found at https://github.com/brandleesee/ePSXe64Ubuntu

ver="v9"
ins="ePSXe205linux_x64.zip"
hid="/home/$USER/.epsxe"
bkp="/home/$USER/ePSXe_backups/$(date "+%F-%T-%Z")"
cor="/usr/share/applications"
exe="/home/$USER/ePSXe"
dls="https://raw.githubusercontent.com/brandleesee/ePSXe64Ubuntu/master"
opt=("Download" "Restore from backup")
PS3="Choose from 1 to 3 above. "

tput setaf 11; echo "Welcome to ePSXe64Ubuntu.sh script, version $ver."; tput sgr0
tput setaf 12; echo "This installs '$ins' on Ubuntu x64 and its derivatives."; tput sgr0
tput setaf 9; echo "SUDO password required"; tput sgr0
tput setaf 9; echo "WHEN ePSXe GUI appears on screen, you can:"; tput sgr0
tput setaf 9; echo "     Right click on icon in Dash/Dock/Panel and Add to Favorities/Lock"; tput sgr0
tput setaf 9; echo "     Icon placeholder in Dash/Dock/Panel may be invisible. Right-clicking still works."; tput sgr0
tput setaf 9; echo "     Close ePSXe GUI to continue with the script."; tput sgr0
 	{
 	  declare os
	  os="$(lsb_release -i | cut -f 2)"
	  if [[ "$os" == "Xubuntu" ]]; then
	    sudo apt-get -qq -y install libcurl3 libsdl-ttf2.0-0 ecm unzip
	  else
	    sudo apt-get -qq -y install libsdl-ttf2.0-0 ecm unzip
	  fi
	}
tput setaf 11; echo "Backup .epsxe, if any"; tput sgr0
	if [ -d "$hid" ]; then
	  mkdir -p "$bkp"
	  mv "$hid" "$bkp"
	fi
tput setaf 11; echo "Remove any duplicates of ePSXe executable"; tput sgr0
	if [ -e "$exe" ]; then
	  sudo rm -rf "$exe"
	fi
tput setaf 11; echo "ePSXe.desktop"; tput sgr0
	if [ -e "$cor/ePSXe.desktop" ]; then
	  sudo rm -rf "$cor/ePSXe.desktop"
	fi
	echo "[Desktop Entry]" > "/tmp/ePSXe.desktop"
	{
	  echo "Type=Application"
	  echo "Terminal=false"
	  echo "Exec=./ePSXe"
	  echo "Name=ePSXe"
	  echo "Comment=Created using ePSXe64Ubuntu from https://github.com/brandleesee"
	  echo "Icon=$hid/ePSXe.svg"
	  echo "Categories=Game;Emulator;"
	} >> "/tmp/ePSXe.desktop"
	sudo mv "/tmp/ePSXe.desktop" "$cor/ePSXe.desktop"
tput setaf 11; echo "Setting up ePSXe"; tput sgr0
	wget -q "http://www.epsxe.com/files/$ins" -P "/tmp"
	unzip -qq "/tmp/$ins" -d "/tmp"
	mv "/tmp/epsxe_x64" "/home/$USER/ePSXe"
	sudo chmod +x "/home/$USER/ePSXe"
	"/home/$USER/ePSXe"
tput setaf 11; echo "Download Icon"; tput sgr0
	wget -q "$dls/ePSXe.svg" -P "$hid"
tput setaf 11; echo "Transfer docs folder to .epsxe"; tput sgr0
	mv "/tmp/docs" "$hid"
tput setaf 11; echo "Activate BIOS HLE"; tput sgr0
	sed -i '11s/.*/BiosPath = /' "$hid/epsxerc"
	sed -i '14s/.*/BiosHLE = 1/' "$hid/epsxerc"
tput setaf 11; echo "Restore Backup"; tput sgr0
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
tput setaf 11; echo "Shaders"; tput sgr0
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
	      echo "This choice has reinstated the backed up shaders.";
	      break
	    ;;
	    $(( ${#opt[@]}+1 )) ) echo "This choice has left the shaders folder empty."; break;;
	    *) echo "Invalid option. Choose from 1 to 3.";continue;;
	  esac
	done
tput setaf 11; echo "Remove Clutter"; tput sgr0
	rm -rf "/tmp/$ins"
	rm -rf "/tmp/shaders.zip"
tput setaf 11; echo "Script Finished"; tput sgr0

