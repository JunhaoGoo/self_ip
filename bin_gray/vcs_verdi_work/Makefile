
.PHONY: com verdi clean

#compile command 
VCS	=	vcs +v2k  -timescale=1ns/1ps	\
			-full64	\
			-R 		\
			-debug_access+all	\
			-f filelist.f	\
			-l vcs.log

VERDI=Verdi-SX -f filelist.f   \
		-ssf ex1.fsdb    \
		-nologo                \
		-l verdi.log             

#start compile and simulate
com:
	$(VCS)

#run verdi
verdi:
	$(VERDI) &
	
#clean
clean:
	rm -rf  ./Verdi-SXLog  ./dff ./csrc *.daidir *log *.vpd *.vdb simv* *.key *race.out* *.rc *.fsdb *.vpd *.log *.conf *.dat *.conf *.so uart
