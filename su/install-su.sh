#!/sbin/sh
#
# ROOT installer for Carliv Recoveries. - 2015
#
# Credits Chainfire for su binary.
#
#*******************change attributions*************************#
chattr -i /system/xbin/su;
chattr -i /system/bin/.ext/.su;
chattr -i /system/xbin/daemonsu;
chattr -i /system/etc/install-recovery.sh;
#*****************copy necessary files**************************#
mkdir -p /system/bin/.ext;
chmod 0777 /system/bin/.ext;
cp /sbin/su.recovery /system/bin/.ext/.su;
cp /sbin/su.recovery /system/xbin/su;
cp /sbin/su.recovery /system/xbin/daemonsu;
cp /sbin/su.recovery /system/xbin/sugote;
cp /system/bin/sh /system/xbin/sugote-mksh;            
cp /etc/install-recovery.sh /system/etc/install-recovery.sh;
ln -sf /system/etc/install-recovery.sh /system/bin/install-recovery.sh;
mkdir -p /system/etc/init.d;
chmod 0777 /system/etc/init.d;
cp /etc/99SuperSUDaemon /system/etc/init.d/99SuperSUDaemon;
touch /system/etc/.installed_su_daemon;
#******************chmod required files**************************#
chmod 0755 /system/bin/.ext/.su; 
chmod 0755 /system/xbin/su;
chmod 0755 /system/xbin/daemonsu;
chmod 0755 /system/xbin/sugote;
chmod 0755 /system/xbin/sugote-mksh;
chmod 0755 /system/etc/install-recovery.sh;
chmod 0755 /system/etc/init.d/99SuperSUDaemon;
chmod 0644 /system/etc/.installed_su_daemon; 
#*****************change context for copied files*****************#
chcon u:object_r:system_file:s0 /system/bin/.ext/.su; 
chcon u:object_r:system_file:s0 /system/xbin/su;
chcon u:object_r:system_file:s0 /system/xbin/daemonsu;
chcon u:object_r:zygote_exec:s0 /system/xbin/sugote;
chcon u:object_r:system_file:s0 /system/xbin/sugote-mksh;
chcon u:object_r:system_file:s0 /system/etc/install-recovery.sh;
chcon u:object_r:system_file:s0 /system/etc/init.d/99SuperSUDaemon;
chcon u:object_r:system_file:s0 /system/etc/.installed_su_daemon; 
#**********************execute install*****************************#
/system/xbin/su --install;  
sleep 5;
