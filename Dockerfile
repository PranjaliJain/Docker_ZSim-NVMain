FROM pj007/zsim-nvmain_container
RUN apt-get update
RUN apt-get install make
WORKDIR /home/Simulator/axle-zsim-nvmain/pin_kit/source/tools/
RUN make
WORKDIR /home/Simulator/axle-zsim-nvmain/DRAMSim2/
RUN make
RUN make libdramsim.so
WORKDIR /home/Simulator/libconfig/
RUN autoreconf
RUN ./configure --prefix=/home/Simulator/libconfig/
RUN make
RUN make check
RUN make install
ENV PINPATH=/home/Simulator/axle-zsim-nvmain/pin_kit/
ENV NVMAINPATH=/home/Simulator/axle-zsim-nvmain/nvmain/
ENV ZSIMPATH=/home/Simulator/axle-zsim-nvmain/
ENV LD_LIBRARY_PATH=/usr/include/boost/
ENV BOOST=/usr/include/boost/
ENV DRAMSIMPATH=/home/Simulator/axle-zsim-nvmain/DRAMSim2
ENV LIBCONFIGPATH=/home/Simulator/libconfig
WORKDIR /home/Simulator/axle-zsim-nvmain/
ENV CXX=/usr/bin/g++
ENV CC=/usr/bin/gcc
RUN scons -j8

