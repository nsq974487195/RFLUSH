sudo mkdir -p /usr/share/bdbm_drv
sudo touch /usr/share/bdbm_drv/ftl.dat
sudo touch /usr/share/bdbm_drv/dm.dat

sudo umount /media/robusta

sudo insmod risa_dev_ramdrive_timing.ko
sudo insmod robusta_drv.ko

sleep 1

sudo mkfs.f2fs -a 0 -s 2 /dev/robusta
sudo mount -t f2fs  /dev/robusta /media/robusta
