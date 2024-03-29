#------------------------------------------------#
#                1.4 - The Shell                 #
#------------------------------------------------#

# Filename shorthands

pr 1.1 1.2 1.3 ...

# or using the * shorthand:
pr 1.*

# This capability is provided by the shell
wc 1.*

# echo - prints what you tell it
echo hello world
echo 1.*
pr *
# WARNING!
rm *

rm *.save

# Using brackets [] for pattern matching

# print all except chapter 5
pr ch[12346789]*
pr ch[1-46-9]*
rm temp[a-z]

# ? matches any single character
ls ???
ls -l 1.?
rm temp?

# Escaping special characters
ls '?'
ls \?



#------------------------------------------------#
#             Input/output redirection           #
#------------------------------------------------#

ls                      # Output to terminal
ls > fileList.txt       # Output to file

cat 1.1 1.2 1.3 1.4 > chapter1.txt
# append instead of overwrite
cat 1.1 1.2 1.3 1.4 >> chapter1.txt

# Using < to take the input for a program from
# the following file, instead of terminal
mail mary joe tom bomb < letter


# > and < open us up to many possibilities

# print users alphabetically
who >temp
sort <temp

# count users and files
who >temp
wc -l <temp

ls >temp
wc -l <temp

# print files in 3 columns
ls >temp
pr -3 <temp

# see if user is available
who >temp
grep mary <temp


# There is a difference between two lines below:
sort <temp
sort temp

# The first sort processes the contents of temp into
# its standard input. The second sort takes the name
# 'temp' as an argument, which it reads and sorts.

sort
ghi
abc
def
ctl-D

# If no arguments are passed, the standard input is processed



#------------------------------------------------#
#                      Pipes                     #
#------------------------------------------------#

# Instead of using a temporary file to store results, we can just
# pipe the otuput of one program into another.


who | sort          # print sorted list of users
who | wc -l         # count users
ls | wc -l          # count files
ls | pr -3          # 3 column list of filenames
who | grep mary     # look for particular user


ls | pr -3 | lpr            # create a 3 column list of filenames on the line printer
who | grep mary | wc -l     # count how many times Mary is logged in



#------------------------------------------------#
#                    Processes                   #
#------------------------------------------------#

date; who


# & can be used to say "and also do this". With this
# we can start a lengthy command, but do something
# else while it runs.
wc ch* >wc.out &


# The processes below are started all at once, the &
# applies to the whole pipeline. But only the last
# process-id is printed.
pr test.txt | lpr &
6951                # Process-id of lpr


# 'wait' - waits until all processes started with &
# are finished.
wait


# 'kill' - self explanatory
kill 6944


# ps - process information
ps -ag              # List all processes for all users
kill 0              # Kill all processes except login shell


# no hangup (includes nice automatically)
nohup command &


# run with lower priority
nice expensive-command &


# schedule a command
at time
blablabla
Ctrl-D



#------------------------------------------------#
#            Tailoring the Environment           #
#------------------------------------------------#

# change default erase and kill keys
stty erase e kill k

# .profile is run every time you log in
nano .profile

# escaping ^ character since ^ = |
stty erase '^k'

# Set custom prompt string
PS1='Yes, dear? '

# MAIL can be set
MAIL=/usr/spool/mail/danny

# Adding directory to PATH
PATH=$PATH:/usr/example/

# TERM variable
echo $TERM