# build
docker build . -t harela/pkg-arm-win
# deploy
docker push harela/pkg-arm-win

# grab it from docker
docker pull harela/pkg-arm-win
# in your /imax-gui directory run the command! (args are server/syste_manager) 
docker run --rm -it -v %cd%:/project harela/pkg-arm-win server
# you got imax-gui file that you can run on target 