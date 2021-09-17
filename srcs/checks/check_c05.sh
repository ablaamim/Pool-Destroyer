#!/bin/bash

function	check_c05_ex00() {
	usr_out=$current_dir/user_output/c05/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c05/ex00/ft_iterative_factorial.c" ; then
		msg_nothing_turned_in "ex00/ft_iterative_factorial.c"
		return
	fi
	check_norme "src/c05/ex00/ft_iterative_factorial.c"
	check_prototype "int" "ft_iterative_factorial" "src/c05/ex00/ft_iterative_factorial.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c05/ex00/main.c ./src/c05/ex00/ft_iterative_factorial.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_iterative_factorial.c${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local i=0;
	while [ $i -le 12 ]; do
		local res=1
		local j=1
		printf "> test $i\n" >> $current_dir/DEEPTHOUGHT
		while [ $j -le $i ]; do
			res=$((res*j))
			(( j++ ))
		done
		local USER_OUTPUT=$(./user.out "$i")
		if [ "$USER_OUTPUT" == "$res" ] ; then
			printf "${uni_success}ex00/ft_iterative_factorial.c${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex00/ft_iterative_factorial.c${diff_ko}${NOCOLOR}\n"
			diff <(echo "$res") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		(( i++ ))
	done
	printf "> test 13\n" >> $current_dir/DEEPTHOUGHT
	local USER_OUTPUT=$(./user.out "-2")
	if [ "$USER_OUTPUT" == "0" ] ; then
		printf "${uni_success}ex00/ft_iterative_factorial.c${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_iterative_factorial.c${diff_ko}${NOCOLOR}\n"
		printf "${RED}Your function does not work with negative numbers\n${NOCOLOR}"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\nYour function does not work with negative numbers\n" >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c05_ex01() {
	usr_out=$current_dir/user_output/c05/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c05/ex01/ft_recursive_factorial.c" ; then
		msg_nothing_turned_in "ex01/ft_recursive_factorial.c"
		return
	fi
	check_norme "src/c05/ex01/ft_recursive_factorial.c"
	check_prototype "int" "ft_recursive_factorial" "src/c05/ex01/ft_recursive_factorial.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c05/ex01/main.c ./src/c05/ex01/ft_recursive_factorial.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_recursive_factorial.c${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local i=0;
	while [ $i -le 12 ]; do
		local res=1
		local j=1
		printf "> test $i\n" >> $current_dir/DEEPTHOUGHT
		while [ $j -le $i ]; do
			res=$((res*j))
			(( j++ ))
		done
		local USER_OUTPUT=$(./user.out "$i")
		if [ "$USER_OUTPUT" == "$res" ] ; then
			printf "${uni_success}ex01/ft_recursive_factorial.c${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex01/ft_recursive_factorial.c${diff_ko}${NOCOLOR}\n"
			diff <(echo "$res") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		(( i++ ))
	done
	printf "> test 13\n" >> $current_dir/DEEPTHOUGHT
	local USER_OUTPUT=$(./user.out "-2")
	if [ "$USER_OUTPUT" == "0" ] ; then
		printf "${uni_success}ex01/ft_recursive_factorial.c${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex01/ft_recursive_factorial.c${diff_ko}${NOCOLOR}\n"
		printf "${RED}Your function does not work with negative numbers\n${NOCOLOR}"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\nYour function does not work with negative numbers\n" >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c05_ex02() {
	usr_out=$current_dir/user_output/c05/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c05/ex02/ft_iterative_power.c" ; then
		msg_nothing_turned_in "ex02/ft_iterative_power.c"
		return
	fi
	check_norme "src/c05/ex02/ft_iterative_power.c"
	check_prototype "int" "ft_iterative_power" "src/c05/ex02/ft_iterative_power.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c05/ex02/main.c ./src/c05/ex02/ft_iterative_power.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_iterative_power.c\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local i=-1;
	local j=1
	while [ $i -le 8 ]; do
		printf "> test $i\n" >> $current_dir/DEEPTHOUGHT
		local res=$(($i ** $j))
		local USER_OUTPUT=$(./user.out "$i" "$j")
		if [ "$USER_OUTPUT" == "$res" ] ; then
			printf "${uni_success}ex02/ft_iterative_power.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex02/ft_iterative_power.c\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$res") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		(( i++ ))
		(( j++ ))
	done
	printf "> test 9\n" >> $current_dir/DEEPTHOUGHT
	local USER_OUTPUT=$(./user.out "-2" "-45367129")
	if [ "$USER_OUTPUT" == "0" ] ; then
		printf "${uni_success}ex02/ft_iterative_power.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/ft_iterative_power.c\t${diff_ko}${NOCOLOR}\n"
		printf "${RED}Your function does not work with negative numbers\n${NOCOLOR}"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\nYour function does not work with negative numbers\n" >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c05_ex03() {
	usr_out=$current_dir/user_output/c05/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c05/ex03/ft_recursive_power.c" ; then
		msg_nothing_turned_in "ex03/ft_recursive_power.c"
		return
	fi
	check_norme "src/c05/ex03/ft_recursive_power.c"
	check_prototype "int" "ft_recursive_power" "src/c05/ex03/ft_recursive_power.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c05/ex03/main.c ./src/c05/ex03/ft_recursive_power.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_recursive_power.c\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local i=-1;
	local j=1
	while [ $i -le 8 ]; do
		printf "> test $i\n" >> $current_dir/DEEPTHOUGHT
		local res=$(($i ** $j))
		local USER_OUTPUT=$(./user.out "$i" "$j")
		if [ "$USER_OUTPUT" == "$res" ] ; then
			printf "${uni_success}ex03/ft_recursive_power.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex03/ft_recursive_power.c\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$res") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		(( i++ ))
		(( j++ ))
	done
	printf "> test 9\n" >> $current_dir/DEEPTHOUGHT
	local USER_OUTPUT=$(./user.out "-2" "-45367129")
	if [ "$USER_OUTPUT" == "0" ] ; then
		printf "${uni_success}ex03/ft_recursive_power.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex03/ft_recursive_power.c\t${diff_ko}${NOCOLOR}\n"
		printf "${RED}Your function does not work with negative numbers\n${NOCOLOR}"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\nYour function does not work with negative numbers\n" >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c05_ex04() {
	usr_out=$current_dir/user_output/c05/ex04
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex04:\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c05/ex04/ft_fibonacci.c" ; then
		msg_nothing_turned_in "ex04/ft_fibonacci.c"
		return
	fi
	check_norme "src/c05/ex04/ft_fibonacci.c"
	check_prototype "int" "ft_fibonacci" "src/c05/ex04/ft_fibonacci.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c05/ex04/main.c ./src/c05/ex04/ft_fibonacci.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex04/ft_fibonacci.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local i=0
	local j=0
	local RES=(0 3 21 144 987 6765 46368 317811 2178309)
	while [ $i -le 8 ]; do
		printf "> test $i\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "$j")
		if [ "$USER_OUTPUT" == "${RES[$i]}" ] ; then
			printf "${uni_success}ex04/ft_fibonacci.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex04/ft_fibonacci.c\t\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$res") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		(( i++ ))
		j=$((j+4))
	done
	printf "> test 9\n" >> $current_dir/DEEPTHOUGHT
	local USER_OUTPUT=$(./user.out "-2")
	if [ "$USER_OUTPUT" == "-1" ] ; then
		printf "${uni_success}ex04/ft_fibonacci.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex04/ft_fibonacci.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "${RED}Your function does not work with negative numbers\n${NOCOLOR}"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\nYour function does not work with negative numbers\n" >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c05_ex05() {
	usr_out=$current_dir/user_output/c05/ex05
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex05:\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c05/ex05/ft_sqrt.c" ; then
		msg_nothing_turned_in "ex05/ft_sqrt.c"
		return
	fi
	check_norme "src/c05/ex05/ft_sqrt.c"
	check_prototype "int" "ft_sqrt" "src/c05/ex05/ft_sqrt.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c05/ex05/main.c ./src/c05/ex05/ft_sqrt.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex05/ft_sqrt.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local i=0
	local TEST=(0 16 789 144 100 -12 622521 2086479684)
	local RES=(0 4 0 12 10 0 789 45678)
	while [ $i -le 7 ]; do
		printf "> test $i\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "${TEST[$i]}")
		if [ "$USER_OUTPUT" == "${RES[$i]}" ] ; then
			printf "${uni_success}ex05/ft_sqrt.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex05/ft_sqrt.c\t\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "${RES[$i]}") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		(( i++ ))
	done
	cd $current_dir
}

