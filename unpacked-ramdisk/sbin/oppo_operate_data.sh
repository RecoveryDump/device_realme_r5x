#!/sbin/sh
para_list=$@

#operate date begin
start=$(date "+%Y-%m-%d %H:%M:%S")
echo "operate data begin: ${start}"

#You should add your sh operation in your own area you belongs to
#=====================OS Begin============================

#huangyuanwang@ROM.NewSoundRecorder,2020-05-07,Add for remove colorfilestand on os7.0
rm -rf /data/data/com.coloros.colorfilestand
rm -rf /data/app/ColorFileStand
rm -rf /data/app/com.coloros.colorfilestand-*
rm -rf /data/user_de/0/com.coloros.colorfilestand

#=====================OS End==============================

#=====================Android Begin========================
#=====================Android End==========================

#=====================BSP Begin============================
#=====================BSP End==============================

#=====================Multi Begin==========================
#=====================Multi End============================

#=====================NetWork Begin========================
#=====================NetWork End==========================

#operate end
end=$(date "+%Y-%m-%d %H:%M:%S")
echo "operate data end: ${end}"

interval=$(($(($(date +%s -d "$end")-$(date +%s -d "$start")))))
echo "operate data cost: $interval seconds"