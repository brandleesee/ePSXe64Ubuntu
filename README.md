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

<h2 align="center">changelog</h2>

<table>
 <tbody>
  <tr>
   <td align="center" colspan="2"><strong>9th release & updates</strong></td>
  </tr>
  <tr>
   <td align="left" colspan="2">
    <ul>
     <li>9.2</li>
      <ul>
       <li>Changed text colour output.</li>
       <li>Wrote clearer GUI instructions.</li>
       <li>Removed most titles as they were misleading and did not promulgate useful information.</li>
       <li>Commented sections and skipped lines for easier reference.</li>
      </ul>
     <li>9.1</li>
      <ul>
       <li>Corrected 1st line. Missing /.</li>
      </ul>
     <li>9</li>
      <ul>
       <li>Major revision.</li>
       <li>Proper back up functionality.</li>
       <li>Interactive SHADERS menu.</li>
       <li>Prints terminal entries in color.</li>
       <li>Installs required packages silently.</li>
       <li>Moves and copies silently.</li>
       <li>Makes effective use of system <code>/tmp</code>.</li>
       <li>Added disclaimer.</li>
       <li>Credit given.</li>
     </ul>
    </ul>
    <ul>
   </td>
  </tr>
  <tr>
   <td align="center" colspan="2"><strong>8th release & updates</strong></td>
  </tr>
  <tr>
   <td align="center"><img src="http://i.imgur.com/kfMSU17.png" /></td>
   <td align="center"><img src="http://i.imgur.com/W1zggGH.gif" /></td>
  </tr>
  <tr>
   <td align="left" colspan="2">
    <ul>
     <li>8.1</li>
      <ul>
       <li>Proper branding of ePSXe64Ubuntu.</li>
       <li>Added ecm tools.</li>
      </ul>
     <li>8</li>
      <ul>
       <li>Partial backup function.</li>
      </ul>	
    </ul>
   </td>
  </tr>
  <tr>
   <td align="center" colspan="2"><strong>7th release & updates</strong></td>
  </tr>
  <tr>
   <td align="center"><img src="http://i.imgur.com/2Bw3iLS.png" /></td>
   <td align="center"><img src="http://i.imgur.com/fRardY8.gif" /></td>
  </tr>
  <tr>
   <td align="left" colspan="2">
    <ul>
     <li>7.3</li>
      <ul>
       <li>Added <code>libcurl3</code> for Xubuntu's xfce.</li>
      </ul>
     <li>7.2</li>
      <ul>
       <li>Changed <code>apt</code> to <code>apt-get</code> for better support on Linux Mint 13.3.</li>
      </ul>
     <li>7.1</li>
      <ul>
       <li>Removed redundant line.</li>
      </ul>
     <li>7</li>
      <ul>
       <li>Added Icon for Dash / Dock / Panel.</li>
       <li>General Re-write with if/then statements.</li>
      </ul>
    </ul>
   </td>
  </tr>
  <tr>
   <td align="center" colspan="2"><strong>6th release</strong></td>
  </tr>
  <tr>
   <td align="center"><img src="http://i.imgur.com/2mT7smo.png" /></td>
   <td align="center"><img src="http://i.imgur.com/ZBFCUva.png" /></td>
  </tr>
  <tr>
   <td align="center"><img src="http://i.imgur.com/57kdpJR.png" /></td>
   <td align="left">
    <ul>
     <li><strong>Removed questionable source for BIOS.</strong></li>
     <li>Built-in BIOS HLE now used by default.</li>
    </ul>
   </td>
  </tr>
  <tr>
   <td align="center" colspan="2"><strong>5th release & updates</strong></td>
  </tr>
  <tr>
   <td align="left" colspan="2">
    <ul>
     <li>5.1</li>
      <ul>
       <li>Repackaged shaders from ePSXe.com.</li>
       <li>Changes from original:</li>
        <ul>
         <li>duplicate shaders removed</li>
         <li>super-eagle had different content in files there for kept and both added number</li>
        </ul>
      </ul>
     <li>5</li>
      <ul>
       <li>Changes</li>
        <ul>
         <li>Replaced Shaders from Pete's Domain with the pack in ePSXe.com.</li>
         <li>Improved script.</li>
         <li>Removed redundant code.</li>
        </ul>
      </ul>
      <ul>
       <li>When using Pete's GPU & SPU plugins and selecting <code>Config --> Plugins --> Video/Audio/etc</code> ePSXe closes.</li>
        <ul>
         <li>Reason:  Plugins are only compiled for x32 architecture.</li>
         <li>Terminal output</li>
          <ul>
           <li><code>/home/blc/.epsxe/plugins//libgpuPeopsMesaGL.so.1.0.78: wrong ELF class: ELFCLASS32</code></li>
          </ul>
         <li><a href="http://www.pbernert.com/html/gpu.htm" target="_blank">http://www.pbernert.com/html/gpu.htm</a></li>
         <li><a href="http://www.pbernert.com/html/spu.htm" target="_blank">http://www.pbernert.com/html/spu.htm</a></li>
         <li><a href="https://www.youtube.com/watch?v=Ru49bfyXijw" target="_blank">https://www.youtube.com/watch?v=Ru49bfyXijw</a></li>
         <li><a href="http://ngemu.com/threads/v2-0-5-linux-x64.188425/" target="_blank">http://ngemu.com/threads/v2-0-5-linux-x64.188425/</a></li>
        </ul>
      </ul>
    </ul>
   </td>
  </tr>
  <tr>
    <td align="center" colspan="2"><strong>4th release</strong></td>
  </tr>
  <tr>
   <td align="center"><img src="http://i.imgur.com/Ja5u4Dg.png" /></td>
   <td align="center"><img src="http://i.imgur.com/p8vMQDt.png" /></td>
  </tr>
  <tr>
   <td align="center"><img src="http://i.imgur.com/w4Ua94W.png" /></td>
   <td align="center"><img src="http://i.imgur.com/MDQabuy.png" /></td>
  </tr>
  <tr>
   <td align="left" colspan="2">
    <ul>
     <li>Installs directly to HOME directory - no more sub-directories - for easier terminal operation.</li>
     <li>Executable renamed to <code>epsxe</code> for easier terminal operation.</li>
     <li><code>docs</code> folder is now located in .epsxe.</li>
     <li>All text files from shaders are housed in docs (their name suitably changed).</li>
     <li>All shaders including guest shaders are in .epsxe/shaders - no more sub-directories.</li>
     <li>Some bloat text removed in script.</li>
     <li>Obsolete script commands removed.</li>
    </ul>
   </td>
  </tr>
 </tbody>
</table>

