#! /bin/bash

#Welcome to Boolean 101. Not to be confused with Zoey 101, an old Nickelodeon Tv Series (was great btw). 

echo "This is all about Booleans"
sleep 1
echo "We will take some of you data and give you a nickname based on it"
sleep 2
read -p "Please tell us your name: " name
sleep 1
read -p "Thanks! Now please tell us your age: " age
echo "Thank you"
sleep 1

if [ $age -lt 15 ]
then 
	read -p "Are you a boy or a girl? " gender
	echo "Thank you. We will now generate for you, an amazing name."
elif [ $age -gt 50 ]
then
	read -p "Are you a man or a woman? " gender
	echo "Cheers. Now let's get you that catchy, nickname!" 
else
	read -p "Are you a man or a woman? " gender
	echo "Thanks. Now let's get you that nickname."
fi

echo "Generating amazing nickname..."
sleep 3

if [ $age -lt 15 ]
then
	if [ $age -lt 15 ] && [ $gender == "boy" ] 
	then
		echo "Your nickname is Madlad$name"
	elif [ $age -lt 15 ] && [ $gender == "girl" ]
	then 
		echo "Your nickname is LittleMiss$name"
	else
		echo "Your nickname is TheyBeThe$name"
	fi
elif [ $age -gt 55 ]
then
	if [ $age -gt 55 ] && [ $gender == "man" ]
	then
		echo "Your nickname is '$name, the Vintage Hero'"
	elif [ $age -gt 55 ] && [ $gender == "woman" ]
	then
		echo "Your nickname is 'The Enchanting Madame $name'"
	else
		echo "Your nickname is 'The Marvellously Mysterious $name'"
	fi
else
	if [ $gender == "man" ]
        then
                echo "Your nickname is 'The Amazing $name'"
        elif [ $gender == "woman" ]
        then
                echo "Your nickname is 'The Enchanting $name'"
        else
                echo "Your nickname is 'The Mysterious $name'"
        fi
fi





