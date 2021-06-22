# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check_c00.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/21 18:59:06 by alaamimi          #+#    #+#              #
#    Updated: 2021/06/21 18:59:09 by alaamimi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

function	check_c00_ex00() {
	usr_out=$current_dir/user_output/c00/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex00/ft_putchar.c" ; then
		msg_nothing_turned_in "ex00/ft_putchar.c"
		return
	fi
#	PROTOTYPE=$(grep -E "^$TYPE"$'\t{1,}'"$FUNC_NAME"'\([^)]+\)' src/c00/ex00/ft_putchar.c)
	check_norme "src/c00/ex00/ft_putchar.c"
	check_prototype "void" "ft_putchar" "src/c00/ex00/ft_putchar.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex00/main.c ./src/c00/ex00/ft_putchar.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_putchar.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES=" !\"#\$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\`abcdefghijklmnopqrstuvwxyz{|}~"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex00/ft_putchar.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex00/ft_putchar.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c00_ex01() {
	usr_out=$current_dir/user_output/c00/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex01/ft_print_alphabet.c" ; then
		msg_nothing_turned_in "ex01/ft_print_alphabet.c"
		return
	fi
	check_norme "src/c00/ex01/ft_print_alphabet.c"
	check_prototype "void" "ft_print_alphabet" "src/c00/ex01/ft_print_alphabet.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex01/main.c ./src/c00/ex01/ft_print_alphabet.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_print_alphabet.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="abcdefghijklmnopqrstuvwxyz"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex01/ft_print_alphabet.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex01/ft_print_alphabet\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c00_ex02() {
	usr_out=$current_dir/user_output/c00/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex02/ft_print_reverse_alphabet.c" ; then
		msg_nothing_turned_in "ex02/ft_print_reverse_alphabet.c"
		return
	fi
	check_norme "src/c00/ex02/ft_print_reverse_alphabet.c"
	check_prototype "void" "ft_print_reverse_alphabet" "src/c00/ex02/ft_print_reverse_alphabet.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex02/main.c ./src/c00/ex02/ft_print_reverse_alphabet.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_print_reverse_alphabet.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="zyxwvutsrqponmlkjihgfedcba"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex02/ft_print_reverse_alphabet.c${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/ft_print_reverse_alphabet${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c00_ex03() {
	usr_out=$current_dir/user_output/c00/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex03/ft_print_numbers.c" ; then
		msg_nothing_turned_in "ex03/ft_print_numbers.c"
		return
	fi
	check_norme "src/c00/ex03/ft_print_numbers.c"
	check_prototype "void" "ft_print_numbers" "src/c00/ex03/ft_print_numbers.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex03/main.c ./src/c00/ex03/ft_print_numbers.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_print_numbers.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="0123456789"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex03/ft_print_numbers.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/ft_print_numbers\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c00_ex04() {
	usr_out=$current_dir/user_output/c00/ex04
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex04:\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex04/ft_is_negative.c" ; then
		msg_nothing_turned_in "ex04/ft_is_negative.c"
		return
	fi
	check_norme "src/c00/ex04/ft_is_negative.c"
	check_prototype "void" "ft_is_negative" "src/c00/ex04/ft_is_negative.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex04/main.c ./src/c00/ex04/ft_is_negative.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex04/ft_is_negative.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="0123456789"
	cd $usr_out
	local NUMBER=(42 2147483646 1337 -42 -2147483647 -1337 6473287 -328 612567)
	local i=0
	while [ $i -le 8 ]
	do
		local USER_OUTPUT=$(./user.out ${NUMBER[$i]})
		printf "> test $i with n=${NUMBER[i]}\n" >> $current_dir/DEEPTHOUGHT
		if [ "$USER_OUTPUT" == "P" ] && [ ${NUMBER[i]} -gt 0 ]; then
			printf "${uni_success}ex04/ft_is_negative.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		elif [ "$USER_OUTPUT" == "N" ] && [ ${NUMBER[i]} -lt 0 ] ; then
			printf "${uni_success}ex04/ft_is_negative.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex04/ft_is_negative.c\t${diff_ko}${NOCOLOR}\n"
			printf "$USER_OUTPUT\n"
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((i++))
	done	
	cd $current_dir
}

function	check_c00_ex05() {
	usr_out=$current_dir/user_output/c00/ex05
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex05:\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex05/ft_print_comb.c" ; then
		msg_nothing_turned_in "ex05/ft_print_comb.c"
		return
	fi
	check_norme "src/c00/ex05/ft_print_comb.c"
	check_prototype "void" "ft_print_comb" "src/c00/ex05/ft_print_comb.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex05/main.c ./src/c00/ex05/ft_print_comb.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex05/ft_print_comb.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="012, 013, 014, 015, 016, 017, 018, 019, 023, 024, 025, 026, 027, 028, 029, 034, 035, 036, 037, 038, 039, 045, 046, 047, 048, 049, 056, 057, 058, 059, 067, 068, 069, 078, 079, 089, 123, 124, 125, 126, 127, 128, 129, 134, 135, 136, 137, 138, 139, 145, 146, 147, 148, 149, 156, 157, 158, 159, 167, 168, 169, 178, 179, 189, 234, 235, 236, 237, 238, 239, 245, 246, 247, 248, 249, 256, 257, 258, 259, 267, 268, 269, 278, 279, 289, 345, 346, 347, 348, 349, 356, 357, 358, 359, 367, 368, 369, 378, 379, 389, 456, 457, 458, 459, 467, 468, 469, 478, 479, 489, 567, 568, 569, 578, 579, 589, 678, 679, 689, 789"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex05/ft_print_comb.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/ft_print_comb\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c00_ex06() {
	usr_out=$current_dir/user_output/c00/ex06
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex06:\n${NOCOLOR}"
	printf "= ex06 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex06/ft_print_comb2.c" ; then
		msg_nothing_turned_in "ex06/ft_print_comb2.c"
		return
	fi
	check_norme "src/c00/ex06/ft_print_comb2.c"
	check_prototype "void" "ft_print_comb2" "src/c00/ex06/ft_print_comb2.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex06/main.c ./src/c00/ex06/ft_print_comb2.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_print_comb2.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c00/ex06/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex06/ft_print_comb2.c\t\t${diff_ko}${NOCOLOR}\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex06/ft_print_comb2\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c00_ex07() {
	usr_out=$current_dir/user_output/c00/ex07
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex07:\n${NOCOLOR}"
	printf "= ex07 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex07/ft_putnbr.c" ; then
		msg_nothing_turned_in "ex07/ft_putnbr.c"
		return
	fi
	check_norme "src/c00/ex07/ft_putnbr.c"
	check_prototype "void" "ft_putnbr" "src/c00/ex07/ft_putnbr.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex07/main.c ./src/c00/ex07/ft_putnbr.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex07/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local NUMBER=(42 2147483647 1337 -42 -2147483647 -1337 6473287 -328 612567)
	local i=0
	while [ $i -le 8 ]
	do
		local USER_OUTPUT=$(./user.out ${NUMBER[$i]})
		printf "> test $i with nb=${NUMBER[i]}\n" >> $current_dir/DEEPTHOUGHT
		if [ "$USER_OUTPUT" == "${NUMBER[i]}" ] ; then
			printf "${uni_success}ex07/ft_putnbr.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex07/ft_putnbr.c\t\t${diff_ko}${NOCOLOR}\n"
			printf "$USER_OUTPUT\n"
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((i++))
	done	
	cd $current_dir
}

function	check_c00_ex08() {
	printf " ${YELLOW}${UNDERLINE}ex07:\n${NOCOLOR}"
	printf "= ex07 =\n==========================================\n" >> DEEPTHOUGHT
	printf "${RED}This exercise is not supported yet.${NOCOLOR}\n"
	printf "\nThis exercise is not supported yet.\n\n" >> DEEPTHOUGHT
}

function	c00() {
	mkdir src/c00 user_output/c00
	print_current_part "c00"
	cp -r $src_path/c00/ex* ./src/c00  # copying src files
	
	check_c00_ex00
	check_c00_ex01
	check_c00_ex02
	check_c00_ex03
	check_c00_ex04
	check_c00_ex05
	check_c00_ex06
	check_c00_ex07
	check_c00_ex08
	rm -rf $current_dir/user_output/c00 $current_dir/src/c00
	printf "${GREEN}\nAll c00 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c00 tests are done.\n\n" >> DEEPTHOUGHT
}
