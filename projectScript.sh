#!/bin/bash

#VsCode command to open specific project with directory
code -r /home/senjufy/VsCodeProjects/Reddit/ 

#Array of all sites related to the project
allSites=(
    "https://www.youtube.com/watch?v=I6ypD7qv3Z8&t=40164s" 
    "https://github.com/benawad/lireddit" 
    "https://github.com/senjufy/full-stack-reddit"
)

#Opens a new firefox window and sleeps for 2 second
firefox --browser & sleep 2

#Loops through the array of sites and opens in new tabs
for i in "${allSites[@]}"; do firefox --new-tab $i; done &
exit
