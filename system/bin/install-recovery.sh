#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:10158080:441f80e0cedbecc83b143bc301305d5c10830ff0; then
  applypatch EMMC:/dev/block/mmcblk0p9:9605120:491fa19e723f615c8b6804dc3b3eaf257005b2e9 EMMC:/dev/block/mmcblk0p10 441f80e0cedbecc83b143bc301305d5c10830ff0 10158080 491fa19e723f615c8b6804dc3b3eaf257005b2e9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
