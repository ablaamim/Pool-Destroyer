#!/bin/bash

function	check_c02_ex00() {
	usr_out=$current_dir/user_output/c02/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex00/ft_strcpy.c" ; then
		msg_nothing_turned_in "ex00/ft_strcpy.c"
		return
	fi
	check_norme "src/c02/ex00/ft_strcpy.c"
	check_prototype "char" "\*ft_strcpy" "src/c02/ex00/ft_strcpy.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex00/main.c ./src/c02/ex00/ft_strcpy.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_strcpy.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	local RES="is heisenberg the kingpin? is heisenberg the kingpin?"
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex00/ft_strcpy.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strcpy.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c02_ex01() {
	usr_out=$current_dir/user_output/c02/ex01
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex01/ft_strncpy.c" ; then
		msg_nothing_turned_in "ex01/ft_strncpy.c"
		return
	fi
	check_norme "src/c02/ex01/ft_strncpy.c"
	check_prototype "char" "\*ft_strncpy" "src/c02/ex01/ft_strncpy.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex01/main.c ./src/c02/ex01/ft_strncpy.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_strncpy.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	local RES="is heisenberg the kingpin? is heisenberg the kingpin? 26 26"
	if [ "$USER_OUTPUT" != "$RES" ] ; then
		printf "${uni_fail}ex01/ft_strncpy.c\t\t${diff_ko}${NOCOLOR}\n"
		echo $USER_OUTPUT >> DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex01/ft_strncpy.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c02_ex02() {
	usr_out=$current_dir/user_output/c02/ex02
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex02/ft_str_is_alpha.c" ; then
		msg_nothing_turned_in "ex02/ft_str_is_alpha.c"
		return
	fi
	check_norme "src/c02/ex02/ft_str_is_alpha.c"
	check_prototype "int" "ft_str_is_alpha" "src/c02/ex02/ft_str_is_alpha.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex02/main.c ./src/c02/ex02/ft_str_is_alpha.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_str_is_alpha.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local RES_ALPHA="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	local RES_NUM="0123456789"
	local RES_SPECIAL="!\"#\$%&'()*+,-./:;<=>?@[\\]^_\`{|}~"
	local RES_HYBRID="!\$'(*-0249;<?@ABCD[Z_abfhjlqsuwz{|"
	local USER_ALPHA=$(./user.out "$RES_ALPHA")
	local USER_NUM=$(./user.out "$RES_NUM")
	local USER_SPECIAL=$(./user.out "$RES_SPECIAL")
	local USER_HYBRID=$(./user.out "$RES_HYBRID")
	local USER_EMPTY=$(./user.out "")
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_ALPHA" != "1" ]; then
		printf "${uni_fail}ex02/ft_str_is_alpha.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "1") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/ft_str_is_alpha.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_NUM" != "0" ]; then
		printf "${uni_fail}ex02/ft_str_is_alpha.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/ft_str_is_alpha.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_SPECIAL" != "0" ]; then
		printf "${uni_fail}ex02/ft_str_is_alpha.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/ft_str_is_alpha.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_HYBRID" != "0" ]; then
		printf "${uni_fail}ex02/ft_str_is_alpha.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/ft_str_is_alpha.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 5\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_EMPTY" != "1" ]; then
		printf "${uni_fail}ex02/ft_str_is_alpha.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "1") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/ft_str_is_alpha.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c02_ex03() {
	usr_out=$current_dir/user_output/c02/ex03
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex03/ft_str_is_numeric.c" ; then
		msg_nothing_turned_in "ex03/ft_str_is_numeric.c"
		return
	fi
	check_norme "src/c02/ex03/ft_str_is_numeric.c"
	check_prototype "int" "ft_str_is_numeric" "src/c02/ex03/ft_str_is_numeric.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex03/main.c ./src/c02/ex03/ft_str_is_numeric.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_str_is_numeric.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local RES_ALPHA="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	local RES_NUM="0123456789"
	local RES_SPECIAL="!\"#\$%&'()*+,-./:;<=>?@[\\]^_\`{|}~"
	local RES_HYBRID="!\$'(*-0249;<?@ABCD[Z_abfhjlqsuwz{|"
	local USER_ALPHA=$(./user.out "$RES_ALPHA")
	local USER_NUM=$(./user.out "$RES_NUM")
	local USER_SPECIAL=$(./user.out "$RES_SPECIAL")
	local USER_HYBRID=$(./user.out "$RES_HYBRID")
	local USER_EMPTY=$(./user.out "")
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_ALPHA" != "0" ]; then
		printf "${uni_fail}ex03/ft_str_is_numeric.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/ft_str_is_numeric.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_NUM" != "1" ]; then
		printf "${uni_fail}ex03/ft_str_is_numeric.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "1") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/ft_str_is_numeric.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_SPECIAL" != "0" ]; then
		printf "${uni_fail}ex03/ft_str_is_numeric.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/ft_str_is_numeric.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_HYBRID" != "0" ]; then
		printf "${uni_fail}ex03/ft_str_is_numeric.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/ft_str_is_numeric.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 5\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_EMPTY" != "1" ]; then
		printf "${uni_fail}ex03/ft_str_is_numeric.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "1") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/ft_str_is_numeric.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c02_ex04() {
	usr_out=$current_dir/user_output/c02/ex04
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex04:\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex04/ft_str_is_lowercase.c" ; then
		msg_nothing_turned_in "ex04/ft_str_is_lowercase.c"
		return
	fi
	check_norme "src/c02/ex04/ft_str_is_lowercase.c"
	check_prototype "int" "ft_str_is_lowercase" "src/c02/ex04/ft_str_is_lowercase.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex04/main.c ./src/c02/ex04/ft_str_is_lowercase.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex04/ft_str_is_lowercase.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local RES_LOW="abcdefghijklmnopqrstuvwxyz"
	local RES_UP="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	local RES_NUM="0123456789"
	local RES_HYBRID="ABCD[Z_abfhjlqsuwz|"
	local USER_LOW=$(./user.out "$RES_LOW")
	local USER_UP=$(./user.out "$RES_UP")
	local USER_NUM=$(./user.out "$RES_NUM")
	local USER_HYBRID=$(./user.out "$RES_HYBRID")
	local USER_EMPTY=$(./user.out "")
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_LOW" != "1" ]; then
		printf "${uni_fail}ex04/ft_str_is_lowercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "1") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex04/ft_str_is_lowercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_NUM" != "0" ]; then
		printf "${uni_fail}ex04/ft_str_is_lowercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex04/ft_str_is_lowercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_UP" != "0" ]; then
		printf "${uni_fail}ex04/ft_str_is_lowercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex04/ft_str_is_lowercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_HYBRID" != "0" ]; then
		printf "${uni_fail}ex04/ft_str_is_lowercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex04/ft_str_is_lowercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 5\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_EMPTY" != "1" ]; then
		printf "${uni_fail}ex04/ft_str_is_lowercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "1") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex04/ft_str_is_lowercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c02_ex05() {
	usr_out=$current_dir/user_output/c02/ex05
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex05:\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex05/ft_str_is_uppercase.c" ; then
		msg_nothing_turned_in "ex05/ft_str_is_uppercase.c"
		return
	fi
	check_norme "src/c02/ex05/ft_str_is_uppercase.c"
	check_prototype "int" "ft_str_is_uppercase" "src/c02/ex05/ft_str_is_uppercase.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex05/main.c ./src/c02/ex05/ft_str_is_uppercase.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex05/ft_str_is_uppercase.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local RES_LOW="abcdefghijklmnopqrstuvwxyz"
	local RES_UP="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	local RES_NUM="0123456789"
	local RES_HYBRID="ABCD[Z_abfhjlqsuwz|"
	local USER_LOW=$(./user.out "$RES_LOW")
	local USER_UP=$(./user.out "$RES_UP")
	local USER_NUM=$(./user.out "$RES_NUM")
	local USER_HYBRID=$(./user.out "$RES_HYBRID")
	local USER_EMPTY=$(./user.out "")
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_LOW" != "0" ]; then
		printf "${uni_fail}ex05/ft_str_is_uppercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/ft_str_is_uppercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_NUM" != "0" ]; then
		printf "${uni_fail}ex05/ft_str_is_uppercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/ft_str_is_uppercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 3\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_UP" != "1" ]; then
		printf "${uni_fail}ex05/ft_str_is_uppercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "1") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/ft_str_is_uppercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 4\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_HYBRID" != "0" ]; then
		printf "${uni_fail}ex05/ft_str_is_uppercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "0") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/ft_str_is_uppercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	printf "> test 5\n" >> $current_dir/DEEPTHOUGHT
	if [ "$USER_EMPTY" != "1" ]; then
		printf "${uni_fail}ex05/ft_str_is_uppercase.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "1") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/ft_str_is_uppercase.c\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c02_ex06() {
	usr_out=$current_dir/user_output/c02/ex06
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex06:\n${NOCOLOR}"
	printf "= ex06 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex06/ft_str_is_printable.c" ; then
		msg_nothing_turned_in "ex06/ft_str_is_printable.c"
		return
	fi
	check_norme "src/c02/ex06/ft_str_is_printable.c"
	check_prototype "int" "ft_str_is_printable" "src/c02/ex06/ft_str_is_printable.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex06/main.c ./src/c02/ex06/ft_str_is_printable.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_str_is_printable.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local RES_PRINTABLE=" !\"#\$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\`abcdefghijklmnopqrstuvwxyz{|}~"
	local USER_OUTPUT=$(./user.out "$RES_PRINTABLE")
	if [ "$USER_OUTPUT" != "011" ]; then
		printf "${uni_fail}ex06/ft_str_is_printable.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo "011") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex06/ft_str_is_printable.c\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c02_ex07() {
	usr_out=$current_dir/user_output/c02/ex07
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex07:\n${NOCOLOR}"
	printf "= ex07 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex07/ft_strupcase.c" ; then
		msg_nothing_turned_in "ex07/ft_strupcase.c"
		return
	fi
	check_norme "src/c02/ex07/ft_strupcase.c"
	check_prototype "char" "\*ft_strupcase" "src/c02/ex07/ft_strupcase.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex07/main.c ./src/c02/ex07/ft_strupcase.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex07/ft_strupcase.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
		printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "they built the highway")
		local RES="THEY BUILT THE HIGHWAY"
		if [ "$USER_OUTPUT" == "$RES" ] ; then
			printf "${uni_success}ex07/ft_strupcase.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex07/ft_strupcase.c\t\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "th3y bui|t the h!\\ghway")
		local RES="TH3Y BUI|T THE H!\\GHWAY"
		if [ "$USER_OUTPUT" == "$RES" ] ; then
			printf "${uni_success}ex07/ft_strupcase.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex07/ft_strupcase.c\t\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
	cd $current_dir
}

