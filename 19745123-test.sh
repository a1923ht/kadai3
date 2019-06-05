#!/bin/sh

echo $1 $2 |
awk '{
while($1*$2!=0){
	if($1>$2){$1=$1-$2}
	else{$2=$2-$1}print}}' |
awk 'END{print $1}'

