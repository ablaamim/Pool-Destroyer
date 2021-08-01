# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/21 18:00:52 by alaamimi          #+#    #+#              #
#    Updated: 2021/08/01 19:54:44 by alaamimi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

function	clean_before_launch()
{
	if [ -e src ] ; then
		rm -rf src
	fi
	if [ -e user_output ] ; then
		rm -rf user_output
	fi
	if [ -e DEEPTHOUGHT ] ; then
		rm -f DEEPTHOUGHT
	fi
}

function	ask_username()
{
	if [ "$USER_NAME" == "alaamimi" ] ; then
		printf "Welcome, alaamimi!\n\n"
		return
	fi
	printf "Are you $USER_NAME ? [Y/n] "
	read
	if [ "$REPLY" == "n" ] || [ "$REPLY" == "N" ] ; then
		printf "Enter the username of the pooler being corrected: "
		read
		printf "\n"
		if [ "$REPLY" != "" ] ; then
			USER_NAME=$REPLY
		fi
	fi
	printf "Welcome, $USER_NAME!\n\n"
}

function	init()
{
	clean_before_launch
	mkdir src user_output
	print_welcome
	deepthought_init
}

function	deepthought_init()
{
	printf "\$> hostname; uname -msr\n" > DEEPTHOUGHT
	hostname >> DEEPTHOUGHT ; uname -msr >> DEEPTHOUGHT
	printf "\$> date\n" >> DEEPTHOUGHT
	date >> DEEPTHOUGHT
	printf "\$> gcc --version\n" >> DEEPTHOUGHT
	gcc --version | grep -e "gcc" >> DEEPTHOUGHT 2> /dev/null
	printf "\$> clang --version\n" >> DEEPTHOUGHT
	clang --version >> DEEPTHOUGHT 2>  /dev/null
	printf "\$> echo \$USER_NAME\n" >> DEEPTHOUGHT
	echo $USER_NAME >> DEEPTHOUGHT
	printf "\nReady for testing\n\n" >> DEEPTHOUGHT
}
