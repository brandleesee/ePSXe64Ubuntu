#!BIN/BASH

# ePSXe: emulator is property of ePSXe team
# ePSXe64Ubuntu: script is property of Brandon Camilleri ( brandleesee / Yrvyne )
# contact: brandon.camilleri.90@gmail.com
# repository: https://github.com/brandleesee/ePSXe64Ubuntu

ins="ePSXe205linux_x64.zip"
hid="/home/$USER/.epsxe"
dir="/home/$USER/ePSXe"
cor="/usr/share/applications"

echo
echo "**************"
echo "Pre-Requisites"
echo "**************"
echo
echo "  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "  INTERACTIVITY 1 : SUDO password required"
echo "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
		sudo apt-get -y install libsdl-ttf2.0-0 libcurl3 unzip
echo
echo "*****"
echo "ePSXe"
echo "*****"
echo
echo "  =============================================="
echo "  Check for Duplicate icon in share/applications"
echo "  =============================================="
echo
		if [ -d $cor/epsxe.desktop ]; then
		sudo rm -rf $cor/epsxe.desktop
		fi
echo
echo "  ==================================="
echo "  Check for Duplicate ePSXe directory"
echo "  ==================================="
echo
		if [ -d $dir ]; then
		rm -rf $dir
		fi
echo
echo "  ===================================="
echo "  Check for Duplicate .epsxe directory"
echo "  ===================================="
echo
		if [ -d $hid ]; then
		rm -rf $hid
		fi
echo
echo "  =========================="
echo "  Create Temporary Directory"
echo "  =========================="
echo
		mkdir $dir
echo
echo "  ****"
echo "  Icon"
echo "  ****"
echo
echo "    ============="
echo "    Download Icon"
echo "    ============="
echo
		wget https://github.com/brandleesee/ePSXe64Ubuntu/raw/master/epsxe.svg -P $hid
echo
echo "    ==============="
echo "    Create .desktop"
echo "    ==============="
echo
		echo "[Desktop Entry]" > "$hid/epsxe.desktop"
		echo "Type=Application" >> "$hid/epsxe.desktop"
		echo "Terminal=false" >> "$hid/epsxe.desktop"
		echo "Exec=./epsxe" >> "$hid/epsxe.desktop"
		echo "Name=ePSXe" >> "$hid/epsxe.desktop"
		echo "Comment=Created using ePSXe64Ubuntu from https://github.com/brandleesee" >> "$hid/epsxe.desktop"
		echo "Icon=$hid/epsxe.svg" >> "$hid/epsxe.desktop"
		echo "Categories=Game;Emulator;" >> "$hid/epsxe.desktop"
echo
echo "    ================"
echo "    Transfer.desktop"
echo "    ================"
echo
		sudo mv $hid/epsxe.desktop $cor
echo
echo "    <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "    INTERACTIVITY 2 : LOCK TO LAUNCHER"
echo "                      Now is the ideal time to add to favorities:" 
echo "                      Right click on icon in Dash/Dock"
echo "                      Select Add to Favorities / Lock to Launcher"
echo "    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "    <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "    INTERACTIVITY 3 : ePSXe has opened its GUI."
echo "                      CLOSE it to continue." 
echo "                      This creates the hidden .epsxe folder"
echo "                      in $USER."
echo "    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "  =============="
echo "  Download ePSXe"
echo "  =============="
echo
		wget http://www.epsxe.com/files/$ins -P $dir
echo
echo "  ============="
echo "  Extract ePSXe"
echo "  ============="
echo
		unzip $dir/$ins -d $dir
echo
echo "  ================================="
echo "  Move executable to Home directory"
echo "  ================================="
echo
		mv $dir/epsxe_x64 /home/$USER/epsxe
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
		mv $dir/docs $hid
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
		wget https://github.com/brandleesee/ePSXe64Ubuntu/raw/master/shaders.zip -P $dir
echo
echo "    ==============="
echo "    Extract shaders"
echo "    ==============="
echo
		unzip $dir/shaders.zip -d $hid/shaders
echo
echo "  ============================"
echo "  Removing Temporary Directory"
echo "  ============================"
echo
		rm -rf $dir
echo
echo "***************"
echo "ePSXe Installed"
echo "***************"
echo
echo "  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "  For more info visit:"
echo "  https://github.com/brandleesee/ePSXe64Ubuntu"
echo "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
