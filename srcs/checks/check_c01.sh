# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check_c01.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ablaamim <ablaamim@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/17 18:52:17 by ablaamim          #+#    #+#              #
#    Updated: 2021/09/26 18:01:52 by ablaamim         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

function	check_c01_ex00()
{
	usr_out=$current_dir/user_output/c01/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c01/ex00/ft_ft.c" ; then
		msg_nothing_turned_in "ex00/ft_ft.c"
		return
	fi
	check_norme "src/c01/ex00/ft_ft.c"
	check_prototype "void" "ft_ft" "src/c01/ex00/ft_ft.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c01/ex00/main.c ./src/c01/ex00/ft_ft.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_ft.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$USER_OUTPUT" != "42" ] ; then
		printf "${uni_fail}ex00/ft_ft.c\t\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex00/ft_ft.c\t\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c01_ex01()
{
	usr_out=$current_dir/user_output/c01/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c01/ex01/ft_ultimate_ft.c" ; then
		msg_nothing_turned_in "ex01/ft_ultimate_ft.c"
		return
	fi
	check_norme "src/c01/ex01/ft_ultimate_ft.c"
	check_prototype "void" "ft_ultimate_ft" "src/c01/ex01/ft_ultimate_ft.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c01/ex01/main.c ./src/c01/ex01/ft_ultimate_ft.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_ultimate_ft.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$USER_OUTPUT" != "42" ] ; then
		printf "${uni_fail}ex01/ft_ultimate_ft.c\t${diff_ko}${NOCOLOR}\n"
		echo $USER_OUTPUT >> DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex01/ft_ultimate_ft.c\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c01_ex02()
{
	usr_out=$current_dir/user_output/c01/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c01/ex02/ft_swap.c" ; then
		msg_nothing_turned_in "ex02/ft_swap.c"
		return
	fi
	check_norme "src/c01/ex02/ft_swap.c"
	check_prototype "void" "ft_swap" "src/c01/ex02/ft_swap.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c01/ex02/main.c ./src/c01/ex02/ft_swap.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_swap.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="a=42, b=13"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex02/ft_swap.c\t\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/ft_swap\t\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c01_ex03()
{
	usr_out=$current_dir/user_output/c01/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c01/ex03/ft_div_mod.c" ; then
		msg_nothing_turned_in "ex03/ft_div_mod.c"
		return
	fi
	check_norme "src/c01/ex03/ft_div_mod.c"
	check_prototype "void" "ft_div_mod" "src/c01/ex03/ft_div_mod.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c01/ex03/main.c ./src/c01/ex03/ft_div_mod.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_div_mod.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	local NUMBER=(42 13 1337 64 97 -42 -2147483648 -1337 2147483647 -4 6473287 -328 612567 106 0)
	local i=0
	local j=0
	while [ $i -le 8 ] && [ $j -lt 14 ]
	do
		local DIV=$((NUMBER[$j] / NUMBER[$j+1]))
		local MOD=$((NUMBER[$j] % NUMBER[$j+1]))
		local RES="div=$DIV, mod=$MOD"
		local USER_OUTPUT=$(./user.out ${NUMBER[$j]} ${NUMBER[$j+1]})
		#		echo "res: $RES"
		#		echo  "div/mod ${NUMBER[$j]} ${NUMBER[$j+1]}"
		printf "> test $i with a=${NUMBER[$j]} and b=${NUMBER[$j+1]}\n" >> $current_dir/DEEPTHOUGHT
		if [ "$USER_OUTPUT" == "$RES" ] ; then
			printf "${uni_success}ex03/ft_div_mod.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex03/ft_div_mod.c\t\t${diff_ko}${NOCOLOR}\n"
			printf "$USER_OUTPUT\n"
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((j+=2))
		((i++))
	done	
	cd $current_dir
}

function	check_c01_ex04()
{
	usr_out=$current_dir/user_output/c01/ex04
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex04:\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c01/ex04/ft_ultimate_div_mod.c" ; then
		msg_nothing_turned_in "ex04/ft_ultimate_div_mod.c"
		return
	fi
	check_norme "src/c01/ex04/ft_ultimate_div_mod.c"
	check_prototype "void" "ft_ultimate_div_mod" "src/c01/ex04/ft_ultimate_div_mod.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c01/ex04/main.c ./src/c01/ex04/ft_ultimate_div_mod.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex04/ft_ultimate_div_mod.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	local NUMBER=(42 13 1337 64 97 -42 -2147483648 -1337 2147483647 -4 6473287 -328 612567 106)
	local i=0
	local j=0
	while [ $i -le 8 ] && [ $j -lt 14 ]
	do
		local DIV=$((NUMBER[$j] / NUMBER[$j+1]))
		local MOD=$((NUMBER[$j] % NUMBER[$j+1]))
		local RES="div=$DIV, mod=$MOD"
		local USER_OUTPUT=$(./user.out ${NUMBER[$j]} ${NUMBER[$j+1]})
		#		echo "res: $RES"
		#		echo  "div/mod ${NUMBER[$j]} ${NUMBER[$j+1]}"
		printf "> test $i with a=${NUMBER[$j]} and b=${NUMBER[$j+1]}\n" >> $current_dir/DEEPTHOUGHT
		if [ "$USER_OUTPUT" == "$RES" ] ; then
			printf "${uni_success}ex04/ft_ultimate_div_mod.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex04/ft_ultimate_div_mod.c\t${diff_ko}${NOCOLOR}\n"
			printf "$USER_OUTPUT\n"
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((j+=2))
		((i++))
	done	
	cd $current_dir
}

function	check_c01_ex05()
{
	usr_out=$current_dir/user_output/c01/ex05
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex05:\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c01/ex05/ft_putstr.c" ; then
		msg_nothing_turned_in "ex05/ft_putstr.c"
		return
	fi
	check_norme "src/c01/ex05/ft_putstr.c"
	check_prototype "void" "ft_putstr" "src/c01/ex05/ft_putstr.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c01/ex05/main.c ./src/c01/ex05/ft_putstr.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex05/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="!\"#\$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\`abcdefghijklmnopqrstuvwxyz{|}~"
	cd $usr_out
	local USER_OUTPUT=$(./user.out $RES)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex05/ft_putstr.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/ft_putstr\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c01_ex06()
{
	usr_out=$current_dir/user_output/c01/ex06
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex06:\n${NOCOLOR}"
	printf "= ex06 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c01/ex06/ft_strlen.c" ; then
		msg_nothing_turned_in "ex06/ft_strlen.c"
		return
	fi
	check_norme "src/c01/ex06/ft_strlen.c"
	check_prototype "int" "ft_strlen" "src/c01/ex06/ft_strlen.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c01/ex06/main.c ./src/c01/ex06/ft_strlen.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local i=1
	while [ $i -le 8 ]
	do
		local FILE=$current_dir/tests/c01/ex06/files/$i
		local CAT=$(cat $FILE | tr -d \\n)
		local RES=$(echo $CAT | wc -c)
		local USER_OUTPUT=$(./user.out "$CAT")
		printf "> test $i\n" >> $current_dir/DEEPTHOUGHT
		if [ $USER_OUTPUT -eq $RES ] ; then
			printf "${uni_success}ex06/ft_strlen.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex06/ft_strlen.c\t\t${diff_ko}${NOCOLOR}\n"
			diff <(echo $RES) <(echo $USER_OUTPUT)
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((j+=2))
		((i++))
	done
	cd $current_dir
}

function	check_c01_ex07()
{
	usr_out=$current_dir/user_output/c01/ex07
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex07:\n${NOCOLOR}"
	printf "= ex07 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c01/ex07/ft_rev_int_tab.c" ; then
		msg_nothing_turned_in "ex07/ft_rev_int_tab.c"
		return
	fi
	check_norme "src/c01/ex07/ft_rev_int_tab.c"
	check_prototype "void" "ft_rev_int_tab" "src/c01/ex07/ft_rev_int_tab.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c01/ex07/main.c ./src/c01/ex07/ft_rev_int_tab.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex07/ft_rev_int_tab.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$USER_OUTPUT" == "0987654321" ] ; then
		printf "${uni_success}ex07/ft_rev_int_tab.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex07/ft_rev_int_tab.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0987654321") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c01_ex08()
{
	usr_out=$current_dir/user_output/c01/ex08
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex08:\n${NOCOLOR}"
	printf "= ex08 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c01/ex08/ft_sort_int_tab.c" ; then
		msg_nothing_turned_in "ex08/ft_sort_int_tab.c"
		return
	fi
	check_norme "src/c01/ex08/ft_sort_int_tab.c"
	check_prototype "void" "ft_sort_int_tab" "src/c01/ex08/ft_sort_int_tab.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c01/ex08/main.c ./src/c01/ex08/ft_sort_int_tab.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex08/ft_sort_int_tab.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$USER_OUTPUT" == "0123456789" ] ; then
		printf "${uni_success}ex08/ft_sort_int_tab.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex08/ft_sort_int_tab.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0123456789") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	c01()
{
	mkdir src/c01 user_output/c01
	print_current_part "c01"
	cp -r $src_path/c01/ex* ./src/c01  # copying src files

	check_c01_ex00
	check_c01_ex01
	check_c01_ex02
	check_c01_ex03
	check_c01_ex04
	check_c01_ex05
	check_c01_ex06
	check_c01_ex07
	check_c01_ex08
	rm -rf $current_dir/user_output/c01 $current_dir/src/c01
	printf "${GREEN}\nAll c01 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c01 tests are done.\n" >> DEEPTHOUGHT
}
