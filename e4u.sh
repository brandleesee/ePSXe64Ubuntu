#!BIN/BASH

echo
echo "*****************"
echo "INSTALLING: ePSXe"
echo "*****************"
echo
echo "  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "  INFO 1 : SUDO password required"
echo "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "  INFO 2 : This script includes notes directly copied from software providers for information and troubleshooting purposes."
echo "           Notes copied from:"
echo "                    http://www.pbernert.com/html/gpu.htm"
echo "                    http://www.pbernert.com/html/spu.htm"
echo "                    http://www.pbernert.com/html/cdr.htm"
echo "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "  ==========================="
echo "  Create ePSXe HOME Directory"
echo "  ==========================="
echo
		mkdir ~/ePSXe
echo
echo "  ============================"
echo "  Create Temporary Directories"
echo "  ============================"
echo
		mkdir /tmp/ePSXe
		mkdir /tmp/ePSXe/bios
		mkdir /tmp/ePSXe/installer
		mkdir /tmp/ePSXe/gpu-plugins
		mkdir /tmp/ePSXe/gpu-plugins/1
		mkdir /tmp/ePSXe/gpu-plugins/2
		mkdir /tmp/ePSXe/gpu-plugins/3
		mkdir /tmp/ePSXe/configs
		mkdir /tmp/ePSXe/configs/1
		mkdir /tmp/ePSXe/spu-plugins
		mkdir /tmp/ePSXe/spu-plugins/1
		mkdir /tmp/ePSXe/spu-plugins/2
		mkdir /tmp/ePSXe/shaders
		mkdir /tmp/ePSXe/shaders/01
		mkdir /tmp/ePSXe/shaders/02
		mkdir /tmp/ePSXe/shaders/03
		mkdir /tmp/ePSXe/shaders/04
		mkdir /tmp/ePSXe/shaders/05
		mkdir /tmp/ePSXe/shaders/06
		mkdir /tmp/ePSXe/shaders/07
		mkdir /tmp/ePSXe/shaders/08
		mkdir /tmp/ePSXe/shaders/09
		mkdir /tmp/ePSXe/shaders/10
		mkdir /tmp/ePSXe/shaders/11
echo
echo "  =============="
echo "  Download ePSXe"
echo "  =============="
echo
		wget http://www.epsxe.com/files/ePSXe205linux_x64.zip -P /tmp/ePSXe/installer
echo
echo "  ============="
echo "  Extract ePSXe"
echo "  ============="
echo
		unzip /tmp/ePSXe/installer/ePSXe205linux_x64.zip -d ~/ePSXe
echo
echo "  ======================"
echo "  Install Pre-Requisites"
echo "  ======================"
echo
		sudo apt -y install libsdl-ttf2.0-0
echo
echo "  ================"
echo "  ePSXe executable"
echo "  ================"
echo
		cd ~/ePSXe
		sudo chmod +x epsxe_x64
echo
echo "  =============="
echo "  Activate ePSXe"
echo "  =============="
echo
		./epsxe_x64
echo
echo "    <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "    INFO: ePSXe has opened its GUI. CLOSE it to continue. This creates the hidden .epsxe folder in HOME directory"
echo "    >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "  ============================"
echo "  Create Permanent Directories"
echo "  ============================"
echo
		mkdir ~/.epsxe/shaders/broken_glass
		mkdir ~/.epsxe/shaders/multitexdemo
		mkdir ~/.epsxe/shaders/gray
		mkdir ~/.epsxe/shaders/simpleblur
		mkdir ~/.epsxe/shaders/brightness
		mkdir ~/.epsxe/shaders/rotate
		mkdir ~/.epsxe/shaders/scale2x
		mkdir ~/.epsxe/shaders/median
		mkdir ~/.epsxe/shaders/median_glow
		mkdir ~/.epsxe/shaders/luigi_aa
		mkdir ~/.epsxe/shaders/guest-shaders
		mkdir ~/.epsxe/shaders/guest-shaders/2xGLSLHqFilter
		mkdir ~/.epsxe/shaders/guest-shaders/2xGLSL
		mkdir ~/.epsxe/shaders/guest-shaders/4xGLSLHqFilter
		mkdir ~/.epsxe/shaders/guest-shaders/4xGLSLHqFilter/Original
		mkdir ~/.epsxe/shaders/guest-shaders/4xGLSLScale
		mkdir ~/.epsxe/shaders/guest-shaders/4xGLSL
		mkdir ~/.epsxe/shaders/guest-shaders/AA-Color
		mkdir ~/.epsxe/shaders/guest-shaders/Advanced_Cartoon
		mkdir ~/.epsxe/shaders/guest-shaders/Advanced_Cartoon/1
		mkdir ~/.epsxe/shaders/guest-shaders/Advanced_Cartoon/2
		mkdir ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB
		mkdir ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB/1
		mkdir ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB/2
		mkdir ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB/3
		mkdir ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC
		mkdir ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC/1
		mkdir ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC/2
		mkdir ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC/3
		mkdir ~/.epsxe/shaders/guest-shaders/Color
		mkdir ~/.epsxe/shaders/guest-shaders/OGL2Lookup
		mkdir ~/.epsxe/shaders/guest-shaders/Sal_GLSL
		mkdir ~/.epsxe/shaders/guest-shaders/Storybook
		mkdir ~/.epsxe/shaders/guest-shaders/Storybook/Colored
		mkdir ~/.epsxe/shaders/guest-shaders/Storybook/1
		mkdir ~/.epsxe/shaders/guest-shaders/Storybook/2
