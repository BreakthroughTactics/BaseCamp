#! /bin/bash 

#Conditional statements

read -p "Please enter your name: " name
echo "Good day to you, $name."
sleep 1.5
echo "In order to make an account, we will need some more details from you."
sleep 3
read -p "Please enter your age: " age

if [ $age -lt 16 ]
then
	echo "Thank you. You may sign up but we will need the consent of a parent or guardian to  verify your account."
	sleep 3
	read -p "Please enter the phone number of your chosen parent or guardian. We will be in touch to verify: " parentnumber
	echo "Thank you again, $name."
elif [ $age -gt 45 ]
then	
	echo "Thank you very much. You may sign up and verify your account via email."
	sleep 3
	read -p "Please enter a valid email address: " email
	echo "You are also entitled to our 'Community Elder' discount and profile badge. Further details will be found in our confirmation email, which we shall send to you shortly."
	sleep 5
	echo "Thank you again."
else
	echo "Thank you very much. You may sign up and verify your account via email."
	sleep 3
	read -p "Please enter a valid email address: " email
	echo "Thank you. We shall email you shortly with verification."

fi



