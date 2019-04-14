# RPiWithGoogleVision

1. Update RPi
<pre><code>sudo apt update
</code></pre>
<pre><code>sudo apt upgrade
</code></pre>

2. Install below things:
<pre><code>sudo pip install --upgrade pip</code></pre>
<pre><code>sudo apt-get install libjpeg8-dev</code></pre>
<pre><code>pip install --upgrade oauth2client</code></pre>
<pre><code>sudo pip install --upgrade google-api-python-client</code></pre>
<pre><code>sudo pip install --upgrade Pillow</code></pre>

3. Set environmental variables<br>
	a. Get API key json file and copy it to RPi's /home/pi/
		reference:https://www.dexterindustries.com/howto/use-google-cloud-vision-on-the-raspberry-pi/
		
	b. edit profile
		<pre><code>sudo nano /etc/profile</code></pre>		
		Add line:
		<pre><code>GOOGLE_APPLICATION_CREDENTIALS="/home/pi/your_google_api_key.json"</code></pre>
		<pre><code>export GOOGLE_APPLICATION_CREDENTIALS</code></pre>

	c. Reboot RPi

	d. Check GOOGLE_APPLICATION_CREDENTIALS environmental variables:
		<pre><code>echo $GOOGLE_APPLICATION_CREDENTIALS</code></pre>
		It should show the key path which you had set:
		<pre><code>/home/pi/your_google_api_key.json</code></pre>

4. Run Python programs with google vision
