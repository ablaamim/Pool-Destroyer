# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check_shell00.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/21 18:05:05 by alaamimi          #+#    #+#              #
#    Updated: 2021/09/18 19:45:21 by ablaamim         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

#checker for shell00

#ex00

function	check_sh00_ex00()
{
	printf " ${YELLOW}${UNDERLINE}ex00:\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex00/z" ; then
		msg_nothing_turned_in "ex00/z"
		return
	fi
	diff src/shell00/ex00/z tests/shell00/ex00/z >> DEEPTHOUGHT 2> /dev/null
	#	printf ""
	if ! diff -q src/shell00/ex00/z tests/shell00/ex00/z ; then
		printf "${uni_fail}ex00/z\t\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n" >> DEEPTHOUGHT
	else
		printf "${uni_success}ex00/z\t\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> DEEPTHOUGHT
	fi
}

#ex01

function	check_sh00_ex01()
{
	printf " ${YELLOW}${UNDERLINE}ex01:\n${NOCOLOR}"
	printf "\n= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex01/testShell00.tar" ; then
		msg_nothing_turned_in "ex01/testShell00.tar"
		return
	fi
	printf "\$>Extracting archive...\n" >> DEEPTHOUGHT
	tar -xf src/shell00/ex01/testShell00.tar -C src/shell00/ex01/ 2>> DEEPTHOUGHT
	printf "Done.\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex01/testShell00" ; then
		msg_nothing_turned_in "ex01/testShell00"
		return
	fi
	FILESIZE=$(wc -c src/shell00/ex01/testShell00 | sed -e 's/\ src\/shell00\/ex01\/testShell00//g')
	if   (ls -l src/shell00/ex01 | sed -e 's/ //g' | grep -e "-r--r-xr-x1" | cut -c 1-11 | tr -d '\n' && ls -l | sed -e 's/ //g' | grep "40" | rev | cut -c 1-20 | rev > tests/shell00/ex01/testShell00) > /dev/null && [ $FILESIZE -eq 40 ] ; then
		printf "${uni_success}ex01/testShell00\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> DEEPTHOUGHT
		printf "\n Timestamp is not supported, this script only checks filesize && attributes\n"
	else
		printf "${uni_fail}ex01/testShell00\t\t${diff_ko}${NOCOLOR}\n"
		ls -l src/shell00/ex01 >> DEEPTHOUGHT
		printf "diff ko :(\n" >> DEEPTHOUGHT
	fi
}

#ex02