echo
echo "  ***********"
echo "  GPU Plugins"
echo "  ***********"
echo
echo "    ========================="
echo "    Pete's XGL2 Linux PSX GPU"
echo "    ========================="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: This is the Linux port of the OpenGL2 plugin. It needs a modern card and up-to-date Linux drivers"
echo "            (requires FBOs or pbuffers, ATI's render-to-texture ability is also supported)!"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      ----------------------------------"
echo "      DOWNLOAD Pete's XGL2 Linux PSX GPU"
echo "      ----------------------------------"
echo
		wget http://www.pbernert.com/gpupetexgl209.tar.gz -P /tmp/ePSXe/gpu-plugins/1
echo
echo "      ---------------------------------"
echo "      EXTRACT Pete's XGL2 Linux PSX GPU"
echo "      ---------------------------------"
echo
		gzip -dc /tmp/ePSXe/gpu-plugins/1/gpupetexgl209.tar.gz | tar -xf - -C /tmp/ePSXe/gpu-plugins/1
echo
echo "      ----------------------------------------"
echo "      REDIRECT Pete's XGL2 Linux PSX GPU files"
echo "      ----------------------------------------"
echo
		cp -i /tmp/ePSXe/gpu-plugins/1/gpuPeteXGL2.cfg ~/.epsxe/configs
		cp -i /tmp/ePSXe/gpu-plugins/1/libgpuPeteXGL2.so.2.0.9 ~/.epsxe/plugins
		cp -i /tmp/ePSXe/gpu-plugins/1/readme.txt ~/.epsxe/plugins/gpuPeteXGL2_readme.txt
		cp -i /tmp/ePSXe/gpu-plugins/1/version.txt ~/.epsxe/plugins/gpuPeteXGL2_version.txt
echo
echo "    ========================="
echo "    P.E.Op.S./Pete's MesaGL Linux PSX GPU"
echo "    ========================="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: GPU port... it will be running fine at least on nVidias xfree4 glx, but all other cards with hw acceleration could also work."
echo "            The Linux ports of P©SX and ePSXe are supporting this plugin, and I've also done a small test application for the plugin."
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      ----------------------------------------------"
echo "      DOWNLOAD P.E.Op.S./Pete's MesaGL Linux PSX GPU"
echo "      ----------------------------------------------"
echo
		wget http://www.pbernert.com/gpupeopsmesagl178.tar.gz -P /tmp/ePSXe/gpu-plugins/2
echo
echo "      ---------------------------------------------"
echo "      EXTRACT P.E.Op.S./Pete's MesaGL Linux PSX GPU"
echo "      ---------------------------------------------"
echo
		gzip -dc /tmp/ePSXe/gpu-plugins/2/gpupeopsmesagl178.tar.gz | tar -xf - -C /tmp/ePSXe/gpu-plugins/2
echo
echo "      ----------------------------------------------"
echo "      REDIRECT P.E.Op.S./Pete's MesaGL Linux PSX GPU"
echo "      ----------------------------------------------"
echo
		cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/cfgPeopsMesaGL ~/.epsxe/plugins
		cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/gpuPeopsMesaGL.cfg ~/.epsxe/configs
		cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/libgpuPeopsMesaGL.so.1.0.78 ~/.epsxe/plugins
		cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/readme.txt ~/.epsxe/plugins/peops_psx_mesagl_gpu_readme.txt
		cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/version.txt ~/.epsxe/plugins/peops_psx_mesagl_gpu_version.txt
