# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    utils.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/21 18:03:04 by alaamimi          #+#    #+#              #
#    Updated: 2021/08/01 23:34:24 by alaamimi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

function	compile_tests()
{
	local MAIN=$1
	local USR_SRC=$2
	
	# Compiling with flags
	printf " ${BLUE}${BOLD}Compiling$USR_SRC ${NOCOLOR}"
	printf "\$> gcc -Wall -Werror -Wextra $MAIN $USR_SRC -o $usr_out\n" >> DEEPTHOUGHT
	gcc -Wall -Werror -Wextra $MAIN $USR_SRC -o $usr_out/user.out 2>> DEEPTHOUGHT
	if [ ! -e $usr_out/user.out ] ; then
		printf "${uni_fail}${NOCOLOR}\n"
		printf "This compilation failed.${diff_ko}\n" >> DEEPTHOUGHT
		IS_COMPILED=1
	else
		printf "${uni_success}${NOCOLOR}\n"
		IS_COMPILED=0
	fi
}

function	cleanup()
{
	rm -rf src
	rm -rf user_output
}
