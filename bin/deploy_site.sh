#/bin/bash

## Backsup and deploys a site.

quit() {
    exit 1
}

if [[ -z $1 || -z $2 ]]
then
    echo "what site do you want to backup and deploy?"
    quit
fi

if [[ -d $1 ]]
then
    tar_file=$1.tar.gz
    vhosts_conf=$1/$2.conf
    mysql_conf=$1/$2.mysql

    # temp files that sed creates
    vhosts_confe=$1/$2.confe
    mysql_confe=$1/$2.mysqle

    echo "editing vhosts files"

    echo "changing ServerName"
    sed -ie '/drupaldev/d' $vhosts_conf
    sed -ie 's/#ServerName/ ServerName/g' $vhosts_conf

    echo "changing the DocumentRoot"
    sed -ie 's/home/var/g' $vhosts_conf

    echo "changing the cosign cert path"
    sed -ie 's/cmspilot/cmsprod/g' $vhosts_conf

   #echo "removing drupaldev references from the mysql"
   #sed -ie 's/drupaldev[0-9][0-9]/'$2'/g' $mysql_conf

    if [[ -f $vhosts_confe ]] 
    then 
        echo "removing vhsots.confe file"
        rm $vhosts_confe
    fi
   #if [[ -f $mysql_confe ]]
   #then
   #    echo "removing mysql.confe file"
   #    rm $mysql_confe
   #fi

    # package up the site
    echo "tarring up the site"
    /usr/local/bin/gtar -pczf $tar_file $1

    echo "uploading to cmsprod"
    scp $tar_file cmsprod.appstate.edu:~/

    echo "finished, now create that TE ticket and URL request"

else
    echo "is this a site?"
    quit
fi

quit