echo
echo "    ========================-="
echo "    P.E.Op.S. Soft GPU (Linux)"
echo "    =======================-=="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: The Linux PSX soft gpu emulation plugin, using X/SDL/DGA2 (depending on the main emu plugin interface)."
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      -----------------------------------"
echo "      DOWNLOAD P.E.Op.S. Soft GPU (Linux)"
echo "      -----------------------------------"
echo
		wget http://www.pbernert.com/gpupeopssoftx118.tar.gz -P /tmp/ePSXe/gpu-plugins/3
echo
echo "      ----------------------------------"
echo "      EXTRACT P.E.Op.S. Soft GPU (Linux)"
echo "      ----------------------------------"
echo
		gzip -dc /tmp/ePSXe/gpu-plugins/3/gpupeopssoftx118.tar.gz | tar -xf - -C /tmp/ePSXe/gpu-plugins/3
echo
echo "      -----------------------------------"
echo "      REDIRECT P.E.Op.S. Soft GPU (Linux)"
echo "      -----------------------------------"
echo
		cp -i /tmp/ePSXe/gpu-plugins/3/libgpuPeopsSoftX.so.1.0.18 ~/.epsxe/plugins
		cp -i /tmp/ePSXe/gpu-plugins/3/gpuPeopsSoftX.cfg ~/.epsxe/configs
		cp -i /tmp/ePSXe/gpu-plugins/3/peops_soft_readme_1_18.txt ~/.epsxe/plugins
		cp -i /tmp/ePSXe/gpu-plugins/3/peops_soft_version_1_18.txt ~/.epsxe/plugins
echo
echo "  ***********"
echo "  GPU Configs"
echo "  ***********"
echo
echo "    <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "    INFO: If the Linux PSX emulator of your choice is offering a gpu-configuration menu item or button,"
echo "          and you activate it, the emu is  starting a small configuration utility for the selected GPU plugin."
echo "          In the archive below you can find the configuration tools for the MesaGL plugin, the XGL2 plugin and the Soft GPU plugin."
echo "          Simply copy the configuration tools in the cfg sub-folder of the PSX emu (same folder where you have placed the .cfg configuration files)."
echo "    >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "    ========================="
echo "    DOWNLOAD GPU Configs"
echo "    ========================="
echo
		wget http://www.pbernert.com/petegpucfg_V2-9_V1-77_V1-18.tar.gz -P /tmp/ePSXe/configs/1
echo
echo "    ========================="
echo "    EXTRACT GPU Configs"
echo "    ========================="
echo
		gzip -dc /tmp/ePSXe/configs/1/petegpucfg_V2-9_V1-77_V1-18.tar.gz | tar -xf - -C /tmp/ePSXe/configs/1
echo
echo "    ========================="
echo "    REDIRECT GPU Configs"
echo "    ========================="
echo
		cp -i /tmp/ePSXe/configs/1/cfg/cfgPeopsSoft ~/.epsxe/configs
		cp -i /tmp/ePSXe/configs/1/cfg/cfgPeteMesaGL ~/.epsxe/configs
		cp -i /tmp/ePSXe/configs/1/cfg/cfgPeteXGL2 ~/.epsxe/configs
echo
echo "  ***********"
echo "  SPU Plugins"
echo "  ***********"
echo
echo "    ================================"
echo "    P.E.Op.S. Linux OSS/ALSA PSX SPU"
echo "    ================================"
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: The Linux PSX spu emulation plugin, using the OSS interface"
echo "            (the ALSA port created by linuzappz can be compiled with the full sources)."
echo "            You can get the Linux binaries here, for the full sources check out the sourceforge page."
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      -----------------------------------------"
echo "      DOWNLOAD P.E.Op.S. Linux OSS/ALSA PSX SPU"
echo "      -----------------------------------------"
echo
		wget http://www.pbernert.com/spupeopsoss109.tar.gz -P /tmp/ePSXe/spu-plugins/1
echo
echo "      ----------------------------------------"
echo "      EXTRACT P.E.Op.S. Linux OSS/ALSA PSX SPU"
echo "      ----------------------------------------"
echo
		gzip -dc /tmp/ePSXe/spu-plugins/1/spupeopsoss109.tar.gz | tar -xf - -C /tmp/ePSXe/spu-plugins/1
