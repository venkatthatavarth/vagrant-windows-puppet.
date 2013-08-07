S3BaseLocation=s3://vagrant-windows
BoxBaseName=${PWD##*/}
BoxName=${BoxBaseName}.box

s3cmd put $BoxName $S3BaseLocation/${BoxName}.upload
s3cmd del $S3BaseLocation/$BoxName
s3cmd mv $S3BaseLocation/${BoxName}.upload $S3BaseLocation/$BoxName