# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check_c07.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/26 21:04:32 by alaamimi          #+#    #+#              #
#    Updated: 2021/09/17 18:12:37 by ablaamim         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

function	check_c07_ex00()
{
	usr_out=$current_dir/user_output/c07/ex00
	mkdir $usr_out
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex00/ft_strdup.c" ; then
		msg_nothing_turned_in "ex00/ft_strdup.c"
		return
	fi
	check_norme "src/c07/ex00/ft_strdup.c"
	check_prototype "char" "\*ft_strdup" "src/c07/ex00/ft_strdup.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c07/ex00/main.c ./src/c07/ex00/ft_strdup.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_strdup.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	local RES="Hello!"
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex00/ft_strdup.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_fail}ex00/ft_strdup.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}


function	c07()
{
	mkdir src/c07 user_output/c07
	print_current_part "c07"
	cp -r $src_path/c07/ex* ./src/c07  # copying src files

	check_c07_ex00

	rm -rf $current_dir/user_output/c07 $current_dir/src/c07
	printf "${GREEN}\nAll c07 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll c07 tests are done.\n" >> DEEPTHOUGHT
}
