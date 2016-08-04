#!/bin/bash
function bianli(){  

    for file in ` ls $1 `  
    do  
        if [ -d $1"/"$file ]  
        then  
             bianli $1"/"$file  
        else  
			 echo $file 
			 #find $1 -name $file
        fi  
    done  

} 

bianli '/opt/9iCloud/common_lib'
bianli '/opt/9iCloud/app/common_lib'
bianli '/opt/9iCloud/service/common_lib'