echo
echo "      -----------------------------------------"
echo "      REDIRECT P.E.Op.S. Linux OSS/ALSA PSX SPU"
echo "      -----------------------------------------"
echo
		cp -i /tmp/ePSXe/spu-plugins/1/cfgPeopsOSS ~/.epsxe/plugins
		cp -i /tmp/ePSXe/spu-plugins/1/libspuPeopsOSS.so.1.0.9 ~/.epsxe/plugins
		cp -i /tmp/ePSXe/spu-plugins/1/readme_1_9.txt ~/.epsxe/plugins/spupeopsoss109_readme_1_9.txt
		cp -i /tmp/ePSXe/spu-plugins/1/spuPeopsOSS.cfg ~/.epsxe/configs
		cp -i /tmp/ePSXe/spu-plugins/1/version_1_9.txt ~/.epsxe/plugins/spupeopsoss109_version_1_9.txt
echo
echo "    ========================="
echo "    Pete's Linux NULL PSX SPU"
echo "    ========================="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: A dummy Linux PSX spu emulation plugin, if you are having troubles using the OSS plugin."
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      ----------------------------------"
echo "      DOWNLOAD Pete's Linux NULL PSX SPU"
echo "      ----------------------------------"
echo
		wget http://www.pbernert.com/spupetenull101.tar.gz -P /tmp/ePSXe/spu-plugins/2
echo
echo "      ---------------------------------"
echo "      EXTRACT Pete's Linux NULL PSX SPU"
echo "      ---------------------------------"
echo
		gzip -dc /tmp/ePSXe/spu-plugins/2/spupetenull101.tar.gz | tar -xf - -C /tmp/ePSXe/spu-plugins/2
echo
echo "      ----------------------------------"
echo "      REDIRECT Pete's Linux NULL PSX SPU"
echo "      ----------------------------------"
echo
		cp -i /tmp/ePSXe/spu-plugins/2/libspuPeteNull.so.1.0.1 ~/.epsxe/plugins
		cp -i /tmp/ePSXe/spu-plugins/2/readme.txt ~/.epsxe/plugins/libspuPeteNull.so.1.0.1_readme.txt
echo
echo "  *******"
echo "  Shaders"
echo "  *******"
echo
echo "    <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "    INFO: It's possible in the OGL2/XGL2 plugins to use custom pixel shader programs to add certain functionality or display enhancements!"
echo "          It will depend on your gfx hardware/driver, if a specific shader can be used, though..."
echo "          some will need for example GLslang support or more than four texture coord units."
echo "    >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "    =========================="
echo "    Pete's Broken glass shader"
echo "    =========================="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: GLslang program to show how textures can be used in custom GLslang shaders"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      -----------------------------------"
echo "      DOWNLOAD Pete's Broken glass shader"
echo "      -----------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_brokenglass.zip -P /tmp/ePSXe/shaders/01
echo
echo "      ----------------------------------"
echo "      EXTRACT Pete's Broken glass shader"
echo "      ----------------------------------"
echo
		unzip /tmp/ePSXe/shaders/01/pete_ogl2_shader_brokenglass.zip -d /tmp/ePSXe/shaders/01
echo
echo "      -----------------------------------"
echo "      REDIRECT Pete's Broken glass shader"
echo "      -----------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/01/gpuPeteOGL2.slf ~/.epsxe/shaders/broken_glass
		cp -i /tmp/ePSXe/shaders/01/gpuPeteOGL2.slv ~/.epsxe/shaders/broken_glass
		cp -i /tmp/ePSXe/shaders/01/gpuPeteOGL2_t1l.tga ~/.epsxe/shaders/broken_glass
		cp -i /tmp/ePSXe/shaders/01/gpuPeteOGL2_t2l.tga ~/.epsxe/shaders/broken_glass
		cp -i /tmp/ePSXe/shaders/01/sl_brokenglass.txt ~/.epsxe/shaders/broken_glass
echo
echo "    -------------------------------"
echo "    Pete's Multitexture demo shader"
echo "    -------------------------------"
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: vertex/fragment program to show how textures can be used in custom shaders"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      ----------------------------------------"
echo "      DOWNLOAD Pete's Multitexture demo shader"
echo "      ----------------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_multitexdemo.zip -P /tmp/ePSXe/shaders/02
echo
echo "      ---------------------------------------"
echo "      EXTRACT Pete's Multitexture demo shader"
echo "      ---------------------------------------"
echo
		unzip /tmp/ePSXe/shaders/02/pete_ogl2_shader_multitexdemo.zip -d /tmp/ePSXe/shaders/02
