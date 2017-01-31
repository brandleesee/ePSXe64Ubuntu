<blockquote class="twitter-tweet" data-lang="en-gb"><p lang="en" dir="ltr"><a href="https://twitter.com/hashtag/ePSXe64Ubuntu?src=hash">#ePSXe64Ubuntu</a> update 9 about to be released<br>The script that fully installs <a href="https://twitter.com/hashtag/ePSXe?src=hash">#ePSXe</a> <a href="https://twitter.com/hashtag/Linux?src=hash">#Linux</a> x64 on <a href="https://twitter.com/hashtag/Ubuntu?src=hash">#Ubuntu</a> and its derivatives. <a href="https://t.co/aO1CiJfCuu">pic.twitter.com/aO1CiJfCuu</a></p>&mdash; Brandon Camilleri (@brandleesee) <a href="https://twitter.com/brandleesee/status/826391959891767296">31 January 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

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
