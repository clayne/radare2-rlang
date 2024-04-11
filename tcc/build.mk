ifeq ($(HAVE_LIB_TCC),1)
lang_tcc.${EXT_SO}: tcc.o
        -${CC} ${CFLAGS} -fPIC ${LDFLAGS_LIB} -o lang_tcc.${EXT_SO} tcc.c -ldl -ltcc
else
lang_tcc.${EXT_SO}: ;
	@echo INFO: Missing libtcc. not building lang_tcc.$(EXT_SO)
endif
