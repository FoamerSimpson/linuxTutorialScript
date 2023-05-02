 #!/bin/bash
echo "hello, This  program is meant to be a test of your linux capibilities "

touch $HOME/Desktop/ball
mkdir $HOME/Desktop/hoop

echo -e "on youre desktop you will see there is a file named ball and a folder named\nhoop put the ball in the hoop by using the mv command\n"


while [[ True -eq True ]]
do
read -p "[Press enter to continue]" class
if [[ -f "$HOME/Desktop/hoop/ball" ]]
then
    echo -e "The ball is in the hoop\n"
    break
    else
    echo -e "ball is not in the hoop\n"
    echo -e "try again\n"
fi
done

echo -e "now I would like for you to make the file writable and executable for everyone.\n"

while [[ True -eq True ]]
do
read -p "[Press enter to continue]" class
if [[ -x "$HOME/Desktop/hoop/ball" ]] && [[ -w "$HOME/Desktop/hoop/ball" ]]
then
	echo -e "good job\n"
	break
else
	echo "File needs to be both executable, and writable."
	echo -e "try again\n"
fi
done
echo -e "Now i would like for you to put 'hello' exactly as written (no quotation marks) into the 'ball' file\n"
while [[ True -eq True ]]
do
read -p "[Press enter to continue]" class
grep -Fxq "hello" $HOME/Desktop/hoop/ball
lol=$?
if [[ $lol -eq 0 ]]
then 
	echo -e "\ngood job\n"
	break
else
	echo -e "\nyou have yet to prefromed the requested task\n"
fi
done
rm $HOME/Desktop/hoop/ball
cd 
for i in {1..50}
do
touch "$HOME/Desktop/hoop/$i"
done
echo "hello world" > $HOME/Desktop/hoop/27

echo -e "\n50 files have been created in the hoop folder,\nwhich file contains the words 'hello world'\n"

while [[ True -eq True ]]
do
read -p "what is the name of the file containing 'hello world'?: " guess
if [[ $guess -eq "27" ]]
then
	echo -e "correct\n"
	break
else
	echo -e "incorrect\n"
fi
done

echo "                        
             ._==_==_=_.
            .-\:      /-.
           | (|:.     |) |
            '-|:.     |-'
              \::.    /
               '::. .'
                 ) (
               _.' '._
              |_______|"
echo -e "\nCongrats you have finished"














