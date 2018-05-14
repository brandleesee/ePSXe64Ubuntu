<h1 align="center">ePSXe64Ubuntu</h1>

<img align="center" src="http://i.imgur.com/U4QNkXL.png" />

<h2 align="center">overview</h2>

<p align="center">an interactive script that installs ePSXe 2.0.5 Linux x64 on Ubuntu x64 and its derivatives</p>

<h2 align="center">features</h2>

- [x] uses built-in BIOS HLE
- [x] uses built-in Core GPU & SPU plugins
- [x] installs specific ePSXe dependency:  `  libsdl-ttf2.0-0  `
- [x] installs required Xubuntu / xfce dependency:  `  libcurl3  `
- [x] installs decompression tool:  `  ecm  `
- [x] installs Dash / Dock / Panel application icon
- [x] creates `  .desktop  ` by default for launcher integration
- [x] lock-to-launcher instructions
- [x] interactive Back Up function
- [x] quiet script, removes clutter from screen
- [ ] to fix cloning from git, ref: [#2](https://github.com/brandleesee/ePSXe64Ubuntu/pull/2)
- [ ] to update README.md with cloning instructions
- [ ] to place changelog in HISTORY.md and link it to README.md.
- [ ] to test if script works after do-release-upgrade to Ubuntu 18.04
- [ ] to test if script works on clean install of Ubuntu 18.04, ref: [libcurl4](http://ngemu.com/threads/ubuntu-bionic-libcurl-so-4-curl_openssl_3-not-found.204577/)
- [ ] to add automatic log function saving output in separate text file
- [ ] to test & add more shaders

<h2 align="center">typical installation</h2>

<img align="center" src="http://i.imgur.com/cSqEyXC.gif" />

<h2 align="center">installation procedure</h2>

<p>In terminal.</p>

```bash
wget -O ePSXe64Ubuntu.sh https://raw.githubusercontent.com/brandleesee/ePSXe64Ubuntu/master/ePSXe64Ubuntu.sh

bash ePSXe64Ubuntu.sh
```

<table>
 <tbody>
  <tr>
   <td align="left" colspan="2"><p>Enter <strong>SUDO</strong> password.</p></td>
  </tr>
  <tr>
   <td align="center" colspan="2"><img src="http://i.imgur.com/H1Vs8JV.png" /></td>
  </tr>
  <tr>
   <td align="left" colspan="2"><p><strong>RIGHT CLICK</strong> on ePSXe blank space or icon in Dash / Dock / Panel to Add to Favorities / Lock.</p></td>
  </tr>
  <tr>
   <td align="center">
    <img src="http://i.imgur.com/A6cIRmT.png" />
    <br />
    <ul align="left">
     <li>on script's first run</li>
     <li>ePSXe.desktop removed, pc rebooted</li>
    </ul>
   </td>
   <td align="center">
    <img src="http://i.imgur.com/PNlgKV1.png" />
    <br />
    <ul align="left">
     <li>on each subsequent install</li>
     <li>ePSXe.desktop removed, pc <strong>not</strong> rebooted</li>
    </ul>
   </td>
  </tr>
  <tr>
   <td align="left" width="50%"><p><strong>CLOSE</strong> ePSXe window to continue with script.</p></td>
   <td align="center" width="50%"><img src="http://i.imgur.com/mCntR7j.png" /></td>
  </tr>
  <tr>
   <td align="left"><p><strong>Download</strong>, <strong>Restore</strong> or <strong>Ignore</strong> bundled shaders.<br />Type number and press <strong>ENTER.</strong></p></td>
   <td align="center"><img src="http://i.imgur.com/rD6V5Ub.png" /></td>
  </tr>
 </tbody>
</table>

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

<table>
 <tbody>
  <tr>
   <td align="left" colspan="2"><p><strong>SUDO</strong> password required</p></td>
  </tr>
  <tr>
   <td align="left" width="50%"><p><strong>DELETE</strong>:</p>
    <ul>
     <li>ePSXe</li>
     <li>ePSXe64Ubuntu.sh</li>
     <li>ePSXe_backups</li>
     <li>.epsxe</li>
    </ul>
   </td>
   <td align="center" width="50%"><img src="http://i.imgur.com/fPycbXf.png" /></td>
  </tr>
  <tr>
   <td align="left" colspan="2"><p><strong>restart</strong> pc</p></td>
  </tr>
 </tbody>
</table>