echo
echo "      ----------------------------------------"
echo "      REDIRECT Pete's Multitexture demo shader"
echo "      ----------------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/02/gpuPeteOGL2.fp ~/.epsxe/shaders/multitexdemo
		cp -i /tmp/ePSXe/shaders/02/gpuPeteOGL2.vp ~/.epsxe/shaders/multitexdemo
		cp -i /tmp/ePSXe/shaders/02/gpuPeteOGL2_t1n.tga ~/.epsxe/shaders/multitexdemo
		cp -i /tmp/ePSXe/shaders/02/pr_multitexdemo.txt ~/.epsxe/shaders/multitexdemo
echo
echo "    =================="
echo "    Pete's Gray shader"
echo "    =================="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: vertex/fragment program to create a 'Black&White' alike display"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      ---------------------------"
echo "      DOWNLOAD Pete's Gray shader"
echo "      ---------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_gray.zip -P /tmp/ePSXe/shaders/03
echo
echo "      --------------------------"
echo "      EXTRACT Pete's Gray shader"
echo "      --------------------------"
echo
		unzip /tmp/ePSXe/shaders/03/pete_ogl2_shader_gray.zip -d /tmp/ePSXe/shaders/03
echo
echo "      ---------------------------"
echo "      REDIRECT Pete's Gray shader"
echo "      ---------------------------"
echo
		cp -i /tmp/ePSXe/shaders/03/gpuPeteOGL2.fp ~/.epsxe/shaders/gray
		cp -i /tmp/ePSXe/shaders/03/gpuPeteOGL2.vp ~/.epsxe/shaders/gray
		cp -i /tmp/ePSXe/shaders/03/pr_gray.txt ~/.epsxe/shaders/gray
echo
echo "    ========================="
echo "    Pete's Simple Blur shader"
echo "    ========================="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: vertex/fragment program to do a fullscreen blurring"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      ----------------------------------"
echo "      DOWNLOAD Pete's Simple Blur shader"
echo "      ----------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_simpleblur.zip -P /tmp/ePSXe/shaders/04
echo
echo "      ---------------------------------"
echo "      EXTRACT Pete's Simple Blur shader"
echo "      ---------------------------------"
echo
		unzip /tmp/ePSXe/shaders/04/pete_ogl2_shader_simpleblur.zip -d /tmp/ePSXe/shaders/04
echo
echo "      ----------------------------------"
echo "      REDIRECT Pete's Simple Blur shader"
echo "      ----------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/04/gpuPeteOGL2.fp ~/.epsxe/shaders/simpleblur
		cp -i /tmp/ePSXe/shaders/04/gpuPeteOGL2.vp ~/.epsxe/shaders/simpleblur
		cp -i /tmp/ePSXe/shaders/04/pr_simpleblur.txt ~/.epsxe/shaders/simpleblur
echo
echo "    ========================"
echo "    Pete's Brightness shader"
echo "    ========================"
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: GLslang program to get a brighter display"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      ---------------------------------"
echo "      DOWNLOAD Pete's Brightness shader"
echo "      ---------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_brightness.zip -P /tmp/ePSXe/shaders/05
echo
echo "      --------------------------------"
echo "      EXTRACT Pete's Brightness shader"
echo "      --------------------------------"
echo
		unzip /tmp/ePSXe/shaders/05/pete_ogl2_shader_brightness.zip -d /tmp/ePSXe/shaders/05
echo
echo "      ---------------------------------"
echo "      REDIRECT Pete's Brightness shader"
echo "      ---------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/05/gpuPeteOGL2.slf ~/.epsxe/shaders/brightness
		cp -i /tmp/ePSXe/shaders/05/gpuPeteOGL2.slv ~/.epsxe/shaders/brightness
		cp -i /tmp/ePSXe/shaders/05/sl_brightness.txt ~/.epsxe/shaders/brightness
echo
echo "    ======================"
echo "    Pete's Rotation shader"
echo "    ======================"
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: GLslang program to rotate the screen in 90° steps"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      -------------------------------"
echo "      DOWNLOAD Pete's Rotation shader"
echo "      -------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_rotate.zip -P /tmp/ePSXe/shaders/06
echo
echo "      ------------------------------"
echo "      EXTRACT Pete's Rotation shader"
echo "      ------------------------------"
echo
		unzip /tmp/ePSXe/shaders/06/pete_ogl2_shader_rotate.zip -d /tmp/ePSXe/shaders/06
