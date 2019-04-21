<h1 align="center">ePSXe64Ubuntu</h1>

<p align="center">Version 11.4 | <a href="https://github.com/brandleesee/ePSXe64Ubuntu/blob/master/CHANGELOG.md">Changelog</a> | <a href="https://chrismartinphotography.files.wordpress.com/2013/01/2012-landscapes-c2a9-christopher-martin-93441.jpg">Background</a> | <a href="http://xenlism.github.io/minimalism/">Minimalism GTK3 Theme</a> | <a href="https://github.com/xenlism/Storm">Storm Icon Set</a> | <a href="https://b00merang.weebly.com/windows-10.html">Windows 10 GTK Pack</a></p>

<img src="https://i.imgur.com/2DlxMw4.png" />

<h2 align="center">overview</h2>

<p align="center">an interactive script that installs ePSXe 2.0.5 Linux x64 on Debian, Ubuntu and other x64 derivatives</p>

<h2 align="center">features</h2>

**NOTICE: We are updating script in way of those distributions that are still removing libcurl 3 in favour of libcurl 4. Thus, should your distro of choice still replace libcurl 3, please, notify us at this issue thread: https://github.com/brandleesee/ePSXe64Ubuntu/issues/7. Thank you.**

- [x] uses built-in BIOS HLE
- [x] uses built-in Core GPU & SPU plugins
- [x] installs specific ePSXe dependency: `libsdl-ttf2.0-0`
- [x] installs decompression tool: `ecm`
- [x] installs Dash / Dock / Panel application icon
- [x] creates `.desktop` by default for launcher integration
- [x] lock-to-launcher instructions
- [x] interactive Shaders back-up function
- [x] `libcurl 3` & `libcurl 4` now co-exist for most distros enabling software like Kodi etc to work simultaneously with ePSXe
- [ ] test & add more shaders ([bundle to test](https://www.ngemu.com/threads/links-and-guides-to-custom-shaders-for-petes-opengl2-plugin.76098/page-51#post-2722008))

<h2 align="center">typical installation</h2>

<img src="https://i.imgur.com/jJyFe8b.gif" />

<h2 align="center">installation procedure</h2>

<p align="center">in terminal</p>

```bash
wget -O ePSXe64Ubuntu.sh https://raw.githubusercontent.com/brandleesee/ePSXe64Ubuntu/master/ePSXe64Ubuntu.sh && bash ePSXe64Ubuntu.sh
```

<img src="https://i.imgur.com/CD9XlIQ.png" />

<p align="center">enter <strong>SUDO</strong> password</p>

<p align="center"><strong>RIGHT CLICK</strong> on ePSXe icon in Dash / Dock / Panel to Add to Favorities / Lock</p>

<p align="center"><img src="https://i.imgur.com/8rOUO7A.png" /></p>

<p align="center"><strong>CLOSE</strong> ePSXe window to continue with script.</p>

<img src="https://i.imgur.com/MZMI4rv.png" />

<p align="center"><strong>download</strong>, <strong>restore</strong> or <strong>ignore</strong> bundled shaders

<p align="center">type number and press <strong>ENTER</strong></p>

<p align="center"><img src="https://i.imgur.com/tmswgZJ.png" /></p>

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
If you are running Ubuntu 18.04 or later:
```bash
sudo rm /usr/lib/x86_64-linux-gnu/libcurl.so.3
```

<p align="center"><strong>SUDO</strong> password required</p>

<p align="center"><strong>DELETE</strong>:</p>

<p align="center">ePSXe | ePSXe64Ubuntu.sh | ePSXe_backups | .epsxe | .epsxe.svg</p>

<p align="center" ><strong>restart</strong> pc</p>

<img src="https://i.imgur.com/FiBbK8w.png" />

    
