# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check_c06.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/21 19:03:34 by alaamimi          #+#    #+#              #
#    Updated: 2021/06/21 19:03:37 by alaamimi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

function	check_c06_ex00() {
	usr_out=$current_dir/user_output/c06/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c06/ex00/ft_print_program_name.c" ; then
		msg_nothing_turned_in "ex00/ft_print_program_name.c"
		return
	fi
	check_norme "src/c06/ex00/ft_print_program_name.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests "" ./src/c06/ex00/ft_print_program_name.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_print_program_name.c\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$USER_OUTPUT" == "./user.out" ] ; then
		printf "${uni_success}ex00/ft_print_program_name.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_print_program_name.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "user.out") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c06_ex01() {
	usr_out=$current_dir/user_output/c06/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c06/ex01/ft_print_params.c" ; then
		msg_nothing_turned_in "ex01/ft_print_params.c"
		return
	fi
	check_norme "src/c06/ex01/ft_print_params.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests "" ./src/c06/ex01/ft_print_params.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_print_params.c\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out "first param" "second" "3rd")
	local RES=$(printf "first param\nsecond\n3rd\n")
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex01/ft_print_params.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_print_params.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c06_ex02() {
	usr_out=$current_dir/user_output/c06/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c06/ex02/ft_rev_params.c" ; then
		msg_nothing_turned_in "ex02/ft_rev_params.c"
		return
	fi
	check_norme "src/c06/ex02/ft_rev_params.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests "" ./src/c06/ex02/ft_rev_params.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_rev_params.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out "first param" "second" "3rd")
	local RES=$(printf "3rd\nsecond\nfirst param\n")
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex02/ft_rev_params.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_rev_params.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c06_ex03() {
	usr_out=$current_dir/user_output/c06/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c06/ex03/ft_sort_params.c" ; then
		msg_nothing_turned_in "ex03/ft_sort_params.c"
		return
	fi
	check_norme "src/c06/ex03/ft_sort_params.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests "" ./src/c06/ex03/ft_sort_params.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_sort_params.c\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out "first param" "second" "3rd" "4rd" "AAA" "ABA" "AAB" "BAA" "aab")
	local RES=$(printf "3rd\n4rd\nAAA\nAAB\nABA\nBAA\naab\nfirst param\nsecond\n")
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex03/ft_sort_params.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_sort_params.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	c06() {
	mkdir src/c06 user_output/c06
	print_current_part "c06"
	cp -r $src_path/c06/ex* ./src/c06  # copying src files
	
	check_c06_ex00
	check_c06_ex01
	check_c06_ex02
	check_c06_ex03

	rm -rf $current_dir/user_output/c06 $current_dir/src/c06
	printf "${GREEN}\nAll c06 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c06 tests are done.\n" >> DEEPTHOUGHT
}
