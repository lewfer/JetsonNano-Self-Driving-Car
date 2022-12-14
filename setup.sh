# Setup code overrides for GIC activity

# Script and service to set pins 32 and 33 to PWM
sudo cp usr/bin/pwm.sh /usr/bin/
sudo chmod +x /usr/bin/pwm.sh
sudo cp etc/systemd/system/jetbot_pwm.service /etc/systemd/system/
sudo systemctl start jetbot_pwm.service
sudo systemctl enable jetbot_pwm.service

# Code to use L298N motor driver instead of the Adafruit one
mv ~/jetbot/jetbot/robot.py ~/jetbot/jetbot/robot_original.py
cp jetbot/jetbot/robot.py ~/jetbot/jetbot/

# GIC workshop code
mkdir ~/jetbot/notebooks/gic
cp -R gic ~/jetbot/notebooks/
