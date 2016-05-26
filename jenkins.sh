#!/bin/bash
rm -rf /opt/9iCloud/common_lib/*
rm -rf /opt/9iCloud/service/common_lib/*
rm -rf /opt/9iCloud/app/common_lib/*
/bin/tar -zxvf /opt/9iCloud/commonlib.tar.gz -C /opt/9iCloud
/bin/tar -zxvf /opt/9iCloud/app/appcommonlib.tar.gz -C /opt/9iCloud/app
/bin/tar -zxvf /opt/9iCloud/service/servicecommonlib.tar.gz -C /opt/9iCloud/service
