# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check_shell01.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/21 18:07:30 by alaamimi          #+#    #+#              #
#    Updated: 2021/06/21 18:07:35 by alaamimi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

function	check_sh01_ex01() {
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "\n= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell01/ex01/print_groups.sh" ; then
		msg_nothing_turned_in "ex01/print_groups.sh"
		return
	fi
	usr_out=$current_dir/user_output/shell01/ex01
	mkdir $usr_out
	cd src/shell01/ex01
	bash print_groups.sh | tr -d \\n > $usr_out/print_groups
	id -Gn $FT_USER | tr ' ' ',' | tr -d \\n > $usr_out/res_out
	DIFF=$(diff -q $usr_out/print_groups $usr_out/res_out) 
	if [ "$DIFF" != "" ] ; then
		printf "${uni_fail}ex01/print_groups.sh\t\t${diff_ko}${NOCOLOR}\n"
		diff $usr_out/print_groups $usr_out/res_out >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> $current_dir/DEEPTHOUGHT
		$DIFF
	else
		printf "${uni_success}ex01/print_groups.sh\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_sh01_ex02() {
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "\n= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell01/ex02/find_sh.sh" ; then
		msg_nothing_turned_in "ex02/find_sh.sh"
		return
	fi
	usr_out=$current_dir/user_output/shell01/ex02
	if [ ! -e $usr_out ] || [ ! -e tests/shell01/ex02 ] ; then
		mkdir $usr_out tests/shell01/ex02 2> /dev/null
	fi
	cd tests/shell01/ex02
	bash $current_dir/src/shell01/ex02/find_sh.sh > $usr_out/find_sh_out
	find . -type f -name "*.sh" -exec basename -s ".sh" {} \; > $usr_out/res_out
	DIFF=$(diff $usr_out/find_sh_out $usr_out/res_out) 
	if [ "$DIFF" != "" ] ; then
		printf "${uni_fail}ex02/find_sh.sh\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n" >> $current_dir/DEEPTHOUGHT
		echo $DIFF >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/find_sh.sh\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_sh01_ex03() {
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "\n= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell01/ex03/count_files.sh" ; then
		msg_nothing_turned_in "ex03/count_files.sh"
		return
	fi
	usr_out=$current_dir/user_output/shell01/ex03
	if [ ! -e $usr_out ] || [ ! -e tests/shell01/ex03 ] ; then
		mkdir $usr_out tests/shell01/ex03 2> /dev/null
	fi
	cd $current_dir/tests
	bash $current_dir/src/shell01/ex03/count_files.sh > $usr_out/count_files_out
	find . -type f -o -type d | wc -l | bc > $usr_out/res_out
	DIFF=$(diff $usr_out/count_files_out $usr_out/res_out)
	if [ "$DIFF" != "" ] ; then
		echo $DIFF
		printf "${uni_fail}ex03/count_files.sh\t\t${diff_ko}${NOCOLOR}\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/count_files.sh\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_sh01_ex04() {
	printf " ${YELLOW}${UNDERLINE}ex04:\n${NOCOLOR}"
	printf "\n= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell01/ex04/MAC.sh" ; then
		msg_nothing_turned_in "ex04/MAC.sh"
		return
	fi
	usr_out=$current_dir/user_output/shell01/ex04
	if [ ! -e $usr_out ] || [ ! -e tests/shell01/ex04 ] ; then
		mkdir $usr_out tests/shell01/ex04 2> /dev/null
	fi
	bash $current_dir/src/shell01/ex04/MAC.sh > $usr_out/user.out
	ifconfig -a | awk '/ether/ {print$2}' > $usr_out/res_out
	DIFF=$(diff $usr_out/res_out $usr_out/user.out)
	printf "${BLUE}Testing differences with ifconfig...\n${NOCOLOR}"
	printf "Testing differences with ifconfig...\n" >> DEEPTHOUGHT
	if [ "$DIFF" != "" ] ; then
		printf "${uni_fail}ex04/MAC.sh\t\t\t${diff_ko}${NOCOLOR}"
		echo $DIFF >> DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex04/MAC.sh\t\t\t${diff_ok}${NOCOLOR}"
		printf "\ndiff ok :D\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "Note: this might not work on linux.\n"
	printf "${BLUE}Testing without ifconfig...\n${NOCOLOR}"
	printf "Testing without ifconfig...\n" >> DEEPTHOUGHT
	RES=$(bash $current_dir/src/shell01/ex04/MAC.sh | grep -E "^[[:alnum:]]{2}:[[:alnum:]]{2}:[[:alnum:]]{2}:[[:alnum:]]{2}:[[:alnum:]]{2}:[[:alnum:]]{2}$")
	if [ "$RES" != "" ] ; then
		printf "${uni_success}ex04/MAC.sh\t\t\t${diff_ok}${NOCOLOR}"
		printf "\ndiff ok :D\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/MAC.sh\t\t\t${diff_ko}${NOCOLOR}" 
		printf "Bad formatting. Please check spaces or newlines.\n" >> DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "Note: this might not work on linux.\n"
}

function	check_sh01_ex05() {
	printf " ${YELLOW}${UNDERLINE}ex05:\n${NOCOLOR}"
	printf "\n= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists src/shell01/ex05/\"\\\?\$\*\'MaRViN\'\*\$\?\\\" ; then
		msg_nothing_turned_in "\"\\\?\$\*\'MaRViN\'\*\$\?\\\""
		return
	fi
	FILE_CONTENT=$(cat -e src/shell01/ex05/\"\\\?\$\*\'MaRViN\'\*\$\?\\\")
	if [ "$FILE_CONTENT" != "42" ] ; then
		printf "${uni_fail}ex05/\"\\\?\$\*\'MaRViN\'\*\$\?\\\"\t${diff_ko}${NOCOLOR}\n"
		echo "$FILE_CONTENT != 42" >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/\"\\\?\$\*\'MaRViN\'\*\$\?\\\"\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> $current_dir/DEEPTHOUGHT
	fi
}

function	check_sh01_ex06() {
	printf " ${YELLOW}${UNDERLINE}ex06:\n${NOCOLOR}"
	printf "\n= ex06 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists src/shell01/ex06/skip.sh ; then
		msg_nothing_turned_in "ex06/skip.sh"
		return
	fi
	usr_out=$current_dir/user_output/shell01/ex06
	if [ ! -e $usr_out ] ; then
		mkdir $usr_out tests/shell01/ex06 2> /dev/null
	fi
	cd $current_dir
	bash $current_dir/src/shell01/ex06/skip.sh > $usr_out/skip_out
	ls -l | awk 'NR % 2' > $usr_out/res_out
	DIFF=$(diff $usr_out/skip_out $usr_out/res_out)
	if [ "$DIFF" != "" ] ; then
		printf "${uni_fail}ex06/skip.sh\t\t\t${diff_ko}${NOCOLOR}\n"
		echo $DIFF >> DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex06/skip.sh\t\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> $current_dir/DEEPTHOUGHT
	fi
}

function	check_sh01_ex07() {
	printf " ${YELLOW}${UNDERLINE}ex07:\n${NOCOLOR}"
	printf "\n= ex07 =\n==========================================\n" >> DEEPTHOUGHT
	printf "${RED}This exercise is not supported yet.${NOCOLOR}\n"	
	printf "\nThis exercise is not supported yet.\n" >> DEEPTHOUGHT	
}

function	check_sh01_ex08() {
	printf " ${YELLOW}${UNDERLINE}ex08:\n${NOCOLOR}"
	printf "\n= ex08 =\n==========================================\n" >> DEEPTHOUGHT
	printf "${RED}This exercise is not supported yet.${NOCOLOR}\n"	
	printf "\nThis exercise is not supported yet.\n\n" >> DEEPTHOUGHT	
}

function	shell01() {
	mkdir src/shell01 user_output/shell01 
	print_current_part "shell01"
	cp -r $src_path/shell01/ex* ./src/shell01  # copying src files
	
	check_sh01_ex01
	check_sh01_ex02
	check_sh01_ex03
	check_sh01_ex04
	check_sh01_ex05
	check_sh01_ex06
	check_sh01_ex07
	check_sh01_ex08
	printf "${GREEN}\nAll shell01 tests are done.\n\n${NOCOLOR}"
        printf "\n\nAll shell01 tests are done.\n" >> DEEPTHOUGHT
#	rm -rf src user_output
}
