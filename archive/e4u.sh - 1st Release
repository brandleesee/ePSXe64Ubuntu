#!BIN/BASH

echo "================="
echo "INSTALLING: ePSXe"
echo "================="
mkdir ~/ePSXe
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
wget http://www.epsxe.com/files/ePSXe205linux_x64.zip -P /tmp/ePSXe/installer
unzip /tmp/ePSXe/installer/ePSXe205linux_x64.zip -d ~/ePSXe
sudo apt-get -y install libsdl-ttf2.0-0
echo "  ----------------"
echo "  Activating ePSXe"
echo "  ----------------"
echo "    --------------------------"
echo "    INFO: ePSXe has opened its GUI. CLOSE it to continue. This creates the hidden .epsxe folder in Documents"
echo "    --------------------------"
cd ~/ePSXe
sudo chmod +x epsxe_x64
./epsxe_x64
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
echo "  -----------------------------------------------"
echo "  INFO: Downloading & Extracting PSX GPU plugins."
echo "  -----------------------------------------------"
wget http://www.pbernert.com/gpupetexgl209.tar.gz -P /tmp/ePSXe/gpu-plugins/1
gzip -dc /tmp/ePSXe/gpu-plugins/1/gpupetexgl209.tar.gz | tar -xf - -C /tmp/ePSXe/gpu-plugins/1
cp -i /tmp/ePSXe/gpu-plugins/1/gpuPeteXGL2.cfg ~/.epsxe/configs
cp -i /tmp/ePSXe/gpu-plugins/1/libgpuPeteXGL2.so.2.0.9 ~/.epsxe/plugins
cp -i /tmp/ePSXe/gpu-plugins/1/readme.txt ~/.epsxe/plugins/gpuPeteXGL2_readme.txt
cp -i /tmp/ePSXe/gpu-plugins/1/version.txt ~/.epsxe/plugins/gpuPeteXGL2_version.txt
wget http://www.pbernert.com/gpupeopsmesagl178.tar.gz -P /tmp/ePSXe/gpu-plugins/2
gzip -dc /tmp/ePSXe/gpu-plugins/2/gpupeopsmesagl178.tar.gz | tar -xf - -C /tmp/ePSXe/gpu-plugins/2
cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/cfgPeopsMesaGL ~/.epsxe/plugins
cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/gpuPeopsMesaGL.cfg ~/.epsxe/configs
cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/libgpuPeopsMesaGL.so.1.0.78 ~/.epsxe/plugins
cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/readme.txt ~/.epsxe/plugins/peops_psx_mesagl_gpu_readme.txt
cp -i /tmp/ePSXe/gpu-plugins/2/peops_psx_mesagl_gpu/version.txt ~/.epsxe/plugins/peops_psx_mesagl_gpu_version.txt
wget http://www.pbernert.com/gpupeopssoftx118.tar.gz -P /tmp/ePSXe/gpu-plugins/3
gzip -dc /tmp/ePSXe/gpu-plugins/3/gpupeopssoftx118.tar.gz | tar -xf - -C /tmp/ePSXe/gpu-plugins/3
cp -i /tmp/ePSXe/gpu-plugins/3/libgpuPeopsSoftX.so.1.0.18 ~/.epsxe/plugins
cp -i /tmp/ePSXe/gpu-plugins/3/gpuPeopsSoftX.cfg ~/.epsxe/configs
cp -i /tmp/ePSXe/gpu-plugins/3/peops_soft_readme_1_18.txt ~/.epsxe/plugins
cp -i /tmp/ePSXe/gpu-plugins/3/peops_soft_version_1_18.txt ~/.epsxe/plugins
echo "  -----------------"
echo "  INFO: GPU configs"
echo "  -----------------"
wget http://www.pbernert.com/petegpucfg_V2-9_V1-77_V1-18.tar.gz -P /tmp/ePSXe/configs/1
gzip -dc /tmp/ePSXe/configs/1/petegpucfg_V2-9_V1-77_V1-18.tar.gz | tar -xf - -C /tmp/ePSXe/configs/1
cp -i /tmp/ePSXe/configs/1/cfg/cfgPeopsSoft ~/.epsxe/configs
cp -i /tmp/ePSXe/configs/1/cfg/cfgPeteMesaGL ~/.epsxe/configs
cp -i /tmp/ePSXe/configs/1/cfg/cfgPeteXGL2 ~/.epsxe/configs
echo "  -----------------------------------------------"
echo "  INFO: Downloading & Extracting PSX SPU plugins."
echo "  -----------------------------------------------"
wget http://www.pbernert.com/spupeopsoss109.tar.gz -P /tmp/ePSXe/spu-plugins/1
gzip -dc /tmp/ePSXe/spu-plugins/1/spupeopsoss109.tar.gz | tar -xf - -C /tmp/ePSXe/spu-plugins/1
cp -i /tmp/ePSXe/spu-plugins/1/cfgPeopsOSS ~/.epsxe/plugins
cp -i /tmp/ePSXe/spu-plugins/1/libspuPeopsOSS.so.1.0.9 ~/.epsxe/plugins
cp -i /tmp/ePSXe/spu-plugins/1/readme_1_9.txt ~/.epsxe/plugins/spupeopsoss109_readme_1_9.txt
cp -i /tmp/ePSXe/spu-plugins/1/spuPeopsOSS.cfg ~/.epsxe/configs
cp -i /tmp/ePSXe/spu-plugins/1/version_1_9.txt ~/.epsxe/plugins/spupeopsoss109_version_1_9.txt
wget http://www.pbernert.com/spupetenull101.tar.gz -P /tmp/ePSXe/spu-plugins/2
gzip -dc /tmp/ePSXe/spu-plugins/2/spupetenull101.tar.gz | tar -xf - -C /tmp/ePSXe/spu-plugins/2
cp -i /tmp/ePSXe/spu-plugins/2/libspuPeteNull.so.1.0.1 ~/.epsxe/plugins
cp -i /tmp/ePSXe/spu-plugins/2/readme.txt ~/.epsxe/plugins/libspuPeteNull.so.1.0.1_readme.txt
echo "  -------"
echo "  Shaders"
echo "  -------"
wget http://www.pbernert.com/pete_ogl2_shader_brokenglass.zip -P /tmp/ePSXe/shaders/01
unzip /tmp/ePSXe/shaders/01/pete_ogl2_shader_brokenglass.zip -d /tmp/ePSXe/shaders/01
cp -i /tmp/ePSXe/shaders/01/gpuPeteOGL2.slf ~/.epsxe/shaders/broken_glass
cp -i /tmp/ePSXe/shaders/01/gpuPeteOGL2.slv ~/.epsxe/shaders/broken_glass
cp -i /tmp/ePSXe/shaders/01/gpuPeteOGL2_t1l.tga ~/.epsxe/shaders/broken_glass
cp -i /tmp/ePSXe/shaders/01/gpuPeteOGL2_t2l.tga ~/.epsxe/shaders/broken_glass
cp -i /tmp/ePSXe/shaders/01/sl_brokenglass.txt ~/.epsxe/shaders/broken_glass
wget http://www.pbernert.com/pete_ogl2_shader_multitexdemo.zip -P /tmp/ePSXe/shaders/02
unzip /tmp/ePSXe/shaders/02/pete_ogl2_shader_multitexdemo.zip -d /tmp/ePSXe/shaders/02
cp -i /tmp/ePSXe/shaders/02/gpuPeteOGL2.fp ~/.epsxe/shaders/multitexdemo
cp -i /tmp/ePSXe/shaders/02/gpuPeteOGL2.vp ~/.epsxe/shaders/multitexdemo
cp -i /tmp/ePSXe/shaders/02/gpuPeteOGL2_t1n.tga ~/.epsxe/shaders/multitexdemo
cp -i /tmp/ePSXe/shaders/02/pr_multitexdemo.txt ~/.epsxe/shaders/multitexdemo
wget http://www.pbernert.com/pete_ogl2_shader_gray.zip -P /tmp/ePSXe/shaders/03
unzip /tmp/ePSXe/shaders/03/pete_ogl2_shader_gray.zip -d /tmp/ePSXe/shaders/03
cp -i /tmp/ePSXe/shaders/03/gpuPeteOGL2.fp ~/.epsxe/shaders/gray
cp -i /tmp/ePSXe/shaders/03/gpuPeteOGL2.vp ~/.epsxe/shaders/gray
cp -i /tmp/ePSXe/shaders/03/pr_gray.txt ~/.epsxe/shaders/gray
wget http://www.pbernert.com/pete_ogl2_shader_simpleblur.zip -P /tmp/ePSXe/shaders/04
unzip /tmp/ePSXe/shaders/04/pete_ogl2_shader_simpleblur.zip -d /tmp/ePSXe/shaders/04
cp -i /tmp/ePSXe/shaders/04/gpuPeteOGL2.fp ~/.epsxe/shaders/simpleblur
cp -i /tmp/ePSXe/shaders/04/gpuPeteOGL2.vp ~/.epsxe/shaders/simpleblur
cp -i /tmp/ePSXe/shaders/04/pr_simpleblur.txt ~/.epsxe/shaders/simpleblur
wget http://www.pbernert.com/pete_ogl2_shader_brightness.zip -P /tmp/ePSXe/shaders/05
unzip /tmp/ePSXe/shaders/05/pete_ogl2_shader_brightness.zip -d /tmp/ePSXe/shaders/05
cp -i /tmp/ePSXe/shaders/05/gpuPeteOGL2.slf ~/.epsxe/shaders/brightness
cp -i /tmp/ePSXe/shaders/05/gpuPeteOGL2.slv ~/.epsxe/shaders/brightness
cp -i /tmp/ePSXe/shaders/05/sl_brightness.txt ~/.epsxe/shaders/brightness
wget http://www.pbernert.com/pete_ogl2_shader_rotate.zip -P /tmp/ePSXe/shaders/06
unzip /tmp/ePSXe/shaders/06/pete_ogl2_shader_rotate.zip -d /tmp/ePSXe/shaders/06
cp -i /tmp/ePSXe/shaders/06/gpuPeteOGL2.slf ~/.epsxe/shaders/rotate
cp -i /tmp/ePSXe/shaders/06/gpuPeteOGL2.slv ~/.epsxe/shaders/rotate
cp -i /tmp/ePSXe/shaders/06/sl_rotate.txt ~/.epsxe/shaders/rotate
wget http://www.pbernert.com/pete_ogl2_shader_scale2x.zip -P /tmp/ePSXe/shaders/07
unzip /tmp/ePSXe/shaders/07/pete_ogl2_shader_scale2x.zip -d /tmp/ePSXe/shaders/07
cp -i /tmp/ePSXe/shaders/07/gpuPeteOGL2.slf ~/.epsxe/shaders/scale2x
cp -i /tmp/ePSXe/shaders/07/gpuPeteOGL2.slv ~/.epsxe/shaders/scale2x
cp -i /tmp/ePSXe/shaders/07/sl_scale2x.txt ~/.epsxe/shaders/scale2x
wget http://www.pbernert.com/pete_ogl2_shader_median.zip -P /tmp/ePSXe/shaders/08
unzip /tmp/ePSXe/shaders/08/pete_ogl2_shader_median.zip -d /tmp/ePSXe/shaders/08
cp -i /tmp/ePSXe/shaders/08/gpuPeteOGL2.fp ~/.epsxe/shaders/median
cp -i /tmp/ePSXe/shaders/08/gpuPeteOGL2.vp ~/.epsxe/shaders/median
cp -i /tmp/ePSXe/shaders/08/pr_median.txt ~/.epsxe/shaders/median
wget http://www.pbernert.com/pete_ogl2_shader_median_glow.zip -P /tmp/ePSXe/shaders/09
unzip /tmp/ePSXe/shaders/09/pete_ogl2_shader_median_glow.zip -d /tmp/ePSXe/shaders/09
cp -i /tmp/ePSXe/shaders/09/gpuPeteOGL2.fp ~/.epsxe/shaders/median_glow
cp -i /tmp/ePSXe/shaders/09/gpuPeteOGL2.vp ~/.epsxe/shaders/median_glow
cp -i /tmp/ePSXe/shaders/09/pr_median_glow.txt ~/.epsxe/shaders/median_glow
wget http://www.pbernert.com/pete_ogl2_shader_luigi_aa.zip -P /tmp/ePSXe/shaders/10
unzip /tmp/ePSXe/shaders/10/pete_ogl2_shader_luigi_aa.zip -d /tmp/ePSXe/shaders/10
cp -i /tmp/ePSXe/shaders/10/gpuPeteOGL2.fp ~/.epsxe/shaders/luigi_aa
cp -i /tmp/ePSXe/shaders/10/gpuPeteOGL2.vp ~/.epsxe/shaders/luigi_aa
cp -i /tmp/ePSXe/shaders/10/pr_luigi_aa.txt ~/.epsxe/shaders/luigi_aa
wget http://www.pbernert.com/pete_ogl2_guest_shaders_v1.zip -P /tmp/ePSXe/shaders/11
unzip /tmp/ePSXe/shaders/11/pete_ogl2_guest_shaders_v1.zip -d /tmp/ePSXe/shaders/11
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
echo "  ------"
echo "  BIOSes"
echo "  ------"
wget http://www.emuparadise.me/biosfiles/PSX.zip -P /tmp/ePSXe/bios
unzip /tmp/ePSXe/bios/PSX.zip -d /tmp/ePSXe/bios
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
echo "--------------------------------------"
echo "ePSXe installed"
echo "--------------------------------------"
rm -rf /tmp/ePSXe
cd ~

