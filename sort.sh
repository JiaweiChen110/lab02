#!/bin/bash
ARRAY=(4 3 1 2)
echo ${ARRAY[@]}

for (( i=0; i < ${#ARRAY[@]} - 1; i++))
do 
	for  (( k=(i+1); k < ${#ARRAY[@]}; k++ ))
	do
		if [[ ${ARRAY[i]} -gt ${ARRAY[k]} ]]
		then 
			holder=${ARRAY[i]}
			ARRAY[i]=${ARRAY[k]}
			ARRAY[k]=$holder
		fi
	done
done

echo ${ARRAY[@]}