function	check_c05_ex06() {
	usr_out=$current_dir/user_output/c05/ex06
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex06:\n${NOCOLOR}"
	printf "= ex06 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c05/ex06/ft_is_prime.c" ; then
		msg_nothing_turned_in "ex06/ft_is_prime.c"
		return
	fi
	check_norme "src/c05/ex06/ft_is_prime.c"
	check_prototype "int" "ft_is_prime" "src/c05/ex06/ft_is_prime.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c05/ex06/main.c ./src/c05/ex06/ft_is_prime.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_is_prime.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local i=0
	local TEST=(0 1 2 144 37 -12 622517 2147483647 13 777777799)
	local RES=(0 0 1 0 1 0 0 1 1 1)
	while [ $i -le 9 ]; do
		printf "> test $i\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "${TEST[$i]}")
		if [ "$USER_OUTPUT" == "${RES[$i]}" ] ; then
			printf "${uni_success}ex06/ft_is_prime.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex06/ft_is_prime.c\t\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "${RES[$i]}") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		(( i++ ))
	done
	cd $current_dir
}

function	check_c05_ex07() {
	usr_out=$current_dir/user_output/c05/ex07
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex07:\n${NOCOLOR}"
	printf "= ex07 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c05/ex07/ft_find_next_prime.c" ; then
		msg_nothing_turned_in "ex07/ft_find_next_prime.c"
		return
	fi
	check_norme "src/c05/ex07/ft_find_next_prime.c"
	check_prototype "int" "ft_find_next_prime" "src/c05/ex07/ft_find_next_prime.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c05/ex07/main.c ./src/c05/ex07/ft_find_next_prime.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex07/ft_find_next_prime.c\t${diff_ko}${NOCOLOR}\n"
		printf "diff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local i=0
	local TEST=(0 2 144 34 -12 622517 2147483646 13 777777777)
	local RES=(2 2 149 37 2 622519 2147483647 13 777777799)
	while [ $i -le 8 ]; do
		printf "> test $i\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "${TEST[$i]}")
		if [ "$USER_OUTPUT" == "${RES[$i]}" ] ; then
			printf "${uni_success}ex07/ft_find_next_prime.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex07/ft_find_next_prime.c\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "${RES[$i]}") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		(( i++ ))
	done
	cd $current_dir
}

function	check_c05_ex08() {
	printf " ${YELLOW}${UNDERLINE}ex08:\n${NOCOLOR}"
	printf "= ex08 =\n==========================================\n" >> DEEPTHOUGHT
	printf "${RED}This exercise is not supported yet.${NOCOLOR}\n"
	printf "\nThis exercise is not supported yet.\n\n" >> DEEPTHOUGHT
}

function	c05() {
	mkdir src/c05 user_output/c05
	print_current_part "c05"
	cp -r $src_path/c05/ex* ./src/c05  # copying src files

	check_c05_ex00
	check_c05_ex01
	check_c05_ex02
	check_c05_ex03
	check_c05_ex04
	check_c05_ex05
	check_c05_ex06
	check_c05_ex07
	check_c05_ex08

	rm -rf $current_dir/user_output/c05 $current_dir/src/c05
	printf "${GREEN}\nAll c05 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c05 tests are done.\n" >> DEEPTHOUGHT
}
