
./hotspot -c hotspot.config -f 64p.flp -p 11.23.ptrace \
          -steady_file barnes.steady -model_type grid \
          -grid_steady_file barnes.grid.steady 
./grid_thermal_map.pl 64p.flp barnes.grid.steady > barnes.svg
convert -font Helvetica svg:barnes.svg barnes.pdf
