# Lumia830Pkg

# All this assumes you already have unlocked your bootloader and know how to switch between different modes as well as have some sort of unbricking method if things go wrong. For RM-1073, check my GitHub Lumia640 Unbrick repo: https://github.com/WolfLink115/Lumia-640-RM-1073_Unbrick

## Not Working
- At the moment this is unknown

## Working
- Boots to EDK2 shell
- Linux boots if you use the linux port by Dominduchami

## How to Compile

#### Download EDK2:
```
git clone https://github.com/tianocore/edk2 --recursive
git clone https://github.com/tianocore/edk2-platforms
git clone https://github.com/WolfLink115/Lumia830Pkg
```
#### Install dependencies:
```
sudo apt-get install build-essential uuid-dev iasl git gcc-5 nasm python3-distutils
```

#### To Build EDK2 just run this in the Linux terminal:
```
./build.sh
```
## How to Install (Windows Needed)
1. Compile Lumia830Pkg & Copy emmc_appsboot.mbn to EFIESP partition
2. Download compiled BootShim and BootShim Patcher from releases page: 
3. Copy Stage2.efi to EFIESP partition
4. Rename resetphone.efi to resetphone.efi.bak and move it somewhere to your computer
5. Copy resetphone.efi to MainOS:\EFIESP\Windows\System32\Boot
7. Add "NoIntegrityChecks" to "Reset Phone Application" entry in BCD of your phone:
- Open Command Prompt as admin, enter the letter for mainos partition followed by a colon (ex. E:) and run:
```
cd EFIESP\efi\Microsoft\boot
bcdedit /store .\BCD /enum ALL
- Look for the Reset Phone Application section and copy the UUID for it (UUID ex. {xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx}). Then run:
bcdedit /store .\BCD /set <"{UUID-for-ResetPhoneApplication}"> "nointegritychecks" yes
```
8. Enable DisplayBootMenu in BCD
```
bcdedit /store .\BCD /set "{bootmgr}" "nointegritychecks" yes
bcdedit /store .\BCD /set "{bootmgr}" "testsigning" Yes
bcdedit /store .\BCD /set "{bootmgr}" "timeout" 5
bcdedit /store .\BCD /set "{bootmgr}" "displaybootmenu" Yes
```
9. Reboot Phone
10. At the BootMenu press vol down to boot EDK2


## How to boot Linux from eMMC on Lumia 640
### Linux only (WSL untested):
1. Open Terminal and install GParted.
```
sudo apt install gparted
```
2. Plug your Lumia in Mass Storage Mode into your computer and open GParted.

Switch to your Lumia's eMMC in gparted and delete the MainOS and DATA partitions (Partition number varies between devices).

Create a new ext4 partition from the remaining space, name label it MainOS.

3. Run these in terminal, being sure to replace <username> with your preferred username:
```
sudo mkdir /mnt/root
sudo mount </path/to/MainOS> /mnt/root
sudo debootstrap --arch=armhf <distro> /mnt/root

- To install desktop environment:
sudo chroot /mnt/root
apt update
apt install xfce4 -y

- To setup user profile
adduser <username>
usermod -aG sudo <username>

- To setup autologin
nano /etc/lightdm/lightdm.conf

- Add in "[Seat:*]" section:
pam-service=lightdm
pam-autologin-service=lightdm-autologin
autologin-user=<username>
autologin-user-timeout=0
session-wrapper=/etc/X11/Xsession
Greeter-session=lightdm-greeter

- Press CTRL + X then Y and Enter

- Finishing up, type:
exit
umount /mnt/root
exit
```

4. To setup Linux kernel
Copy the zImage, lumia.dtb, and initramfs-linux.img from https://github.com/WolfLink115/linux/releases/tag/v1-alpha to the root of the EFIESP partition.

5. To setup startup.nsh, being sure to replace <mmcblk0p*> with your MainOS partition:
```
cat <<EOF > startup.nsh
zImage dtb=lumia.dtb video=efifb earlycon=efifb root=/dev/<mmcblk0p*> PMOS_NO_OUTPUT_REDIRECT
EOF
```

6. Reboot and hold volume down to boot Linux

# Credits!
1. Imbushuo for BootShim (https://github.com/imbushuo/boot-shim)
2. Linus Torvalds for Linux kernel (https://github.com/torvalds/linux)
3. Tianocore for EDK2 sources (https://github.com/tianocore/edk2)
4. Konrad Dybcio for writing a porting guide (https://github.com/konradybcio/Lumia-EDK2-Guide)
5. Dominduchami for modified Lumia 830 EDK2 (https://github.com/Dominduchami/Lumia830Pkg)
6. Ivaylo Ivanov for his initramfs-linux.img (https://github.com/ivoszbg)
7. Empyreal96 for Lumia 950XL debootstrap install guide (https://github.com/empyreal96)
8. Aljoshua Hell for introducing me to debootstrap (https://github.com/J0SH1X)
9. PostmarketOS team for envkernel.sh script (https://gitlab.com/postmarketOS/pmbootstrap/-/blob/master/helpers/envkernel.sh)
10. Anyone else I may be missing.
