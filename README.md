<h1 align="center">ePSXe64Ubuntu</h1>

<p align="center">Version 10 | <a href="https://github.com/brandleesee/ePSXe64Ubuntu/blob/master/CHANGELOG.md">Changelog</a></p>

<img align="center" src="https://i.imgur.com/2DlxMw4.png" />

<h2 align="center">overview</h2>

<p align="center">an interactive script that installs ePSXe 2.0.5 Linux x64 on Ubuntu x64 and its derivatives</p>

<h2 align="center">features</h2>

- [x] uses built-in BIOS HLE
- [x] uses built-in Core GPU & SPU plugins
- [x] installs specific ePSXe dependency:  `  libsdl-ttf2.0-0  `
- [x] installs required dependency:  `  libcurl3  ` - prior 18.04, only required for Xubuntu / xfce.
- [x] installs decompression tool:  `  ecm  `
- [x] installs Dash / Dock / Panel application icon
- [x] creates `  .desktop  ` by default for launcher integration
- [x] lock-to-launcher instructions
- [x] interactive Shaders back-iup function
- [x] quiet script, removes clutter from screen
- [x] script works after do-release-upgrade to Ubuntu 18.04 by re-installing as per instructions
- [x] script works on clean install of Ubuntu 18.04, ref: [libcurl4](http://ngemu.com/threads/ubuntu-bionic-libcurl-so-4-curl_openssl_3-not-found.204577/)
- [ ] to fix auto-back-up
- [ ] to fix cloning from git, ref: [#2](https://github.com/brandleesee/ePSXe64Ubuntu/pull/2)
- [ ] to update README.md with cloning instructions
- [ ] to add automatic log function saving output in separate text file
- [ ] to test & add more shaders

<h2 align="center">dependency</h2>

<img align="center" src="https://i.imgur.com/l1l3p6w.png" />

<p align="center">this new version installs libcurl3 by default</p>

<h2 align="center">typical installation</h2>

<img align="center" src="https://i.imgur.com/jJyFe8b.gif" />

<h2 align="center">installation procedure</h2>

<p align="center">in terminal</p>

```bash
wget -O ePSXe64Ubuntu.sh https://raw.githubusercontent.com/brandleesee/ePSXe64Ubuntu/master/ePSXe64Ubuntu.sh

bash ePSXe64Ubuntu.sh
```

<img align="center" src="https://i.imgur.com/CD9XlIQ.png" />

<p align="center">enter <strong>SUDO</strong> password</p>

<p align="center"><strong>RIGHT CLICK</strong> on ePSXe icon in Dash / Dock / Panel to Add to Favorities / Lock</p>

<img align="center" src="https://i.imgur.com/jj6KBLu.png" />

<p align="center"><strong>CLOSE</strong> ePSXe window to continue with script.</p>

<img align="center" src="https://i.imgur.com/MZMI4rv.png" />

<p align="center"><strong>download</strong>, <strong>restore</strong> or <strong>ignore</strong> bundled shaders

<p align="center">type number and press <strong>ENTER</strong></p>

<img align="center" src="https://i.imgur.com/tmswgZJ.png" />

<h2 align="center">decompressing using ecm</h2>

```bash
cd 'INSERT LOCATION of COMPRESSED FILE'

ecm-uncompress 'long name of game.bin.ecm'
```

<h2 align="center">normal .cue sheets</h2>

```
FILE "_____ ___ _______.bin" BINARY
  TRACK 01 MODE2/2352
    INDEX 01 00:00:00
```

* `  .bin  ` and `  .cue  ` must be in the same folder.
* `  .cue  ` must be named exactly as `  .bin  ` (only difference being the file's extension).
* The first line within the `  .cue  ` sheet must contain the **exact** name of the `  .bin  ` file inside double quotes including the `  .bin  ` extension.
* Some games require elaborate `  .cue  ` sheets. A Google search should see you sorted.

<h2 align="center">removing ePSXe</h2>

```bash
sudo rm /usr/share/applications/ePSXe.desktop
```

<p align="center"><strong>SUDO</strong> password required</p>

<p align="center"><strong>DELETE</strong>:</p>

    <ul>
     <li>ePSXe</li>
     <li>ePSXe64Ubuntu.sh</li>
     <li>ePSXe_backups</li>
     <li>.epsxe</li>
    </ul>
    
<img  align="center" src="https://i.imgur.com/FiBbK8w.png" />

<p align="center" ><strong>restart</strong> pc</p>
    