echo
echo "      -------------------------------"
echo "      REDIRECT Pete's Rotation shader"
echo "      -------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/06/gpuPeteOGL2.slf ~/.epsxe/shaders/rotate
		cp -i /tmp/ePSXe/shaders/06/gpuPeteOGL2.slv ~/.epsxe/shaders/rotate
		cp -i /tmp/ePSXe/shaders/06/sl_rotate.txt ~/.epsxe/shaders/rotate
echo
echo "    ====================="
echo "    Pete's Scale2x shader"
echo "    ====================="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: GLslang program to apply the Scale2x algorithm for enhancing the display"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      ------------------------------"
echo "      DOWNLOAD Pete's Scale2x shader"
echo "      ------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_scale2x.zip -P /tmp/ePSXe/shaders/07
echo
echo "      -----------------------------"
echo "      EXTRACT Pete's Scale2x shader"
echo "      -----------------------------"
echo
		unzip /tmp/ePSXe/shaders/07/pete_ogl2_shader_scale2x.zip -d /tmp/ePSXe/shaders/07
echo
echo "      ------------------------------"
echo "      REDIRECT Pete's Scale2x shader"
echo "      ------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/07/gpuPeteOGL2.slf ~/.epsxe/shaders/scale2x
		cp -i /tmp/ePSXe/shaders/07/gpuPeteOGL2.slv ~/.epsxe/shaders/scale2x
		cp -i /tmp/ePSXe/shaders/07/sl_scale2x.txt ~/.epsxe/shaders/scale2x
echo
echo "    ==================================="
echo "    Renee Cousins' Pseudo Median shader"
echo "    ==================================="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: vertex/fragment program from Renee Cousins to improve the display of the OGL2/XGL2 plugins"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      --------------------------------------------"
echo "      DOWNLOAD Renee Cousins' Pseudo Median shader"
echo "      --------------------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_median.zip -P /tmp/ePSXe/shaders/08
echo
echo "      -------------------------------------------"
echo "      EXTRACT Renee Cousins' Pseudo Median shader"
echo "      -------------------------------------------"
echo
		unzip /tmp/ePSXe/shaders/08/pete_ogl2_shader_median.zip -d /tmp/ePSXe/shaders/08
echo
echo "      --------------------------------------------"
echo "      REDIRECT Renee Cousins' Pseudo Median shader"
echo "      --------------------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/08/gpuPeteOGL2.fp ~/.epsxe/shaders/median
		cp -i /tmp/ePSXe/shaders/08/gpuPeteOGL2.vp ~/.epsxe/shaders/median
		cp -i /tmp/ePSXe/shaders/08/pr_median.txt ~/.epsxe/shaders/median
echo
echo "    ==============================================="
echo "    Renee Cousins' Pseudo Median + Luminance shader"
echo "    ==============================================="
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: vertex/fragment program from Renee Cousins to make the display of the OGL2/XGL2 plugins more vibrant"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      --------------------------------------------------------"
echo "      DOWNLOAD Renee Cousins' Pseudo Median + Luminance shader"
echo "      --------------------------------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_median_glow.zip -P /tmp/ePSXe/shaders/09
echo
echo "      -------------------------------------------------------"
echo "      EXTRACT Renee Cousins' Pseudo Median + Luminance shader"
echo "      -------------------------------------------------------"
echo
		unzip /tmp/ePSXe/shaders/09/pete_ogl2_shader_median_glow.zip -d /tmp/ePSXe/shaders/09
echo
echo "      --------------------------------------------------------"
echo "      REDIRECT Renee Cousins' Pseudo Median + Luminance shader"
echo "      --------------------------------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/09/gpuPeteOGL2.fp ~/.epsxe/shaders/median_glow
		cp -i /tmp/ePSXe/shaders/09/gpuPeteOGL2.vp ~/.epsxe/shaders/median_glow
		cp -i /tmp/ePSXe/shaders/09/pr_median_glow.txt ~/.epsxe/shaders/median_glow
