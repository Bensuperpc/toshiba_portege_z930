if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "Please use: <script> /dev/<installation path of EFI part.>"
    exit
fi

sudo mount /dev/$1 /mnt
sudo mkdir /mnt/EFI/BOOT
sudo cp /mnt/EFI/ubuntu/* /mnt/EFI/BOOT
sudo mv /mnt/EFI/BOOT/grubx64.efi /mnt/EFI/BOOT/bootx64.efi
echo "OK"

#Thank https://forum.ubuntu-fr.org/viewtopic.php?id=1988359
