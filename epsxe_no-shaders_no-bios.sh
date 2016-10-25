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
		sudo apt -y install libsdl-ttf2.0-0 zip unzip
echo
echo "*****"
echo "ePSXe"
echo "*****"
echo
echo "  ============================"
echo "  Create Temporary Directories"
echo "  ============================"
echo
		mkdir ~/ePSXe
		mkdir /tmp/ePSXe
echo
echo "  =============="
echo "  Download ePSXe"
echo "  =============="
echo
		wget http://www.epsxe.com/files/ePSXe205linux_x64.zip -P /tmp/ePSXe
echo
echo "  ============="
echo "  Extract ePSXe"
echo "  ============="
echo
		unzip /tmp/ePSXe/ePSXe205linux_x64.zip -d ~/ePSXe
echo
echo "  ================================="
echo "  Move executable to Home directory"
echo "  ================================="
echo
		mv ~/ePSXe/epsxe_x64 ~/epsxe		
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
echo "    <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "    INTERACTIVITY 2 : ePSXe has opened its GUI. CLOSE it to continue. This creates the hidden .epsxe folder in HOME directory"
echo "    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "  =============================="
echo "  Transfer docs folder to .epsxe"
echo "  =============================="
echo
		mv ~/ePSXe/docs ~/.epsxe
echo
echo "  =============================="
echo "  Removing Temporary Directories"
echo "  =============================="
echo
		rm -rf /tmp/ePSXe
		rm -rf ~/ePSXe
echo
echo "***************"
echo "ePSXe Installed"
echo "***************"
echo
		cd ~
echo

