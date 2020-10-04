backup=/data/media/0/Android/backup;apk=$backup/apk/mupen64plusae.apk;pkg=org.mupen64plusae.v3.fzurita;pm uninstall $pkg;pm install -r $apk;
backup=/data/media/0/Android/backup;src=$backup/data/media;des=/data/;cp $src $des -R;chmod 777 /data/media -R;
backup=/data/media/0/Android/backup;src=$backup/data/data;des=/data/data;pkg=org.mupen64plusae.v3.fzurita;uid=$(ls -ld $des/$pkg | cut -d " " -f 2);cp $src/$pkg $des/ -R;chown $uid:$uid $des/$pkg/shared_prefs -R;
sync;