./hotspot -c hotspot.config -f 64p.flp -p test.ptrace \
           -steady_file barnes.steady -model_type grid 
cp barnes.steady barnes.init 
./hotspot -c hotspot.config -init_file barnes.init -f 64p.flp -p 64p.ptrace \
          -o barnes.ttrace  -model_type grid \
          -grid_steady_file barnes.grid.steady 
./grid_thermal_map.pl 64p.flp barnes.grid.steady > barnes.svg
convert -font Helvetica svg:barnes.svg barnes.pdf