echo
echo "    ======================"
echo "    Luigi's Blur AA shader"
echo "    ======================"
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: vertex/fragment program from Luigi for a fullscreen smoothing effect"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      -------------------------------"
echo "      DOWNLOAD Luigi's Blur AA shader"
echo "      -------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_shader_luigi_aa.zip -P /tmp/ePSXe/shaders/10
echo
echo "      ------------------------------"
echo "      EXTRACT Luigi's Blur AA shader"
echo "      ------------------------------"
echo
		unzip /tmp/ePSXe/shaders/10/pete_ogl2_shader_luigi_aa.zip -d /tmp/ePSXe/shaders/10
echo
echo "      -------------------------------"
echo "      REDIRECT Luigi's Blur AA shader"
echo "      -------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/10/gpuPeteOGL2.fp ~/.epsxe/shaders/luigi_aa
		cp -i /tmp/ePSXe/shaders/10/gpuPeteOGL2.vp ~/.epsxe/shaders/luigi_aa
		cp -i /tmp/ePSXe/shaders/10/pr_luigi_aa.txt ~/.epsxe/shaders/luigi_aa
echo
echo "    ============================"
echo "    guest(r)'s shader collection"
echo "    ============================"
echo
echo "      <<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "      INFO: a very nice shader collection, including cartoon shaders and high-quality filters"
echo "      >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo
echo "      -------------------------------------"
echo "      DOWNLOAD guest(r)'s shader collection"
echo "      -------------------------------------"
echo
		wget http://www.pbernert.com/pete_ogl2_guest_shaders_v1.zip -P /tmp/ePSXe/shaders/11
echo
echo "      ------------------------------------"
echo "      EXTRACT guest(r)'s shader collection"
echo "      ------------------------------------"
echo
		unzip /tmp/ePSXe/shaders/11/pete_ogl2_guest_shaders_v1.zip -d /tmp/ePSXe/shaders/11
echo
echo "      -------------------------------------"
echo "      REDIRECT guest(r)'s shader collection"
echo "      -------------------------------------"
echo
		cp -i /tmp/ePSXe/shaders/11/license.txt ~/.epsxe/shaders/guest-shaders
		cp -i /tmp/ePSXe/shaders/11/ShaderNotes.txt ~/.epsxe/shaders/guest-shaders
		cp -i '/tmp/ePSXe/shaders/11/2xGLSLHqFilter shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/2xGLSLHqFilter
		cp -i '/tmp/ePSXe/shaders/11/2xGLSLHqFilter shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/2xGLSLHqFilter
		cp -i '/tmp/ePSXe/shaders/11/2xGLSL shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/2xGLSL
		cp -i '/tmp/ePSXe/shaders/11/2xGLSL shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/2xGLSL
		cp -i '/tmp/ePSXe/shaders/11/4xGLSLHqFilter shader/Original/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/4xGLSLHqFilter/Original
		cp -i '/tmp/ePSXe/shaders/11/4xGLSLHqFilter shader/Original/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/4xGLSLHqFilter/Original
		cp -i '/tmp/ePSXe/shaders/11/4xGLSLHqFilter shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/4xGLSLHqFilter
		cp -i '/tmp/ePSXe/shaders/11/4xGLSLHqFilter shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/4xGLSLHqFilter
		cp -i '/tmp/ePSXe/shaders/11/4xGLSLScale shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/4xGLSLScale
		cp -i '/tmp/ePSXe/shaders/11/4xGLSLScale shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/4xGLSLScale
		cp -i '/tmp/ePSXe/shaders/11/4xGLSL shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/4xGLSL
		cp -i '/tmp/ePSXe/shaders/11/4xGLSL shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/4xGLSL
		cp -i '/tmp/ePSXe/shaders/11/AA-Color Shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/AA-Color
		cp -i '/tmp/ePSXe/shaders/11/AA-Color Shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/AA-Color
		cp -i '/tmp/ePSXe/shaders/11/Advanced Cartoon Shaders/AdvCartoon Shader I/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Advanced_Cartoon/1
		cp -i '/tmp/ePSXe/shaders/11/Advanced Cartoon Shaders/AdvCartoon Shader I/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Advanced_Cartoon/1
		cp -i '/tmp/ePSXe/shaders/11/Advanced Cartoon Shaders/AdvCartoon Shader II/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Advanced_Cartoon/2
		cp -i '/tmp/ePSXe/shaders/11/Advanced Cartoon Shaders/AdvCartoon Shader II/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Advanced_Cartoon/2
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class B/Cartoon shader I/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB/1
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class B/Cartoon shader I/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB/1
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class B/Cartoon shader II/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB/2
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class B/Cartoon shader II/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB/2
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class B/Cartoon shader III/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB/3
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class B/Cartoon shader III/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassB/3
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class C/Cartoon shader I/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC/1
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class C/Cartoon shader I/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC/1
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class C/Cartoon shader II/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC/2
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class C/Cartoon shader II/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC/2
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class C/Cartoon shader III/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC/3
		cp -i '/tmp/ePSXe/shaders/11/Cartoon Shaders Class C/Cartoon shader III/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Cartoon_ClassC/3
		cp -i '/tmp/ePSXe/shaders/11/Color shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Color
		cp -i '/tmp/ePSXe/shaders/11/Color shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Color
		cp -i '/tmp/ePSXe/shaders/11/OGL2Lookup Shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/OGL2Lookup
		cp -i '/tmp/ePSXe/shaders/11/OGL2Lookup Shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/OGL2Lookup
		cp -i '/tmp/ePSXe/shaders/11/SaL GLSL shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Sal_GLSL
		cp -i '/tmp/ePSXe/shaders/11/SaL GLSL shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Sal_GLSL
		cp -i '/tmp/ePSXe/shaders/11/Storybook Shaders/gpuPeteOGL2_t1l.tga' ~/.epsxe/shaders/guest-shaders/Storybook
		cp -i '/tmp/ePSXe/shaders/11/Storybook Shaders/StoryBookShaderNotes.txt' ~/.epsxe/shaders/guest-shaders/Storybook
		cp -i '/tmp/ePSXe/shaders/11/Storybook Shaders/ColoredStorybook shader/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Storybook/Colored
		cp -i '/tmp/ePSXe/shaders/11/Storybook Shaders/ColoredStorybook shader/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Storybook/Colored
		cp -i '/tmp/ePSXe/shaders/11/Storybook Shaders/StoryBook Shader I/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Storybook/1
		cp -i '/tmp/ePSXe/shaders/11/Storybook Shaders/StoryBook Shader I/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Storybook/1
		cp -i '/tmp/ePSXe/shaders/11/Storybook Shaders/StoryBook Shader II/gpuPeteOGL2.slf' ~/.epsxe/shaders/guest-shaders/Storybook/2
		cp -i '/tmp/ePSXe/shaders/11/Storybook Shaders/StoryBook Shader II/gpuPeteOGL2.slv' ~/.epsxe/shaders/guest-shaders/Storybook/2
