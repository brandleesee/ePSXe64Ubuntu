# ePSXe64Ubuntu - 4th Release

![](http://i.imgur.com/2Bw3iLS.png)

## Overview

Interactive script to install ePSXe and shaders on Ubuntu using built-in core GPU & SPU plugins for gameplay.

## Installation

* Download script.

```
wget https://raw.githubusercontent.com/brandleesee/ePSXe64Ubuntu/master/e4u.sh

bash e64u.sh
```

* Download required dependency.
 - ` libsdl-ttf2.0-0 ` will be installed.
 - Enter SUDO password.

* GUI
 - ePSXe GUI will open. 
 - **CLOSE** the ePSXe window to continue with the script. 

![](http://i.imgur.com/2mT7smo.png)

* Creation of Executable & Directories
 - Executable ` epsxe ` will be created in Home  ` ~ ` directory.
 - Hidden folder ` ~/.epsxe ` will be created in Home  ` ~ ` directory.

* Removal of downloaded compressed files & extra directories.

## Shortcomings from ePSXe & Plugins Developers

* When using Pete's [GPU](http://www.pbernert.com/html/gpu.htm) & [SPU](http://www.pbernert.com/html/spu.htm) plugins and selecting ` Config --> Plugins --> Video/Audio/etc ` ePSXe closes ([video](https://www.youtube.com/watch?v=Ru49bfyXijw)).
 - Reason:  Plugins are only compiled for x32 architecture.
 - Terminal output:
   `  /home/blc/.epsxe/plugins//libgpuPeopsMesaGL.so.1.0.78: wrong ELF class: ELFCLASS32   `
 - [More info](http://ngemu.com/threads/v2-0-5-linux-x64.188425/).
 
![](http://i.imgur.com/fRardY8.gif)
 
* ` Config --> Wizard Guide ` is not present.
 
## TODO List

- [ ] Lock to Launcher.

## Submitting Issues

**Quote sub-heading(s)** from script ` e64u.sh `.

## Tested on 

```
  Ubuntu Unity 16.04 x64 multiarch
  Ubuntu Gnome 16.04 x64 multiarch
  Ubuntu Unity 16.10 x64 multiarch
  Ubuntu Gnome 16.10 x64 multiarch
  Ubuntu Gnome devel x64 multiarch
```

## ePSXe Version

```
  2.0.5 Linux x64
```

## Current Video Settings - using shaders

![](http://i.imgur.com/ZBFCUva.png)

## Current Audio Settings

![](http://i.imgur.com/57kdpJR.png)

## Gallery

![](http://i.imgur.com/Ja5u4Dg.png)

![](http://i.imgur.com/p8vMQDt.png)

![](http://i.imgur.com/w4Ua94W.png)

![](http://i.imgur.com/MDQabuy.png)
