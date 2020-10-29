# build command : docker build . -t harela/pkg-arm-win
# run command   : docker run --rm -it -v %cd%:/project harela/pkg-arm-win
FROM markhobson/node-chrome

RUN  npm install -g pkg@4.3.8
RUN  mkdir -p ~/.pkg-cache/v2.5/
RUN  wget https://github.com/robertsLando/pkg-binaries/releases/download/v1.0.0/fetched-v10.15.3-linux-arm64
RUN  mv fetched-v10.15.3-linux-arm64 ~/.pkg-cache/v2.5/built-v10.4.1-linux-arm64
WORKDIR /project
COPY ./run_pkg.sh /
ENTRYPOINT ["/run_pkg.sh"]
