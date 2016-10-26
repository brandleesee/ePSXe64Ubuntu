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
echo "  *******"
echo "  Shaders"
echo "  *******"
echo
echo "    ================"
echo "    Download shaders"
echo "    ================"
echo
		wget https://github.com/brandleesee/ePSXe64Ubuntu/raw/master/shaders.zip -P /tmp/ePSXe
echo
echo "    ==============="
echo "    Extract shaders"
echo "    ==============="
echo
		unzip /tmp/ePSXe/shaders.zip -d ~/.epsxe/shaders
echo
echo "  ****"
echo "  BIOS"
echo "  ****"
echo
echo "    ============="
echo "    Download BIOS"
echo "    ============="
echo
		wget http://www.emuparadise.me/biosfiles/PSX.zip -P /tmp/ePSXe
echo
echo "    ============"
echo "    Extract BIOS"
echo "    ============"
echo
		unzip /tmp/ePSXe/PSX.zip -d /tmp/ePSXe
echo
echo "    ==================="
echo "    Redirect BIOS files"
echo "    ==================="
echo
		mv '/tmp/ePSXe/PSX/PSX - BIOS41A.BIN' ~/.epsxe/bios/bios41a.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH101.BIN' ~/.epsxe/bios/scph101.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH5000.BIN' ~/.epsxe/bios/scph5000.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH1000.BIN' ~/.epsxe/bios/scph1000.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH1001.BIN' ~/.epsxe/bios/scph1001.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH1002.bin' ~/.epsxe/bios/scph1002.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH3000.bin' ~/.epsxe/bios/scph3000.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH3500.bin' ~/.epsxe/bios/scph3500.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH5500.BIN' ~/.epsxe/bios/scph5500.bin
		cp -i '/tmp/ePSXe/PSX/PSX - SCPH7003.BIN' ~/.epsxe/bios/scph5501.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH5502.BIN' ~/.epsxe/bios/scph5502.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH5552.bin' ~/.epsxe/bios/scph5503.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH7000.BIN' ~/.epsxe/bios/scph7000.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH7001.BIN' ~/.epsxe/bios/scph7001.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH7003.BIN' ~/.epsxe/bios/scph7003.bin
		mv '/tmp/ePSXe/PSX/PSX - SCPH7502.BIN' ~/.epsxe/bios/scph7502.bin
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