function	check_sh00_ex02()
{
	printf " ${YELLOW}${UNDERLINE}ex02:\n${NOCOLOR}"
	printf "\n= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex02/exo2.tar" ; then
		msg_nothing_turned_in "ex02/exo2.tar"
		return
	fi
	printf "\$>Extracting archive...\n" >> DEEPTHOUGHT
	tar -xf src/shell00/ex02/exo2.tar -C src/shell00/ex02/
	printf "Done.\n" >> DEEPTHOUGHT
	let i=0
	while [ $i -le 6 ] ; do
		if ! file_exists "src/shell00/ex02/test$i" ; then
			msg_nothing_turned_in "ex02/test$i"
			return
		fi
		let "i += 1"
	done
	rm src/shell00/ex02/exo2.tar
	#	ls -l src/shell00/ex02

	printf "\ntest0\n" >> DEEPTHOUGHT
	if ls -l src/shell00/ex02/ | sed -e 's/ //g' | grep -e "-r--r-xr-x1" | grep -E "20[0-9]{2}" | grep -e "test0" > /dev/null ; then
		printf "${uni_success}ex02/test0\t\t\t${diff_ok}${NOCOLOR}\n"
		printf "diff ok :D\n" >> DEEPTHOUGHT
	else
		printf "${uni_fail}ex02/test0\t\t\t${diff_ko}${NOCOLOR}\n"
		ls -l src/shell00/ex02/test0 >> DEEPTHOUGHT
		printf "diff ko :(\n" >> DEEPTHOUGHT
	fi

# Check test1

printf "\ntest1\n" >> DEEPTHOUGHT
FILESIZE=$(wc -c src/shell00/ex02/test1 | sed -e 's/\ src\/shell00\/ex02\/test1//g')
if ls -l src/shell00/ex02/test1 | sed -e 's/ //g' | grep -e "-rwx--xr--1" | grep -E "20[0-9]{2}" | grep -e "test1" > /dev/null && [ $FILESIZE -eq 4 ] ; then
	printf "${uni_success}ex02/test1\t\t\t${diff_ok}${NOCOLOR}\n"
	printf "diff ok :D\n" >> DEEPTHOUGHT
else
	printf "${uni_fail}ex02/test1\t\t\t${diff_ko}${NOCOLOR}\n"
	ls -l src/shell00/ex02/test1 >> DEEPTHOUGHT
	printf "diff ko :(\n" >> DEEPTHOUGHT
fi

# Check test2

printf "\ntest2\n" >> DEEPTHOUGHT
if ls -l src/shell00/ex02/ | sed -e 's/ //g' | grep -e "dr-x---r--2" | grep -E "20[0-9]{2}" | grep -e "test2" > /dev/null ; then
	printf "${uni_success}ex02/test2\t\t\t${diff_ok}${NOCOLOR}\n"
	printf "diff ok :D\n" >> DEEPTHOUGHT
else
	printf "${uni_fail}ex02/test2\t\t\t${diff_ko}${NOCOLOR}\n"
	ls -l src/shell00/ex02/test2 >> DEEPTHOUGHT
	printf "diff ko :(\n" >> DEEPTHOUGHT
fi

# Check test3

printf "\ntest3\n" >> DEEPTHOUGHT
FILESIZE=$(wc -c src/shell00/ex02/test3 | sed -e 's/\ src\/shell00\/ex02\/test3//g')
if ls -l src/shell00/ex02/test3 | sed -e 's/ //g' | grep -e "-r-----r--2" | grep -E "20[0-9]{2}" | grep -e "test3" > /dev/null && [ $FILESIZE -eq 1 ] ; then
	printf "${uni_success}ex02/test3\t\t\t${diff_ok}${NOCOLOR}\n"
	printf "diff ok :D\n" >> DEEPTHOUGHT
else
	printf "${uni_fail}ex02/test3\t\t\t${diff_ko}${NOCOLOR}\n"
	ls -l src/shell00/ex02/test3 >> DEEPTHOUGHT
	printf "diff ko :(\n" >> DEEPTHOUGHT
fi

# Check test4

printf "\ntest4\n" >> DEEPTHOUGHT
FILESIZE=$(wc -c src/shell00/ex02/test4 | sed -e 's/\ src\/shell00\/ex02\/test4//g')
if ls -l src/shell00/ex02/test4 | sed -e 's/ //g' | grep -e "-rw-r----x1" | grep -E "20[0-9]{2}" | grep -e "test4" > /dev/null && [ $FILESIZE -eq 2 ] ; then
	printf "${uni_success}ex02/test4\t\t\t${diff_ok}${NOCOLOR}\n"
	printf "diff ok :D\n" >> DEEPTHOUGHT
else
	printf "${uni_fail}ex02/test4\t\t\t${diff_ko}${NOCOLOR}\n"
	ls -l src/shell00/ex02/test4 >> DEEPTHOUGHT
	printf "diff ko :(\n" >> DEEPTHOUGHT
fi

# Check test5

printf "\ntest5\n" >> DEEPTHOUGHT
FILESIZE=$(wc -c src/shell00/ex02/test5 | sed -e 's/\ src\/shell00\/ex02\/test5//g')
if ls -l src/shell00/ex02/test5 | sed -e 's/ //g' | grep -e "-r-----r--2" | grep -E "20[0-9]{2}" | grep -e "test5" > /dev/null && [ $FILESIZE -eq 1 ] ; then
	printf "${uni_success}ex02/test5\t\t\t${diff_ok}${NOCOLOR}\n"
	printf "diff ok :D\n" >> DEEPTHOUGHT
else
	printf "${uni_fail}ex02/test5\t\t\t${diff_ko}${NOCOLOR}\n"
	ls -l src/shell00/ex02/test5 >> DEEPTHOUGHT
	printf "diff ko :(\n" >> DEEPTHOUGHT
fi

# Check test6

printf "\ntest6\n" >> DEEPTHOUGHT
if ls -l src/shell00/ex02/test6 | sed -e 's/ //g' | grep -e "lrwxr-xr-x1" | grep -E "20[0-9]{2}" | grep -e "test6" | grep -e "test0" > /dev/null ; then
	printf "${uni_success}ex02/test6\t\t\t${diff_ok}${NOCOLOR}\n"
	printf "diff ok :D\n" >> DEEPTHOUGHT
else
	printf "${uni_fail}ex02/test6\t\t\t${diff_ko}${NOCOLOR}Note: test6 does not work on linux.\n"
	ls -l src/shell00/ex02/test6 >> DEEPTHOUGHT
	printf "diff ko :(\n" >> DEEPTHOUGHT
fi
}

#check ex03

