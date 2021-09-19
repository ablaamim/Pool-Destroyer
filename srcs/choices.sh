# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    choices.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/21 17:27:46 by alaamimi          #+#    #+#              #
#    Updated: 2021/09/19 11:41:39 by ablaamim         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

function	choices()
{
printf "${YELLOW}========================================================================================================================

	<< CHOOSE WHAT YOU WOULD LIKE TO DESTROY ! >>

	SELECT [0]  [SELECT ALL]  ULTIMATE KILL;

	SELECT [1]  KILL shell00;
	SELECT [2]  KILL shell01;

	<< SELECT FROM C PROJECTS ! >>

	[00] KILL c00;
	[01] KILL c01;
	[02] KILL c02;
	[03] KILL c03;
	[04] KILL c04;
	[05] KILL c05;
	[06] KILL c06;
	[07] KILL c07;
	[08] KILL c08;
	[09] KILL c09;
	[10] KILL c10;
	[11] KILL c11;
	[12] KILL c12;
	[13] KILL c13;

	EXAMPLE : To test c00 you must enter the value 00 without "[]" and so on.

==========================================================================================================================

\n${NOCOLOR}Select your kill from above : "
	read
		if [ "$REPLY" == "0" ] || [ "$REPLY" == "" ]; then
			run_all
		elif [ "$REPLY" == "1" ]; then
			shell00
		elif [ "$REPLY" == "2" ]; then
			shell01
		elif [ "$REPLY" == "00" ]; then
			c00	
		elif [ "$REPLY" == "01" ]; then
			c01
		elif [ "$REPLY" == "02" ]; then
			c02
		elif [ "$REPLY" == "03" ]; then
			c03
		elif [ "$REPLY" == "04" ]; then
			c04
		elif [ "$REPLY" == "05" ]; then
			c05
		elif [ "$REPLY" == "06" ]; then
			c06
		elif [ "$REPLY" == "07" ]; then
			c07
		else
			printf "${RED}Ultimate test is loading.\n${NOCOLOR}"
	fi
	printf "\n"
}

function	run_all()
{
	shell00
	shell01
	c00
	c01
	c02
	c03
	c04
	c05
	c06
	c07
	c08
	c09
	c10
	c11
	c12
	c13
}
