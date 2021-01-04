. this

backupTo="$this/.efs/backup"

pre(){
mkdir -p "$backupTo"
}

getDatetime(){
date=`date`
echo $date
}

snapAllVols(){
cd $this
btrfs sub create "$backupTo/$date"
btrfs sub snap -r my-eternal/Omni "$backupTo/$date"/
btrfs sub snap -r my-eternal/Stor "$backupTo/$date"/
btrfs sub snap -r my-eternal/Uni "$backupTo/$date"/
}

pre
getDatetime
snapAllVols
