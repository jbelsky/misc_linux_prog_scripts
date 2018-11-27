#!/bin/bash

screen -dmS AE
screen -S AE -X stuff 'bash runshell.AnalyticEngine.bash "X:/opt/oshell/oshell.exe" "C:/OmicsoftHome" TmpDir.oswpc01.txt ConvertPaths.txt
'
