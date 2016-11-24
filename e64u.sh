#!BIN/BASH

# ePSXe: emulator is property of ePSXe team
# ePSXe64Ubuntu: script is property of Brandon Camilleri ( brandleesee / Yrvyne )
# contact: brandon.camilleri.90@gmail.com
# repository: https://github.com/brandleesee/ePSXe64Ubuntu

ins="ePSXe205linux_x64.zip"
tmp="/home/$USER/ePSXe"
hid="/home/$USER/.epsxe"
bkp="/home/$USER/ePSXe_backup/$(date '+%Y_%m_%d_%R')"
cor="/usr/share/applications"

echo
echo "*************"
echo "Prerequisites"
echo "*************"
echo
echo "  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "  INTERACTIVITY 1 : SUDO password required"
echo "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
		sudo apt-get -y install libsdl-ttf2.0-0 libcurl3 unzip
echo
echo "******"
echo "Backup"
echo "******"
echo
echo "  ===================================="
echo "  Move 'old' epsxe to backup directory"
echo "  ===================================="
echo
		if [ -d $hid ]; then
		mkdir -p $bkp
		mv $hid $bkp
		fi
echo
echo "***********************"
echo "Remove any Duplicate..."
echo "***********************"
echo
echo "  ============================="
echo "  ...icon in share/applications"
echo "  ============================="
echo
		if [ -e $cor/epsxe.desktop ]; then
		sudo rm -rf $cor/epsxe.desktop
		fi
echo
echo "  ================================"
echo "  ...ePSXe directory & recreate it"
echo "  ================================"
echo
		if [ -d $tmp ]; then
		rm -rf $tmp
		mkdir -p $tmp
		fi
echo
echo "****"
echo "Icon"
echo "****"
echo
echo "  ============="
echo "  Download Icon"
echo "  ============="
echo
		wget https://github.com/brandleesee/ePSXe64Ubuntu/raw/master/epsxe.svg -P $hid
echo
echo "  ==============="
echo "  Create .desktop"
echo "  ==============="
echo
		echo "[Desktop Entry]" > "$hid/epsxe.desktop"
		echo "Type=Application" >> "$hid/epsxe.desktop"
		echo "Terminal=false" >> "$hid/epsxe.desktop"
		echo "Exec=./epsxe" >> "$hid/epsxe.desktop"
		echo "Name=ePSXe" >> "$hid/epsxe.desktop"
		echo "Comment=Created using ePSXe64Ubuntu script from https://github.com/brandleesee" >> "$hid/epsxe.desktop"
		echo "Icon=$hid/epsxe.svg" >> "$hid/epsxe.desktop"
		echo "Categories=Game;Emulator;" >> "$hid/epsxe.desktop"
echo
echo "  ================"
echo "  Transfer.desktop"
echo "  ================"
echo
		sudo mv $hid/epsxe.desktop $cor
echo
echo "*****"
echo "ePSXe"
echo "*****"
echo
echo "  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "  INTERACTIVITY 2 : LOCK TO LAUNCHER"
echo "                    Now is the ideal time to add to favorities:" 
echo "                    Right click on icon in Dash/Dock"
echo "                    Select Add to Favorities / Lock to Launcher"
echo "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "  INTERACTIVITY 3 : ePSXe has opened its GUI."
echo "                    CLOSE it to continue." 
echo "                    This creates the hidden .epsxe folder"
echo "                    in $USER."
echo "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "  =============="
echo "  Download ePSXe"
echo "  =============="
echo
		wget http://www.epsxe.com/files/$ins -P $tmp
echo
echo "  ============="
echo "  Extract ePSXe"
echo "  ============="
echo
		unzip $tmp/$ins -d $tmp
echo
echo "  ================================="
echo "  Move executable to Home directory"
echo "  ================================="
echo
		mv $tmp/epsxe_x64 /home/$USER/epsxe
echo
echo "  ====================="
echo "  Make ePSXe executable"
echo "  ====================="
echo
		sudo chmod +x epsxe
echo
echo "  =========="
echo "  Open ePSXe"
echo "  =========="
echo
		./epsxe
echo
echo "  =============================="
echo "  Transfer docs folder to .epsxe"
echo "  =============================="
echo
		mv $tmp/docs $hid
echo
echo "  ================="
echo "  Activate BIOS HLE"
echo "  ================="
echo
		sed -i '11s/.*/BiosPath = /' $hid/epsxerc
		sed -i '14s/.*/BiosHLE = 1/' $hid/epsxerc
echo
echo "  *******"
echo "  Shaders"
echo "  *******"
echo
echo "    ================"
echo "    Download shaders"
echo "    ================"
echo
		wget https://github.com/brandleesee/ePSXe64Ubuntu/raw/master/shaders.zip -P $tmp
echo
echo "    ==============="
echo "    Extract shaders"
echo "    ==============="
echo
		unzip $tmp/shaders.zip -d $hid/shaders
echo
echo "  ============================"
echo "  Removing Temporary Directory"
echo "  ============================"
echo
		rm -rf $tmp
echo
echo "****************"
echo "Restoring Backup"
echo "****************"
echo
		cp -avr $bkp/.epsxe/cheats/. $hid/cheats
		cp -avr $bkp/.epsxe/config/. $hid/config
		cp -avr $bkp/.epsxe/configs/. $hid/configs
		cp -avr $bkp/.epsxe/covers/. $hid/covers
		cp -avr $bkp/.epsxe/idx/. $hid/idx
		cp -avr $bkp/.epsxe/info/. $hid/info
		cp -avr $bkp/.epsxe/memcards/. $hid/memcards
		cp -avr $bkp/.epsxe/patches/. $hid/patches
		cp -avr $bkp/.epsxe/plugins/. $hid/plugins
		cp -avr $bkp/.epsxe/shaders/. $hid/shaders
		cp -avr $bkp/.epsxe/sstates/. $hid/sstates
echo
echo "***************"
echo "Script Finished"
echo "***************"
echo
echo "  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "  For more information visit:"
echo "  https://github.com/brandleesee/ePSXe64Ubuntu"
echo "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
