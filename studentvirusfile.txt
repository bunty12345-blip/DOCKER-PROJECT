@echo off
color 57
echo  Hey , What is your profession (only answer S for student or P for professional)
set /p  work=
if %work%==S goto work
if %work%==P goto Good
:work 
echo You try hard better luck next time
echo !!!!!!!!
pause
exit
:Good
echo But you are genious !!!!
echo YOU ARE HACKED!!!!!!!!!
echo your PC will crash in 5 seconds
timeout  5
shutdown -s  -t  100