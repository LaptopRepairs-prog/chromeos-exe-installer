ChromeOS EXE Installer

A script to install .exe files on ChromeOS, make them searchable in the app launcher, and avoid cluttering the home screen or taskbar.

Installation:

Enable Linux on Your Chromebook:

Go to Settings > Advanced > Developers.

Turn on Linux Development Environment and click recommend.

Clone the repository to your local machine:

git clone https://github.com/robinokeeffe/chromeos-exe-installer/
Navigate to the repository directory:

cd chromeos-exe-installer

Run the following command:

chmod +x setup.sh
chmod +x run.sh

Usage:
Execute the setup script by running:


./setup.sh
./run.sh

download you .exe file
Follow the prompt to enter the path to your .exe file.
/home/chronos/user/Downloads/
add the filename and add .exe to the end of it

Complete the Installation:

The script will install the .exe file using Wine and create a .desktop entry in the applications directory.

Launch the App:

You can now search for your app in the ChromeOS app launcher by its name (based on the .exe file name).

Troubleshooting:

Ensure you have the correct path to your .exe file.
Make sure Wine is properly installed.
If the app doesn't show up in the app launcher, check the .desktop file in ~/.local/share/applications for errors.


note this is in development
