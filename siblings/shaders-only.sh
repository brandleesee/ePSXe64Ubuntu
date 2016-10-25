#!BIN/BASH

echo
echo "**************"
echo "Pre-Requisites"
echo "**************"
echo
echo "  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "  INTERACTIVITY 1 : SUDO password required"
echo "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
		sudo apt -y install zip unzip
echo
echo "  ============================"
echo "  Create Temporary Directories"
echo "  ============================"
echo
		mkdir /tmp/ePSXe
echo
echo "  *******"
echo "  Shaders"
echo "  *******"
echo
echo "    ================"
echo "    Download shaders"
echo "    ================"
echo
		wget http://www.epsxe.com/files/shaders.zip -P /tmp/ePSXe
echo
echo "    ==============="
echo "    Extract shaders"
echo "    ==============="
echo
		unzip /tmp/ePSXe/shaders.zip -d ~/.epsxe/shaders
echo
echo
echo "  =============================="
echo "  Removing Temporary Directories"
echo "  =============================="
echo
		rm -rf /tmp/ePSXe
		rm -rf ~/.epsxe/shaders/shaders
echo
echo "*****************"
echo "Shaders Installed"
echo "*****************"
echo
		cd ~
echo

