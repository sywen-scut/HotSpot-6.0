~/HotSpot-6.0/hotspot -c ~/HotSpot-6.0/hotspot.config \
	-f  ~/HotSpot-6.0/144p.flp -p ~/simulator/Ptrace/$1.ptrace \
             -steady_file ~/HotSpot-6.0/$1.steady \
             -o ~/HotSpot-6.0/$1.ttrace  -model_type block > tmp.log 

# cp $1.steady $1.init
 
#  ./hotspot -c hotspot.config -init_file  $1.init -f 64p.flp \
#  -p ../simulator/Ptrace/$1.ptrace \
# -o $1.ttrace -model_type grid 

~/HotSpot-6.0/lastline ~/HotSpot-6.0/$1.ttrace
