#!/usr/bin/sh
# init vars
USER_NAME= 
IMAGE_ID= 
CONTAINER_NAME= 
MOUNT_VOL= 
ROOT_PW= 
IS_EXPOSED_EXT=


# docker launcher wizard intro
start_wizard() 
{
   echo -e "Welcome to the Docker Container Launcher Wizard!"
   read -e "Please enter your name (First Name) to continue... " name
   echo -e ""
   set_user_name $name
}

# set user name
set_user_name() 
{
   if [ "$#" -gt 2 ] then
      echo -e "Warning: Too many parameters for Name."
   else
      echo -e "Name is recorded for reference purposes only."
   fi
   USER_NAME=$1
   echo -e ""
}

# show all available local images
show_local_imgs()
{
   echo -e "Here is a list of all local images: "
   docker image ls -a
   read -p "Please select the Image ID, or the Image Name and Tag for the container that you would want to run: " img_id
   IMAGE_ID=img_id 
   echo -e ""
}

# set container name
set_container_name()
{
   read -p "Please enter your preferred container name: " ctr_name
   CONTAINER_NAME=$ctr_name
}

# add local volume params
add_local_volume()
{
   read -p "Do you want to mount a local volume to linked to the container to store the data locally? (Y/N) " mount_vol
   if [ $mount_vol -eq 'Y' ] then
      read -p "Please enter an already existing local directory as target: " mount_path
      MOUNT_VOL=$mount_path     
   else
      echo -e "Note: All data and files for the database would be available on the container's file system."
      echo -e "Any data that is saved while the database container is up would be gone once the container is stopped and destroyed."
      read -p "Would you still want to proceed with this setting? (Y/N) " proceed
      if [ $proceed -eq 'Y' ] then
         echo -e "Please monitor your database regularly to prevent data loss."
      else
         clear
         add_local_volume()
      fi
   fi  
}

# set root password
set_root_pwd()
{
   read -p "Please enter your preferred password for the root database account: " rt_pwd
   ROOT_PW=rt_pwd
}

# expose to host externally
expose_through_host()
{
   read -p "Would you like to expose the container ports externally through the host machine? (Y/N) " expose_ext 
   if [ $expose_ext -eq "Y" ] then
      echo -e "ANNOUNCEMENT: The container's ports would be exposed externally through the host machine's IP address."   
      IS_EXPOSED_EXT=$expose_ext
   else
      echo -e "WARNING: The container's ports would not be exposed externally."
      echo -e "Only other containers connected within the same network would be able to access the database."
   fi
}

# build command parameters
build_command()
{
   cmd_parm="docker run"
   img_parm="-d $IMAGE_ID"
   ctr_parm="--name $CONTAINER_NAME"
   vol_parm="-v $MOUNT_VOL"
   root_parm="-e MYSQL_ROOT_PASSWORD=$ROOT_PW" 
   ext_parm="-P"
   exec_run=`$cmd_parm $ext_parm $ctr_parm $vol_parm $root_parm $img_parm`
   if [ $errorlevel > 1 ] then
      echo -e "Error running the container. Please double check the arguments and try again."
   else
      echo -e "Container is up."
   fi
}

# orchestration
do_main()
{
   clear
   start_wizard
   clear
   show_local_imgs
   set_container_name
   add_local_volume
   set_root_pwd
   expose_through_host
   build_command
   exit $errorlevel
}


#main
do_main
exit $errorlevel
