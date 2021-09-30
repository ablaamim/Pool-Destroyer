#!/bin/bash

function	file_exists() {
	if [ -e "$1" ] ; then
#		printf "\$>${1} found.\n\n" >> ${current_dir}/DEEPTHOUGHT
		return 0
	else
		printf "\$>${1} is missing. Skipping...\n\n" >> ${current_dir}/DEEPTHOUGHT
echo $1
		return 1
	fi
}

function	check_norme() {
	norme_out=user_output/norme
	if [ ! -e $norme_out ] ; then
		mkdir $norme_out
	fi
		python3 -m norminette -R CheckForbiddenSourceHeader $1 > $norme_out/tmp
	NORME_RES=$(grep -e "Error" -e "Warning" $norme_out/tmp)
#	echo $NORME $NORME_RES $FILE_NB
	if [ "$NORME_RES" == "" ] ; then
		printf "${uni_success} Norme: ./$1\n"
		printf "\nNorme: ./$1: OK\n" >> $current_dir/DEEPTHOUGHT
		NORME=0
	else
		printf "${uni_fail} Norme: ./$1\n"
		printf "\nNorme: ./$1: KO\n" >> $current_dir/DEEPTHOUGHT
		printf "$NORME_RES\n\n" 
		printf "$NORME_RES\n\n" >> $current_dir/DEEPTHOUGHT
		NORME=1
	fi
}

function	check_prototype() {
	TYPE=$1
	FUNC_NAME=$2
	FILE=$3
	PROTOTYPE=$(grep -E "^$TYPE"$'\t{1,}'"$FUNC_NAME"'\([^)]+\)' $FILE)
	if [ "$PROTOTYPE" == "" ] ; then
		printf " $FILE: $FUNC_NAME: ${RED}Bad prototype.${NOCOLOR}\n"
	else
		return
	fi
	#echo $PROTOTYPE
}
