# Summary / Backup of my scripts #

Just some scripts for my daily use I backup on Github :)

	[OK]   = usable
	[WARN] = unrecommended to use 
	[EXT]  = Edited/wrapped/upgraded scripts inspired from extern sources

#### Table of contents

* [install.sh] 
* [WARN] m_chromium_tor
* [OK] [EXT] (tor) m_tor
* [OK] [EXT] (https://github.com/oblique/create_ap) m_custom_ap	
* [OK] [EXT] (macchanger) m_macchanger     
* [OK] [EXT] (calibre) m_epub2pdf_dir
* [OK] m_man2pdf	  
* [OK] m_pwd_gen	   	
* [OK] m_speed_dev_0    
* [OK] m_syscall
* [OK] m_public_ip
* [OK] m_fileshare_rb
* [OK] m_tmp_ufw

#### Required Software Packages

* ruby
* (chromium)
* xdg-utils
* macchanger
* create_ap
* curl
* tor
* ebook-convert (package: calibre)
* ufw

## Installation
---
Arch
```
sudo pacman -S curl ruby tor xdg-utils macchanger create_ap calibre ufw
```

Ubuntu
```
sudo apt-get install curl ruby tor xdg-utils macchanger create_ap calibre ufw
```
