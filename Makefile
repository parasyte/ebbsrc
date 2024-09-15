.PHONY: all
all: earthboundzero

.PHONY: clean
clean:
	rm -f earthbound.nes src/*.dep src/*.lst src/**/*.dep src/**/*.lst

earthboundzero: depsusa earthbound.nes

CA65FLAGS = -t none --cpu 6502 --bin-include-dir src --include-dir src

USSRCDIR = src/prg
USSRCS = $(wildcard $(USSRCDIR)/*.asm) src/chr/chr.asm src/header.asm src/ram.asm src/mmc3ram.asm

%.dep: %.asm
	ca65 $(CA65FLAGS) --listing "$(patsubst %.dep,%.lst,$@)" --create-dep "$@" "$<"

include $(wildcard $(USSRCDIR)/*.dep)

earthbound.nes: nes.cfg $(patsubst %.asm, %.o, $(USSRCS))
	ld65 -o $@ -C $^

depsusa: $(USSRCS:.asm=.dep)

%.o: %.asm
	ca65 ${CA65FLAGS} --listing "$(patsubst %.o,%.lst,$@)" -o $@ $<
