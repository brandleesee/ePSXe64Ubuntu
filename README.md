## ePSXe64Ubuntu - v8.1 - now includes ecm tools

![](http://i.imgur.com/kfMSU17.png)

### Overview

An interactive script that installs ePSXe 2.0.5 Linux x64 on Ubuntu x64 and its derivatives.

### Features

- [x] Uses built-in BIOS HLE.
- [x] Uses built-in Core GPU & SPU plugins.
- [x] Installs specific ePSXe dependency:  `  libsdl-ttf2.0-0  `.
- [x] Installs decompression tool:  `  ecm  `.
- [x] Removes duplicate downloads.
- [x] Installs Dash / Dock application icon.
- [x] Creates ` .desktop ` by default.
- [x] Locks to Launcher.
- [x] Back Up function.
- [ ] Differentiate between backed-up and new versions of ` epsxerc `.
- [ ] Add more shaders (continuously added after rigorous testing).

### Typical Installation

![](http://i.imgur.com/W1zggGH.gif)

### Installation Procedure

```
wget -O ePSXe64Ubuntu.sh https://raw.githubusercontent.com/brandleesee/ePSXe64Ubuntu/master/ePSXe64Ubuntu.sh

bash ePSXe64Ubuntu.sh
```

* Enter SUDO password.

* **CLOSE** ePSXe window to continue with script. 

### Decompressing using ecm

```
cd [INSERT LOCATION of DOWNLOAD]

ecm-uncompress 'long name of game.bin.ecm'
```

### Normal .cue sheets

```
FILE "_____ ___ _______.bin" BINARY
  TRACK 01 MODE2/2352
    INDEX 01 00:00:00
```

* `  .bin  ` and `  .cue  ` must be in the same folder.
* `  .cue  ` must be named exactly as `  .bin  ` (only difference being the file's extension).
* The first line within the `  .cue  ` sheet must contain the **exact** name of the `  .bin  ` file inside double quotes including the `  .bin  ` extension.
* Some games require elaborate `  .cue  ` sheets. A Google search should see you sorted.

## ePSXe64Ubuntu

### v7.3

![](http://i.imgur.com/2Bw3iLS.png)

![](http://i.imgur.com/fRardY8.gif)

### v6

![](http://i.imgur.com/2mT7smo.png)

![](http://i.imgur.com/ZBFCUva.png)

![](http://i.imgur.com/57kdpJR.png)

### v4

![](http://i.imgur.com/Ja5u4Dg.png)

![](http://i.imgur.com/p8vMQDt.png)

![](http://i.imgur.com/w4Ua94W.png)

![](http://i.imgur.com/MDQabuy.png)
