# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    checker.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/22 20:21:36 by alaamimi          #+#    #+#              #
#    Updated: 2021/06/22 21:20:09 by alaamimi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

if tar -xf testShell00.tar && wc -c testShell00 | cut -b 1,2 | tr -d "\n" > diff && ls -l | sed -e 's/ //g' | grep -e "-r--r-xr-x1" | cut -b 1-11 >> diff | diff -q diff src/diff; then 
	printf "Right --- OK\n"
else
	printf "Wrong --- KO\n"
fi
