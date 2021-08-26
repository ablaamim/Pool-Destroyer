# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check_c03.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/26 21:05:25 by alaamimi          #+#    #+#              #
#    Updated: 2021/08/26 21:07:11 by alaamimi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

function	check_c03_ex00()
{
	usr_out=$current_dir/user_output/c03/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c03/ex00/ft_strcmp.c" ; then
		msg_nothing_turned_in "ex00/ft_strcmp.c"
		return
	fi
	check_norme "src/c03/ex00/ft_strcmp.c"
	check_prototype "int" "ft_strcmp" "src/c03/ex00/ft_strcmp.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c03/ex00/main.c ./src/c03/ex00/ft_strcmp.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_strcmp.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="0123456789"
	local TEST2="9876543210"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ $USER_OUTPUT -lt 0 ] ; then
		printf "${uni_success}ex00/ft_strcmp.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strcmp.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="hey i'm dave"
	local TEST2="hello dave i'm daniel"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ $USER_OUTPUT -gt 0 ] ; then
		printf "${uni_success}ex00/ft_strcmp.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strcmp.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST1")
	if [ $USER_OUTPUT -eq 0 ] ; then
		printf "${uni_success}ex00/ft_strcmp.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strcmp.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c03_ex01()
{
	usr_out=$current_dir/user_output/c03/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c03/ex01/ft_strncmp.c" ; then
		msg_nothing_turned_in "ex01/ft_strncmp.c"
		return
	fi
	check_norme "src/c03/ex01/ft_strncmp.c"
	check_prototype "int" "ft_strncmp" "src/c03/ex01/ft_strncmp.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c03/ex01/main.c ./src/c03/ex01/ft_strncmp.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_strncmp.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="0123456789"
	local TEST2="9876543210"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2" "1")
	if [ $USER_OUTPUT -lt 0 ] ; then
		printf "${uni_success}ex01/ft_strncmp.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_strncmp.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="hey i'm dave"
	local TEST2="hello dave i'm daniel"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2" 2)
	if [ $USER_OUTPUT -eq 0 ] ; then
		printf "${uni_success}ex01/ft_strncmp.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_strncmp.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST1" "128")
	if [ $USER_OUTPUT -eq 0 ] ; then
		printf "${uni_success}ex01/ft_strncmp.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_strncmp.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c03_ex02()
{
	usr_out=$current_dir/user_output/c03/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c03/ex02/ft_strcat.c" ; then
		msg_nothing_turned_in "ex02/ft_strcat.c"
		return
	fi
	check_norme "src/c03/ex02/ft_strcat.c"
	check_prototype "char" "\*ft_strcat" "src/c03/ex02/ft_strcat.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c03/ex02/main.c ./src/c03/ex02/ft_strcat.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_strcat.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST$TEST" ] ; then
		printf "${uni_success}ex02/ft_strcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_strcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST$TEST") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST$TEST" ] ; then
		printf "${uni_success}ex02/ft_strcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_strcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST$TEST") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST$TEST" ] ; then
		printf "${uni_success}ex02/ft_strcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_strcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST$TEST") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c03_ex03()
{
	usr_out=$current_dir/user_output/c03/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c03/ex03/ft_strncat.c" ; then
		msg_nothing_turned_in "ex03/ft_strncat.c"
		return
	fi
	check_norme "src/c03/ex03/ft_strncat.c"
	check_prototype "char" "\*ft_strncat" "src/c03/ex03/ft_strncat.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c03/ex03/main.c ./src/c03/ex03/ft_strncat.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_strncat.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST" "8")
	if [ "$USER_OUTPUT" == "01234567 01234567" ] ; then
		printf "${uni_success}ex03/ft_strncat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_strncat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "01234567 01234567") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST" "5")
	if [ "$USER_OUTPUT" == "hey i hey i" ] ; then
		printf "${uni_success}ex03/ft_strncat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_strncat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "hey i hey i") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="So long, and thanks for all the fish"
	local RES="So long, and thanks for all  So long, and thanks for all "
	local USER_OUTPUT=$(./user.out "$TEST" "28")
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex03/ft_strncat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_strncat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c03_ex04()
{
	usr_out=$current_dir/user_output/c03/ex04
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex04:\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c03/ex04/ft_strstr.c" ; then
		msg_nothing_turned_in "ex04/ft_strstr.c"
		return
	fi
	check_norme "src/c03/ex04/ft_strstr.c"
	check_prototype "char" "\*ft_strstr" "src/c03/ex04/ft_strstr.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c03/ex04/main.c ./src/c03/ex04/ft_strstr.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="0123456789"
	local TEST2="7"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex04/ft_strstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "789 789") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="hey i'm dave"
	local TEST2="7"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ "$USER_OUTPUT" == "ok" ] || [ "$USER_OUTPUT" == "" ] ; then
		printf "${uni_success}ex04/ft_strstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="So long, and thanks for all the fish"
	local TEST2=" "
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex04/ft_strstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo " long, and thanks for all the fish long, and thanks for all the fish") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	local TEST1="hot chocolate milk"
	local TEST2="late"
	local USER_OUTPUT=$(./user.out "$TEST1" "$TEST2")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex04/ft_strstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/ft_strstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "late milk late milk") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c03_ex05()
{
	usr_out=$current_dir/user_output/c03/ex05
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex05:\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c03/ex05/ft_strlcat.c" ; then
		msg_nothing_turned_in "ex05/ft_strlcat.c"
		return
	fi
	check_norme "src/c03/ex05/ft_strlcat.c"
	check_prototype "unsigned int" "ft_strlcat" "src/c03/ex05/ft_strlcat.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c03/ex05/main.c ./src/c03/ex05/ft_strlcat.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST" "4")
	if [ "$USER_OUTPUT" == "10 012" ] ; then
		printf "${uni_success}ex05/ft_strlcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "10 012") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST" "13")
	if [ "$USER_OUTPUT" == "12 hey i'm dave" ] ; then
		printf "${uni_success}ex05/ft_strlcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "12 hey i'm dave") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST" "42")
	if [ "$USER_OUTPUT" == "36 So long, and thanks for all the fish" ] ; then
		printf "${uni_success}ex05/ft_strlcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "36 So long, and thanks for all the fish") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hot chocolate milk"
	local USER_OUTPUT=$(./user.out "$TEST" "0")
	if [ "$USER_OUTPUT" == "18 " ] ; then
		printf "${uni_success}ex05/ft_strlcat.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/ft_strlcat.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "18") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	c03()
{
	mkdir src/c03 user_output/c03
	print_current_part "c03"
	cp -r $src_path/c03/ex* ./src/c03  # copying src files
	
	check_c03_ex00
	check_c03_ex01
	check_c03_ex02
	check_c03_ex03
	check_c03_ex04
	check_c03_ex05
	rm -rf $current_dir/user_output/c03 $current_dir/src/c03
	printf "${GREEN}\nAll c03 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c03 tests are done.\n" >> DEEPTHOUGHT
}
