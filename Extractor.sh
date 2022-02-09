#!/bin/bash

# echo "Extractor/Destractor"

# read   -r filetype_input 
# read   -r  files
# echo    "$filetype_input"





echo "Please select what program to run"

#read ProgramSelection

CompressionDecompression() {

# if [ "tar" = "$filetype_input" ] 
# then
#     ls
#     pwd
#     echo "Enter file type for tar compressed type:"
#     echo  "Enter file directory ${files}"
#     fileName=files
    
#     echo tar -cvzf ${fileName}

# fi
echo -n "Enter the type of compression or decompression"
read    -r directory
read   -r filetype

case $filetype in 

tarComp)


ls
pwd
echo  -n "Enter directory path for compression"
echo tar -cvzf "${directory}" files
;;
tarDecom)
echo -n "Enter directory path for decompression"
echo -n tar xf "${directory}"
;;

bzipComp)
ls
pwd
echo -n "Enter directory path for bzip compression"
echo -n tar cfj "${directory}" files
;;

bzipDecomp)
ls
pwd
echo -n "Enter directory path for bzip decompression"
echo -n tar xfj "${directory}" 
;;

gzipComp)
ls
pwd
echo -n "Enter directory path for gzip compression"
echo -n tar cfz "${directory}" files
;;
gzipDecomp)
ls
pwd
echo -n "Enter directory for gzip Decompression"
echo -n tar xfz "${directory}" 
;;

zipComp)
ls
pwd
echo -n "Enter directory for zip compression"
echo -n zip "${directory}" files
;;
zipDecomp)
ls
pwd
echo -n "Enter directory for zip Decompression"
echo -n unzip "${directory}" 
;;
esac
}

FileSearcher() {

echo   "hello"

}