function	check_sh00_ex03()
{
	printf " ${YELLOW}${UNDERLINE}ex03:\n${NOCOLOR}"
	printf "\n= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex03/klist.txt" ; then
		msg_nothing_turned_in "ex03/klist.txt"
		return
	fi
	usr_out=$current_dir/user_output/shell00/ex03
	if [ ! -e $usr_out ] ; then
		mkdir $usr_out 2> /dev/null
	fi
	# grep commands
	DIFF_LINE_ONE=$(grep -m 1 -E '^Credentials cache: API:[0-9A-Z]{8}-[0-9A-Z]{4}-[0-9A-Z]{4}-[0-9A-Z]{4}-[0-9A-Z]{12}$' src/shell00/ex03/klist.txt)
	DIFF_LINE_TWO=$(head -2 src/shell00/ex03/klist.txt | tail -1 | grep -E "$USER_NAME@student.1337.ma$")
	DIFF_LINE_THREE=$(head -3 src/shell00/ex03/klist.txt | tail -1 | grep -E "^$")
	DIFF_LINE_FOUR=$(head -4 src/shell00/ex03/klist.txt | tail -1 | grep -E "^  Issued {16}Expires {15}Principal$")
	DIFF_LINE_FIVE=$(head -5 src/shell00/ex03/klist.txt | tail -1 | grep -E "^[A-Z][a-z]{2} {1,2}[0-9]{1,2} [0-9]{2}:[0-9]{2}:[0-9]{2} [0-9]{4}  [A-Z][a-z]{2} {1,2}[0-9]{1,2} [0-9]{2}:[0-9]{2}:[0-9]{2} [0-9]{4}  krbtgt/42.FR@42.FR")

	if [ "$DIFF_LINE_ONE" != "" ] && [ "$DIFF_LINE_TWO" != "" ] && [ "$DIFF_LINE_THREE" == "" ] && [ "$DIFF_LINE_FOUR" != "" ] && [ "$DIFF_LINE_FIVE" != "" ] ; then
	printf "${uni_success}ex03/klist.txt\t\t${diff_ok}${NOCOLOR}\n"
	printf "diff ok :D\n" >> DEEPTHOUGHT
else
	printf "${uni_fail}ex03/klist.txt\t\t${diff_ko}${NOCOLOR}\n"
	printf "\ndiff ko :(\n" >> DEEPTHOUGHT
fi	
}

#check ex04

function	check_sh00_ex04()
{
	mkdir $usr_out/ex04
	printf " ${YELLOW}${UNDERLINE}ex04:\n${NOCOLOR}"
	printf "\n= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex04/midLS" ; then
		msg_nothing_turned_in "ex04/midLS"
		return
	fi
	mkdir user_output/shell00/ex04
	ls -mptU tests/shell00/ex04/files/ | tr -d \\n > $current_dir/tests/shell00/ex04/midLS # 2> /dev/null
	SRC_MIDLS=$(cat src/shell00/ex04/midLS)
	USER_OUTPUT=$($SRC_MIDLS tests/shell00/ex04/files | tr -d \\n)
	printf "$USER_OUTPUT" > $usr_out/ex04/midLS
	DIFF=$(diff -q $usr_out/ex04/midLS $current_dir/tests/shell00/ex04/midLS)
	if [ "$DIFF" != "" ] ; then
		printf "${uni_fail}ex04/midLS\t\t\t${diff_ko}${NOCOLOR}\n"
		diff $usr_out/ex04/midLS $current_dir/tests/shell00/ex04/midLS >> DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> DEEPTHOUGHT
	else
		printf "${uni_success}ex04/midLS\t\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> DEEPTHOUGHT
	fi
}

