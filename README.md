# Vortex Thermal
This repository contains configuration files that tweak sysctl values, add udev rules to automatically set schedulers, and provide additional optimizations.

## udev rules
- ZRAM tuning (changed to new rules )
- Audio latency ( Cachy os Default )
- SATA Active Link Power Management for HDD to prioritize max performance ( Cachy os Default ) 
- IO schedulers, automatic selection schedulers depends on your HW - SATA SSD, NVME and HDD. ( Cachy os Default )
- NVIDIA, load, unload modules and set-up power management. ( Cachy os Default )

## sysctl
- Tweaks focused to memory and network. ( Cachy os Default )

## modprobe
- NVIDIA and enable direct rendering ( Cachy os Default )
- Force using of the amdgpu driver for Southern Islands (GCN 1.0+) and Sea Islands (GCN 2.0+). ( Cachy os Default )

## systemd
- PCI latency ( Cachy os Default )
 
## Scripts
- Easily switch between amdpstate-epp and amdpstate-guided
- Upload logs with paste-cachyos, for example: sudo dmesg | paste-cachyos
- View up to 10 process memory/swap usage (topmem)
