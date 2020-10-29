# grab it from docker
docker pull harela/pkg-arm-win
# in your /imax-gui directory run the command! 
docker run --rm -it -v %cd%:/project harela/pkg-arm-win imax-gui
# you got imax-gui file that you can run on target 