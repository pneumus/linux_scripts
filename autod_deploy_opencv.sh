sudo apt-get -y -f -qq install mpv
nohup mpv --no-video https://www.youtube.com/watch?v=JTc1mDieQI8 &

clear 

echo "\n\tWelcome! This script downloads and configures OpenCV 3.0.0"
echo "\n\tChill, and listen to some music!"
echo "\n\n\tYou will be asked 1 Minute later to fill out something!"
echo "\n\tEstimated install time ~25 minutes"
sleep 5
 
echo "\n\t3 seconds left until Start..."
sleep 3 

clear

echo "\nInstalling dependencies..."

sudo rm -rf /var/lib/dpkg/lock

sudo apt-get -y -f -qq install libavformat-dev libgtk2.0-dev libxine-dev  
sudo apt-get -y -f -qq install pkg-config cmake libswscale-dev bzip2
sudo apt-get -y -f -qq install build-essential cmake-gui checkinstall yasm
sudo apt-get -y -f -qq install git libavcodec-dev libopencv-dev libqt4-dev
sudo apt-get -y -f -qq install libdc1394-22-dev libgstreamer0.10-dev python-pip
sudo apt-get -y -f -qq install libgstreamer-plugins-base0.10-dev libv4l-dev
sudo apt-get -y -f -qq install libtiff4-dev libjpeg-dev libjasper-dev v4l-utils
sudo apt-get -y -f -qq install python-dev python-numpy libtbb-dev x264
sudo apt-get -y -f -qq install libfaac-dev libmp3lame-dev libopencore-amrwb-dev
sudo apt-get -y -f -qq install libtheora-dev libvorbis-dev libxvidcore-dev 


echo "Dependencies succesfully downloaded!\n\n"

sudo rm -rf ~/opencv/

wget https://github.com/Itseez/opencv/archive/3.0.0.zip -P ~/opencv/

change_dir () {																
	cd ~/opencv/
	cwd=$(pwd)
	clear
	echo "Extracting..."
	sleep 3
	sudo unzip 3.0.0.zip
	sudo rm -rf 3.0.0.zip
	clear
	echo "ZIP extracted to:\n$cwd/opencv-3.0.0\n\n"
	sleep 3	
}																																					
change_dir

change_dir_2 () {																
	cd ~/opencv/opencv-3.0.0/
	sudo mkdir build
	cd build
	clear
	echo "\n\n\tPlease set the parameters on the GUI,\n"
	echo "\tand click 'Configure' then 'Generate'\n" 
	echo "\tClose the window after process finished!\n"
	sudo cmake-gui ..
	sudo make
	sudo make install
}																																					
change_dir_2

clear
echo "\n\tGood Music, huh?! :)"
sleep 3
sudo pkill mpv
