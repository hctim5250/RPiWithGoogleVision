1. Update RPi
	sudo apt update
	sudo apt upgrade

2. Install below things:
	sudo pip install --upgrade pip
	sudo apt-get install libjpeg8-dev
	pip install --upgrade oauth2client
	sudo pip install --upgrade google-api-python-client
	sudo pip install --upgrade Pillow

3. Set environmental variables
	a. Get API key json file and copy it to RPi's /home/pi/
		reference:https://www.dexterindustries.com/howto/use-google-cloud-vision-on-the-raspberry-pi/
	b. edit profile
		sudo nano /etc/profile		
		Add line:
		GOOGLE_APPLICATION_CREDENTIALS="/home/pi/your_google_api_key.json"
		export GOOGLE_APPLICATION_CREDENTIALS
	c. Reboot RPi
	d. Check GOOGLE_APPLICATION_CREDENTIALS environmental variables:
		echo $GOOGLE_APPLICATION_CREDENTIALS
		It should show the key path which you had set:
		/home/pi/your_google_api_key.json
4. Run Python programs with google vision