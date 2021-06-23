#!/bin/bash

function	check_c04_ex00() {
	usr_out=$current_dir/user_output/c04/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex00/ft_strlen.c" ; then
		msg_nothing_turned_in "ex00/ft_strlen.c"
		return
	fi
	check_norme "src/c04/ex00/ft_strlen.c"
	check_prototype "int" "ft_strlen" "src/c04/ex00/ft_strlen.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex00/main.c ./src/c04/ex00/ft_strlen.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex00/ft_strlen.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "10") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex00/ft_strlen.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "12") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex00/ft_strlen.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "36") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	local USER_OUTPUT=$(./user.out "")
	if [ "$USER_OUTPUT" == "ok" ] ; then
		printf "${uni_success}ex00/ft_strlen.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c04_ex01() {
	usr_out=$current_dir/user_output/c04/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex01/ft_putstr.c" ; then
		msg_nothing_turned_in "ex01/ft_putstr.c"
		return
	fi
	check_norme "src/c04/ex01/ft_putstr.c"
	check_prototype "void" "ft_putstr" "src/c04/ex01/ft_putstr.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex01/main.c ./src/c04/ex01/ft_putstr.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex01/ft_putstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST") <(echo "$USER_OUTPUT") >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex01/ft_putstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST") <(echo "$USER_OUTPUT") >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="So long, and thanks for all the fish"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex01/ft_putstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST") <(echo "$USER_OUTPUT") >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	local TEST="a hot cup of coffe is really enjoyable when your house is about to get destroyed by workers, especially if they were going to build a highway right on its location."
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex01/ft_putstr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "$TEST") <(echo "$USER_OUTPUT") >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c04_ex02() {
	usr_out=$current_dir/user_output/c04/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex02/ft_putnbr.c" ; then
		msg_nothing_turned_in "ex02/ft_putnbr.c"
		return
	fi
	check_norme "src/c04/ex02/ft_putnbr.c"
	check_prototype "void" "ft_putnbr" "src/c04/ex02/ft_putnbr.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex02/main.c ./src/c04/ex02/ft_putnbr.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST="0123456789"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "123456789" ] ; then
		printf "${uni_success}ex02/ft_putnbr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0123456789") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="hey i'm dave"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "0" ] ; then
		printf "${uni_success}ex02/ft_putnbr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="2147483647"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "$TEST" ] ; then
		printf "${uni_success}ex02/ft_putnbr.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "${RED}Your ft_putstr does not work with INT_MAX\n${NOCOLOR}"
		diff <(echo "$TEST") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "Your ft_putstr does not work with INT_MAX\n" >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c04_ex03() {
	usr_out=$current_dir/user_output/c04/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c04/ex03/ft_atoi.c" ; then
		msg_nothing_turned_in "ex03/ft_atoi.c"
		return
	fi
	check_norme "src/c04/ex03/ft_atoi.c"
	check_prototype "int" "ft_atoi" "src/c04/ex03/ft_atoi.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c04/ex03/main.c ./src/c04/ex03/ft_atoi.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_atoi.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	local TEST=" ---+-+-0123456789"
	local USER_OUTPUT=$(./user.out "$TEST")
	if [ "$USER_OUTPUT" == "-123456789" ] ; then
		printf "${uni_success}ex03/ft_atoi.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_atoi.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "-123456789") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	local TEST="+-+-427425"
	local USER_OUTPUT=$(./user.out "$TEST" "5")
	if [ "$USER_OUTPUT" == "427425" ] ; then
		printf "${uni_success}ex03/ft_atoi.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_atoi.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "427425") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	local TEST="---42yd74"
	local USER_OUTPUT=$(./user.out "$TEST" "28")
	if [ "$USER_OUTPUT" == "-42" ] ; then
		printf "${uni_success}ex03/ft_atoi.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_atoi.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "-42") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	local TEST="  +2147483647"
	local USER_OUTPUT=$(./user.out "$TEST" "28")
	if [ "$USER_OUTPUT" == "2147483647" ] ; then
		printf "${uni_success}ex03/ft_atoi.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_atoi.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "${RED}Your ft_atoi does not work with INT_MAX\n${NOCOLO}"
		diff <(echo "2147483647") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\nYour ft_atoi does not work with INT_MAX\n" >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 5\n" >> $current_dir/DEEPTHOUGHT
	local TEST="  -+-2147483648"
	local USER_OUTPUT=$(./user.out "$TEST" "28")
	if [ "$USER_OUTPUT" == "-2147483648" ] ; then
		printf "${uni_success}ex03/ft_atoi.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_atoi.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "${RED}Your ft_atoi does not work with INT_MIN\n${NOCOLO}"
		diff <(echo "2147483647") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\nYour ft_atoi does not work with INT_MIN\n" >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c04_ex04() {
	printf " ${YELLOW}${UNDERLINE}ex04:\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	printf "${RED}This exercise is not supported yet.${NOCOLOR}\n"
	printf "\nThis exercise is not supported yet.\n\n" >> DEEPTHOUGHT
}

function	check_c04_ex05() {
	printf " ${YELLOW}${UNDERLINE}ex05:\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	printf "${RED}This exercise is not supported yet.${NOCOLOR}\n"
	printf "\nThis exercise is not supported yet.\n\n" >> DEEPTHOUGHT
	}

function	c04() {
	mkdir src/c04 user_output/c04
	print_current_part "c04"
	cp -r $src_path/c04/ex* ./src/c04  # copying src files
	
	check_c04_ex00
	check_c04_ex01
	check_c04_ex02
	check_c04_ex03
	check_c04_ex04
	check_c04_ex05
	rm -rf $current_dir/user_output/c04 $current_dir/src/c04
	printf "${GREEN}\nAll c04 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c04 tests are done.\n" >> DEEPTHOUGHT
}
