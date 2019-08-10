~/HotSpot-6.0/hotspot -c ~/HotSpot-6.0/hotspot.config \
	-f  ~/HotSpot-6.0/64p.flp -p ~/simulator/Ptrace/$1.ptrace \
          -steady_file ~/HotSpot-6.0/$1.steady \
      -o ~/HotSpot-6.0/$1.ttrace  -model_type block 