echo
echo "  ****"
echo "  BIOS"
echo "  ****"
echo
echo "    ============="
echo "    Download BIOS"
echo "    ============="
echo
		wget http://www.emuparadise.me/biosfiles/PSX.zip -P /tmp/ePSXe/bios
echo
echo "    ============"
echo "    Extract BIOS"
echo "    ============"
echo
		unzip /tmp/ePSXe/bios/PSX.zip -d /tmp/ePSXe/bios
echo
echo "    ==================="
echo "    Redirect BIOS files"
echo "    ==================="
echo
		cp -i '/tmp/ePSXe/bios/PSX/PSX - BIOS41A.BIN' ~/.epsxe/bios/bios41a.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH101.BIN' ~/.epsxe/bios/scph101.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH5000.BIN' ~/.epsxe/bios/scph5000.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH1000.BIN' ~/.epsxe/bios/scph1000.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH1001.BIN' ~/.epsxe/bios/scph1001.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH1002.bin' ~/.epsxe/bios/scph1002.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH3000.bin' ~/.epsxe/bios/scph3000.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH3500.bin' ~/.epsxe/bios/scph3500.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH5500.BIN' ~/.epsxe/bios/scph5500.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH7003.BIN' ~/.epsxe/bios/scph5501.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH5502.BIN' ~/.epsxe/bios/scph5502.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH5552.bin' ~/.epsxe/bios/scph5503.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH7000.BIN' ~/.epsxe/bios/scph7000.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH7001.BIN' ~/.epsxe/bios/scph7001.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH7003.BIN' ~/.epsxe/bios/scph7003.bin
		cp -i '/tmp/ePSXe/bios/PSX/PSX - SCPH7502.BIN' ~/.epsxe/bios/scph7502.bin
echo
echo "  =============================="
echo "  Removing Temporary Directories"
echo "  =============================="
echo
		rm -rf /tmp/ePSXe
echo
echo "  ***************"
echo "  ePSXe Installed"
echo "  ***************"
echo
		cd ~
echo

