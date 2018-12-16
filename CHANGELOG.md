<h1 align="center">ePSXe64Ubuntu</h1>

<h2 align="center">changelog</h2>

<table>
 <tbody>
  <tr>
   <td align="center" colspan="2"><strong>11th release</strong></td>
  </tr>
  <tr>
   <td align="left" colspan="2">
    <ul>
     <li>11</li>
      <ul>
       <li>removed quiet mode so as to have visible any errors while installing dependencies</li>
       <li>fixes the problem where recent versions of ubuntu can't have libcurl3 installed at the same time as libcurl4 or in the case of 18.10, it's not available at all. It does this by downloading the 18.04 version of libcurl3 and installing it with the name libcurl.so.3 instead of libcurl.so.4. It then patches the ePSXe executable to look for libcurl.so.3 instead of libcurl.so.4.</li>
       <li>Libcurl 3 is installed alongside libcurl4 so things like kodi should work regardless of whether the checksum matches or not.</li>
       <li><a href="https://github.com/brandleesee/ePSXe64Ubuntu/pull/5">accepted pull request (bryceml)</a></li>
       <li><a href="http://ngemu.com/threads/ubuntu-bionic-libcurl-so-4-curl_openssl_3-not-found.204577/">issue</a></li>
       <li><a href="https://launchpad.net/~xapienz/+archive/ubuntu/curl34">previous workaround</a></li>
      </ul>
    </ul>
   </td>
  </tr>
  <tr>
   <td align="center" colspan="2"><img src="https://i.imgur.com/l1l3p6w.png" /></td>
  </tr>
  <tr>
  <td align="center" colspan="2"><strong>10th release & updates</strong></td>
 </tr>
 <tr>
   <td align="left" colspan="2">
    <ul>
     <li>10.3</li>
      <ul>
       <li>Fixed script running from git cloned repo.</li>
       <li>Fixed script running from Steam's Big Picture Mode.</li>
      </ul>
     <li>10.2</li>
      <ul>
       <li>Added Debian support by adding libssl1.0.0.</li>
      </ul>
     <li>10.1</li>
      <ul>
       <li>Renamed icon to become hidden by default.</li>
       <li>Fixed removal of icon. Consequence of v10's restructuring.</li>
      </ul>
     <li>10</li>
      <ul>
       <li>Optimized for Ubuntu 18.04.</li>
       <ul>
        <li>Prior to 18.04 libcurl3 was installed only for Xubuntu / xfce.</li>
        <ul>
         <li>Now installed by default.</li>
         <li>http://ngemu.com/threads/ubuntu-bionic-libcurl-so-4-curl_openssl_3-not-found.204577/</li>
        </ul>
        <li>Restructured script to first download icon then create the .desktop file effectively removing any instances of a blank Dash/Dock/Panel placeholder on first install.</li>
       </ul>
      </ul>
    </ul>
   </td>
  </tr>
  <tr>
   <td align="center" colspan="2"><strong>9th release & updates</strong></td>
  </tr>
  <tr>
   <td align="center"><img src="http://i.imgur.com/U4QNkXL.png" /></td>
   <td align="center"><img src="http://i.imgur.com/cSqEyXC.gif" /></td>
  </tr>
  <tr>
   <td align="center"><img src="http://i.imgur.com/A6cIRmT.png" /></td>
   <td align="center"><img src="http://i.imgur.com/PNlgKV1.png" /></td>
  </tr>
  <tr>
   <td align="center"><img src="http://i.imgur.com/mCntR7j.png" /></td>
   <td align="center"><img src="http://i.imgur.com/rD6V5Ub.png" /></td>
  </tr> 
  <tr>
   <td align="left"><img src="http://i.imgur.com/fPycbXf.png" /></td>
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
