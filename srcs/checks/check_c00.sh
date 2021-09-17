# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check_c00.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/21 18:59:06 by alaamimi          #+#    #+#              #
#    Updated: 2021/09/17 18:11:47 by ablaamim         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

#ex00 checker
function	check_c00_ex00()
{
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

function	check_c00_ex01()
{
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

function	check_c00_ex02()
{
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

function	check_c00_ex03()
{
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

function	check_c00_ex04()
{
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

function	check_c00_ex05()
{
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

function	check_c00_ex06()
{
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

function	check_c00_ex07()
{
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
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((i++))
	done	
	cd $current_dir
}

function	check_c00_ex08()
{
	usr_out=$current_dir/user_output/c00/ex08
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex08:\n${NOCOLOR}"
	printf "= ex08 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c00/ex08/ft_print_combn.c" ; then
		msg_nothing_turned_in "ex05/ft_print_comb.c"
		return
	fi
	check_norme "src/c00/ex08/ft_print_combn.c"
	check_prototype "void" "ft_print_combn" "src/c00/ex08/ft_print_combn.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c00/ex08/main.c ./src/c00/ex08/ft_print_combn.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex08/ft_print_combn.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES00="0, 1, 2, 3, 4, 5, 6, 7, 8, 9
	01, 02, 03, 04, 05, 06, 07, 08, 09, 12, 13, 14, 15, 16, 17, 18, 19, 23, 24, 25, 26, 27, 28, 29, 34, 35, 36, 37, 38, 39, 45, 46, 47, 48, 49, 56, 57, 58, 59, 67, 68, 69, 78, 79, 89
	012, 013, 014, 015, 016, 017, 018, 019, 023, 024, 025, 026, 027, 028, 029, 034, 035, 036, 037, 038, 039, 045, 046, 047, 048, 049, 056, 057, 058, 059, 067, 068, 069, 078, 079, 089, 123, 124, 125, 126, 127, 128, 129, 134, 135, 136, 137, 138, 139, 145, 146, 147, 148, 149, 156, 157, 158, 159, 167, 168, 169, 178, 179, 189, 234, 235, 236, 237, 238, 239, 245, 246, 247, 248, 249, 256, 257, 258, 259, 267, 268, 269, 278, 279, 289, 345, 346, 347, 348, 349, 356, 357, 358, 359, 367, 368, 369, 378, 379, 389, 456, 457, 458, 459, 467, 468, 469, 478, 479, 489, 567, 568, 569, 578, 579, 589, 678, 679, 689, 789
	0123, 0124, 0125, 0126, 0127, 0128, 0129, 0134, 0135, 0136, 0137, 0138, 0139, 0145, 0146, 0147, 0148, 0149, 0156, 0157, 0158, 0159, 0167, 0168, 0169, 0178, 0179, 0189, 0234, 0235, 0236, 0237, 0238, 0239, 0245, 0246, 0247, 0248, 0249, 0256, 0257, 0258, 0259, 0267, 0268, 0269, 0278, 0279, 0289, 0345, 0346, 0347, 0348, 0349, 0356, 0357, 0358, 0359, 0367, 0368, 0369, 0378, 0379, 0389, 0456, 0457, 0458, 0459, 0467, 0468, 0469, 0478, 0479, 0489, 0567, 0568, 0569, 0578, 0579, 0589, 0678, 0679, 0689, 0789, 1234, 1235, 1236, 1237, 1238, 1239, 1245, 1246, 1247, 1248, 1249, 1256, 1257, 1258, 1259, 1267, 1268, 1269, 1278, 1279, 1289, 1345, 1346, 1347, 1348, 1349, 1356, 1357, 1358, 1359, 1367, 1368, 1369, 1378, 1379, 1389, 1456, 1457, 1458, 1459, 1467, 1468, 1469, 1478, 1479, 1489, 1567, 1568, 1569, 1578, 1579, 1589, 1678, 1679, 1689, 1789, 2345, 2346, 2347, 2348, 2349, 2356, 2357, 2358, 2359, 2367, 2368, 2369, 2378, 2379, 2389, 2456, 2457, 2458, 2459, 2467, 2468, 2469, 2478, 2479, 2489, 2567, 2568, 2569, 2578, 2579, 2589, 2678, 2679, 2689, 2789, 3456, 3457, 3458, 3459, 3467, 3468, 3469, 3478, 3479, 3489, 3567, 3568, 3569, 3578, 3579, 3589, 3678, 3679, 3689, 3789, 4567, 4568, 4569, 4578, 4579, 4589, 4678, 4679, 4689, 4789, 5678, 5679, 5689, 5789, 6789
	01234, 01235, 01236, 01237, 01238, 01239, 01245, 01246, 01247, 01248, 01249, 01256, 01257, 01258, 01259, 01267, 01268, 01269, 01278, 01279, 01289, 01345, 01346, 01347, 01348, 01349, 01356, 01357, 01358, 01359, 01367, 01368, 01369, 01378, 01379, 01389, 01456, 01457, 01458, 01459, 01467, 01468, 01469, 01478, 01479, 01489, 01567, 01568, 01569, 01578, 01579, 01589, 01678, 01679, 01689, 01789, 02345, 02346, 02347, 02348, 02349, 02356, 02357, 02358, 02359, 02367, 02368, 02369, 02378, 02379, 02389, 02456, 02457, 02458, 02459, 02467, 02468, 02469, 02478, 02479, 02489, 02567, 02568, 02569, 02578, 02579, 02589, 02678, 02679, 02689, 02789, 03456, 03457, 03458, 03459, 03467, 03468, 03469, 03478, 03479, 03489, 03567, 03568, 03569, 03578, 03579, 03589, 03678, 03679, 03689, 03789, 04567, 04568, 04569, 04578, 04579, 04589, 04678, 04679, 04689, 04789, 05678, 05679, 05689, 05789, 06789, 12345, 12346, 12347, 12348, 12349, 12356, 12357, 12358, 12359, 12367, 12368, 12369, 12378, 12379, 12389, 12456, 12457, 12458, 12459, 12467, 12468, 12469, 12478, 12479, 12489, 12567, 12568, 12569, 12578, 12579, 12589, 12678, 12679, 12689, 12789, 13456, 13457, 13458, 13459, 13467, 13468, 13469, 13478, 13479, 13489, 13567, 13568, 13569, 13578, 13579, 13589, 13678, 13679, 13689, 13789, 14567, 14568, 14569, 14578, 14579, 14589, 14678, 14679, 14689, 14789, 15678, 15679, 15689, 15789, 16789, 23456, 23457, 23458, 23459, 23467, 23468, 23469, 23478, 23479, 23489, 23567, 23568, 23569, 23578, 23579, 23589, 23678, 23679, 23689, 23789, 24567, 24568, 24569, 24578, 24579, 24589, 24678, 24679, 24689, 24789, 25678, 25679, 25689, 25789, 26789, 34567, 34568, 34569, 34578, 34579, 34589, 34678, 34679, 34689, 34789, 35678, 35679, 35689, 35789, 36789, 45678, 45679, 45689, 45789, 46789, 56789
	012345, 012346, 012347, 012348, 012349, 012356, 012357, 012358, 012359, 012367, 012368, 012369, 012378, 012379, 012389, 012456, 012457, 012458, 012459, 012467, 012468, 012469, 012478, 012479, 012489, 012567, 012568, 012569, 012578, 012579, 012589, 012678, 012679, 012689, 012789, 013456, 013457, 013458, 013459, 013467, 013468, 013469, 013478, 013479, 013489, 013567, 013568, 013569, 013578, 013579, 013589, 013678, 013679, 013689, 013789, 014567, 014568, 014569, 014578, 014579, 014589, 014678, 014679, 014689, 014789, 015678, 015679, 015689, 015789, 016789, 023456, 023457, 023458, 023459, 023467, 023468, 023469, 023478, 023479, 023489, 023567, 023568, 023569, 023578, 023579, 023589, 023678, 023679, 023689, 023789, 024567, 024568, 024569, 024578, 024579, 024589, 024678, 024679, 024689, 024789, 025678, 025679, 025689, 025789, 026789, 034567, 034568, 034569, 034578, 034579, 034589, 034678, 034679, 034689, 034789, 035678, 035679, 035689, 035789, 036789, 045678, 045679, 045689, 045789, 046789, 056789, 123456, 123457, 123458, 123459, 123467, 123468, 123469, 123478, 123479, 123489, 123567, 123568, 123569, 123578, 123579, 123589, 123678, 123679, 123689, 123789, 124567, 124568, 124569, 124578, 124579, 124589, 124678, 124679, 124689, 124789, 125678, 125679, 125689, 125789, 126789, 134567, 134568, 134569, 134578, 134579, 134589, 134678, 134679, 134689, 134789, 135678, 135679, 135689, 135789, 136789, 145678, 145679, 145689, 145789, 146789, 156789, 234567, 234568, 234569, 234578, 234579, 234589, 234678, 234679, 234689, 234789, 235678, 235679, 235689, 235789, 236789, 245678, 245679, 245689, 245789, 246789, 256789, 345678, 345679, 345689, 345789, 346789, 356789, 456789
	0123456, 0123457, 0123458, 0123459, 0123467, 0123468, 0123469, 0123478, 0123479, 0123489, 0123567, 0123568, 0123569, 0123578, 0123579, 0123589, 0123678, 0123679, 0123689, 0123789, 0124567, 0124568, 0124569, 0124578, 0124579, 0124589, 0124678, 0124679, 0124689, 0124789, 0125678, 0125679, 0125689, 0125789, 0126789, 0134567, 0134568, 0134569, 0134578, 0134579, 0134589, 0134678, 0134679, 0134689, 0134789, 0135678, 0135679, 0135689, 0135789, 0136789, 0145678, 0145679, 0145689, 0145789, 0146789, 0156789, 0234567, 0234568, 0234569, 0234578, 0234579, 0234589, 0234678, 0234679, 0234689, 0234789, 0235678, 0235679, 0235689, 0235789, 0236789, 0245678, 0245679, 0245689, 0245789, 0246789, 0256789, 0345678, 0345679, 0345689, 0345789, 0346789, 0356789, 0456789, 1234567, 1234568, 1234569, 1234578, 1234579, 1234589, 1234678, 1234679, 1234689, 1234789, 1235678, 1235679, 1235689, 1235789, 1236789, 1245678, 1245679, 1245689, 1245789, 1246789, 1256789, 1345678, 1345679, 1345689, 1345789, 1346789, 1356789, 1456789, 2345678, 2345679, 2345689, 2345789, 2346789, 2356789, 2456789, 3456789
	01234567, 01234568, 01234569, 01234578, 01234579, 01234589, 01234678, 01234679, 01234689, 01234789, 01235678, 01235679, 01235689, 01235789, 01236789, 01245678, 01245679, 01245689, 01245789, 01246789, 01256789, 01345678, 01345679, 01345689, 01345789, 01346789, 01356789, 01456789, 02345678, 02345679, 02345689, 02345789, 02346789, 02356789, 02456789, 03456789, 12345678, 12345679, 12345689, 12345789, 12346789, 12356789, 12456789, 13456789, 23456789
	012345678, 012345679, 012345689, 012345789, 012346789, 012356789, 012456789, 013456789, 023456789, 123456789"
	printf "> test 1\n" >> $current_dir/DEEPTHOUGHT
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES00" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex08/ft_print_combn.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES00) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		local i=1
		while [ $i -le 9 ]
		do
			printf ">>> test $i <<<\n" >> $current_dir/DEEPTHOUGHT
			printf "${uni_success}>test $i\t\t${diff_ok}${NOCOLOR}\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
			((i++))
		done
	fi
	cd $current_dir
}

function	c00()
{
	mkdir src/c00 user_output/c00
	print_current_part "c00"
	cp -r $src_path/c00/ex* ./src/c00

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
	printf "${GREEN}\nDone killing the targest [c00].\n${NOCOLOR}"
	printf "\nEvery act of creation is a first act of destruction.\n" >> DEEPTHOUGHT
}
