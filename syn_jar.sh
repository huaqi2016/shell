#!/usr/bin/expect

cd /opt/9iCloud
tar -zcvf commonlib.tar.gz common_lib
cd app
tar -zcvf appcommonlib.tar.gz common_lib
cd ../service
tar -zcvf servicecommonlib.tar.gz common_lib
cd ..

#############################################################
expect -c "
set timeout 1200; 
spawn /usr/bin/scp -r /opt/9iCloud/commonlib.tar.gz root@192.168.22.63:/opt/9iCloud
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";} 
}
expect eof;"



expect -c "
set timeout 12000;
spawn /usr/bin/scp -r /opt/9iCloud/app/appcommonlib.tar.gz root@192.168.22.63:/opt/9iCloud/app
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}
expect eof;"



expect -c "
set timeout 12000;
spawn /usr/bin/scp -r /opt/9iCloud/service/servicecommonlib.tar.gz root@192.168.22.63:/opt/9iCloud/service
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}

expect eof;"

################################################################
expect -c "
set timeout 1200;
spawn /usr/bin/scp -r /opt/9iCloud/commonlib.tar.gz root@192.168.22.64:/opt/9iCloud
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}
expect eof;"



expect -c "
set timeout 12000;
spawn /usr/bin/scp -r /opt/9iCloud/app/appcommonlib.tar.gz root@192.168.22.64:/opt/9iCloud/app
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}
expect eof;"



expect -c "
set timeout 12000;
spawn /usr/bin/scp -r /opt/9iCloud/service/servicecommonlib.tar.gz root@192.168.22.64:/opt/9iCloud/service
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}

expect eof;"



#################################################################


expect -c "
set timeout 1200;
spawn /usr/bin/scp -r /opt/9iCloud/commonlib.tar.gz root@192.168.22.65:/opt/9iCloud
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}
expect eof;"



expect -c "
set timeout 12000;
spawn /usr/bin/scp -r /opt/9iCloud/app/appcommonlib.tar.gz root@192.168.22.65:/opt/9iCloud/app
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}
expect eof;"



expect -c "
set timeout 12000;
spawn /usr/bin/scp -r /opt/9iCloud/service/servicecommonlib.tar.gz root@192.168.22.65:/opt/9iCloud/service
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}

expect eof;"


########################################################################
expect -c "
set timeout 1200;
spawn /usr/bin/scp -r /opt/9iCloud/commonlib.tar.gz root@192.168.22.66:/opt/9iCloud
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}
expect eof;"



expect -c "
set timeout 12000;
spawn /usr/bin/scp -r /opt/9iCloud/app/appcommonlib.tar.gz root@192.168.22.66:/opt/9iCloud/app
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}
expect eof;"



expect -c "
set timeout 12000;
spawn /usr/bin/scp -r /opt/9iCloud/service/servicecommonlib.tar.gz root@192.168.22.66:/opt/9iCloud/service
expect {
\"*yes/no*\" {send \"yes\r\"; exp_continue}
\"*password*\" {send \"123456\r\";}
}

expect eof;"
