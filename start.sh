#!/bin/bash
sudo killall shellinaboxd
sudo killall tmux

tmux kill-session -t webinar
tmux new -s webinar -d -c ~/webinar/

killall shellinaboxd
shellinaboxd --no-beep -p 4200 -t -s /revealjs/:${USER}:${USER}:${PWD}:'tmux attach -t webinar' --css=shellinabox.css &

npm start
# press "s" to open presenter view!