function	check_sh00_ex05()
{
	printf " ${YELLOW}${UNDERLINE}ex05:\n${NOCOLOR}"
	printf "\n= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex05/git_commit.sh" ; then
		msg_nothing_turned_in "ex05/git_commit.sh"
		return
	fi
	USER_OUTPUT=$(bash $src_path/shell00/ex05/git_commit.sh)
	RES=$(git log -n 5 --pretty="%H")
	DIFF=$(diff <(echo "$USER_OUTPUT") <(echo "$RES"))
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex05/git_commit.sh\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/git_commit.sh\t\t${diff_ko}${NOCOLOR}\n"
		printf "$DIFF\n" >> DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_sh00_ex06()
{
	printf " ${YELLOW}${UNDERLINE}ex06:\n${NOCOLOR}"
	printf "\n= ex06 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex06/git_ignore.sh" ; then
		msg_nothing_turned_in "ex06/git_ignore.sh"
		return
	fi
	USER_OUTPUT=$(bash $src_path/shell00/ex06/git_ignore.sh)
	RES=$(git clean -Xdn | cut -c 14-256)
	DIFF=$(diff <(echo "$USER_OUTPUT") <(echo "$RES"))
	if [ "$USER_OUTPUT" == "$RES" ] ; then
		printf "${uni_success}ex05/git_ignore.sh\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> DEEPTHOUGHT
	else
		printf "${uni_fail}ex05/git_ignore.sh\t\t${diff_ko}${NOCOLOR}\n"
		printf "$DIFF\n" >> DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> DEEPTHOUGHT
	fi
	cd $current_dir

}

function	check_sh00_ex07()
{
	printf " ${YELLOW}${UNDERLINE}ex07:\n${NOCOLOR}"
	printf "\n= ex07 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex07/b" ; then
		msg_nothing_turned_in "ex07/b"
		return
	fi
	DIFF=$(diff -q src/shell00/ex07/b tests/shell00/ex07/b)
	if [ "$DIFF" != "" ] ; then
		printf "${uni_fail}ex07/b\t\t\t${diff_ko}${NOCOLOR}\n"
		diff src/shell00/ex07/b tests/shell00/ex07/b >> DEEPTHOUGHT
		printf "\ndiff ko :(\n" >> DEEPTHOUGHT
	else
		printf "${uni_success}ex07/b\t\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n" >> DEEPTHOUGHT
	fi
}

function	check_sh00_ex08()
{
	printf " ${YELLOW}${UNDERLINE}ex08:\n${NOCOLOR}"
	printf "\n= ex08 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/shell00/ex08/clean" ; then
		msg_nothing_turned_in "ex08/clean"
		return
	fi
	mkdir tests/shell00/ex08 tests/shell00/ex08/dir1
	cp src/shell00/ex08/clean tests/shell00/ex08
	cd tests/shell00/ex08
	touch \~test1 \#test2\# dir1/test3\# dir1/\#test4\# test5\# dir1/\#test6 dir1/test7\~ \#test8
		bash clean > /dev/null
			if ls | grep -e "test2" || ls dir1 | grep -e "test7" || ls dir1 | grep -e "test4" ; then
				printf "${uni_fail}ex08/clean\t\t\t${diff_ko}${NOCOLOR}\n"
				ls -l | grep -e "test2" ; ls -l dir1 | grep -e "test7" ; ls -l dir1 | grep -e "test4" >> $current_dir/DEEPTHOUGHT
				printf "\ndiff ko :(\n" >> $current_dir/DEEPTHOUGHT
			else
				printf "${uni_success}ex08/clean\t\t\t${diff_ok}${NOCOLOR}\n"
				printf "\ndiff ok :D\n" >> $current_dir/DEEPTHOUGHT
			fi
			cd $current_dir
			rm -rf tests/shell00/ex08
		}

	function	check_sh00_ex09()
	{
		printf " ${YELLOW}${UNDERLINE}ex09:\n${NOCOLOR}"
		printf "\n= ex09 =\n==========================================\n" >> DEEPTHOUGHT
		if ! file_exists "src/shell00/ex09/ft_magic" ; then
			msg_nothing_turned_in "ex09/ft_magic"
			return
		fi
		#	USER_OUTPUT=$(cat src/shell00/ex09/ft_magic | tr -d \\n)
		#	RES=$(cat tests/shell00/ex09/ft_magic | tr -d \\n)
		DIFF=$(diff -q src/shell00/ex09/ft_magic tests/shell00/ex09/ft_magic)
		if [ "$DIFF" != "" ] ; then
			printf "${uni_fail}ex09_ft_magic\t\t${diff_ko}${NOCOLOR}\n"
			diff -q src/shell00/ex09/ft_magic tests/shell00/ex09/ft_magic >> DEEPTHOUGHT
			printf "\ndiff ko :(\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_success}ex09/ft_magic\t\t${diff_ok}${NOCOLOR}\n"
			printf "\ndiff ok :D\n" >> $current_dir/DEEPTHOUGHT
		fi
	}

function	shell00()
{
	ask_username
	mkdir src/shell00 user_output/shell00
	print_current_part "shell00"
	cp -r $src_path/shell00/ex* ./src/shell00  # copying src files

	check_sh00_ex00
	check_sh00_ex01
	check_sh00_ex02
	check_sh00_ex03
	check_sh00_ex04
	check_sh00_ex05
	check_sh00_ex06
	check_sh00_ex07
	check_sh00_ex08
	check_sh00_ex09
	printf "${GREEN}\nAll shell00 tests are done.\n\n${NOCOLOR}"
	printf "\n\nAll shell00 tests are done.\n" >> DEEPTHOUGHT
}