function	check_c02_ex08() {
	usr_out=$current_dir/user_output/c02/ex08
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex08:\n${NOCOLOR}"
	printf "= ex08 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex08/ft_strlowcase.c" ; then
		msg_nothing_turned_in "ex08/ft_strlowcase.c"
		return
	fi
	check_norme "src/c02/ex08/ft_strlowcase.c"
	check_prototype "char" "\*ft_strlowcase" "src/c02/ex08/ft_strlowcase.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex08/main.c ./src/c02/ex08/ft_strlowcase.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex08/ft_strlowcase.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
		printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "THEY BUILT THE HIGHWAY")
		local RES="they built the highway"
		if [ "$USER_OUTPUT" == "$RES" ] ; then
			printf "${uni_success}ex08/ft_strlowcase.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex08/ft_strlowcase.c\t\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "TH3Y BUI|T THE H!\\GHWAY")
		local RES="th3y bui|t the h!\\ghway"
		if [ "$USER_OUTPUT" == "$RES" ] ; then
			printf "${uni_success}ex08/ft_strlowcase.c\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex08/ft_strlowcase.c\t\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
	cd $current_dir
}

function	check_c02_ex09() {
	usr_out=$current_dir/user_output/c02/ex09
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex09:\n${NOCOLOR}"
	printf "= ex09 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex09/ft_strcapitalize.c" ; then
		msg_nothing_turned_in "ex09/ft_strcapitalize.c"
		return
	fi
	check_norme "src/c02/ex09/ft_strcapitalize.c"
	check_prototype "char" "\*ft_strcapitalize" "src/c02/ex09/ft_strcapitalize.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex09/main.c ./src/c02/ex09/ft_strcapitalize.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex09/ft_strcapitalize.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
		printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "they built the highway")
		local RES="They Built The Highway"
		if [ "$USER_OUTPUT" == "$RES" ] ; then
			printf "${uni_success}ex09/ft_strcapitalize.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex09/ft_strcapitalize.c\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "th3Y=bu1|t&thE h!\\ghWAY")
		local RES="Th3y=Bu1|T&The H!\\Ghway"
		if [ "$USER_OUTPUT" == "$RES" ] ; then
			printf "${uni_success}ex09/ft_strcapitalize.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex09/ft_strcapitalize.c\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		printf "> test 2\n" >> $current_dir/DEEPTHOUGHT
		local USER_OUTPUT=$(./user.out "THEY BUILT THE HIGHWAY")
		local RES="They Built The Highway"
		if [ "$USER_OUTPUT" == "$RES" ] ; then
			printf "${uni_success}ex09/ft_strcapitalize.c\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex09/ft_strcapitalize.c\t${diff_ko}${NOCOLOR}\n"
			diff <(echo "$RES") <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
	cd $current_dir
}

