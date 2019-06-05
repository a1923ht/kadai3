#!/bin/sh

if [ $# -ne 2 ] ;
then
	echo "２つ引数を入力してください" 1>&2
	exit 1
fi


echo $1 $2 |
awk '{
while($1*$2!=0){
	if($1>$2){$1=$1-$2}
	else{$2=$2-$1}print}}' |
awk 'END{print $1}'

