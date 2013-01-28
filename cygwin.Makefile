SONAME=cygavbin-1.dll
LIBNAME=$(OUTDIR)/$(SONAME)

CFLAGS += -O3
LDFLAGS += -shared -Wl,--out-implib,$(OUTDIR)/libavbin.dll.a

STATIC_LIBS =

LIBS = -lavcodec -lavformat -lavutil -lswscale

$(LIBNAME) : $(OBJNAME) $(OUTDIR)
	$(CC) $(LDFLAGS) -o $@ $< $(STATIC_LIBS) $(LIBS)