function	check_c02_ex10() {
	usr_out=$current_dir/user_output/c02/ex10
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex10:\n${NOCOLOR}"
	printf "= ex10 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex10/ft_strlcpy.c" ; then
		msg_nothing_turned_in "ex10/ft_strlcpy.c"
		return
	fi
	check_norme "src/c02/ex10/ft_strlcpy.c"
	check_prototype "unsigned int" "ft_strlcpy" "src/c02/ex10/ft_strlcpy.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex10/main.c ./src/c02/ex10/ft_strlcpy.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex10/ft_strlcpy.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	local RES="marvin"
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex10/ft_strlcpy.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex10/ft_strlcpy.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c02_ex11() {
	usr_out=$current_dir/user_output/c02/ex11
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex11:\n${NOCOLOR}"
	printf "= ex11 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c02/ex11/ft_putstr_non_printable.c" ; then
		msg_nothing_turned_in "ex11/ft_putstr_non_printable.c"
		return
	fi
	check_norme "src/c02/ex11/ft_putstr_non_printable.c"
	check_prototype "void" "ft_putstr_non_printable" "src/c02/ex11/ft_putstr_non_printable.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c02/ex11/main.c ./src/c02/ex11/ft_putstr_non_printable.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex11/ft_putstr_non_printable.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	local RES="marvin \\07the\\08 bot\\09, \\0athe\\0b ship\\0c is\\0d in\\0a danger"
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex11/ft_putstr_non_printable.c${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex11/ft_putstr_non_printable.c${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c02_ex12() {
	printf " ${YELLOW}${UNDERLINE}ex12:\n${NOCOLOR}"
	printf "= ex12 =\n==========================================\n" >> DEEPTHOUGHT
	printf "${RED}This exercise is not supported yet.${NOCOLOR}\n"
	printf "\nThis exercise is not supported yet.\n\n" >> DEEPTHOUGHT
}

function	c02() {
	mkdir src/c02 user_output/c02
	print_current_part "c02"
	cp -r $src_path/c02/ex* ./src/c02  # copying src files
	
	check_c02_ex00
	check_c02_ex01
	check_c02_ex02
	check_c02_ex03
	check_c02_ex04
	check_c02_ex05
	check_c02_ex06
	check_c02_ex07
	check_c02_ex08
	check_c02_ex09
	check_c02_ex10
	check_c02_ex11
	check_c02_ex12
	rm -rf $current_dir/user_output/c02 $current_dir/src/c02
	printf "${GREEN}\nAll c02 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c02 tests are done.\n" >> DEEPTHOUGHT
}
