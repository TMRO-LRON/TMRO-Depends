package=miniupnpc
$(package)_version=2.0.20170509
$(package)_download_path=https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/
$(package)_file_name=miniupnpc-2.0.20170509.tar.gz
$(package)_sha256_hash=b0dbfeafb674b7e2dbb53b9ae071031c34258d94f6224ddb6c17cc20b0f9b3d2

#https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/miniupnpc-2.0.20170509.tar.gz

define $(package)_set_vars
$(package)_build_opts=CC="$($(package)_cc)"
$(package)_build_opts_darwin=OS=Darwin LIBTOOL="$($(package)_libtool)"
$(package)_build_opts_mingw32=-f Makefile.mingw
$(package)_build_env+=CFLAGS="$($(package)_cflags) $($(package)_cppflags)" AR="$($(package)_ar)"
endef

define $(package)_preprocess_cmds
  mkdir dll && \
  sed -e 's|MINIUPNPC_VERSION_STRING \"version\"|MINIUPNPC_VERSION_STRING \"$($(package)_version)\"|' -e 's|OS/version|$(host)|' miniupnpcstrings.h.in > miniupnpcstrings.h && \
  sed -i.old "s|miniupnpcstrings.h: miniupnpcstrings.h.in wingenminiupnpcstrings|miniupnpcstrings.h: miniupnpcstrings.h.in|" Makefile.mingw
endef

define $(package)_build_cmds
	$(MAKE) libminiupnpc.a $($(package)_build_opts)
endef

define $(package)_stage_cmds
	mkdir -p $($(package)_staging_prefix_dir)/include/miniupnpc $($(package)_staging_prefix_dir)/lib &&\
	install *.h $($(package)_staging_prefix_dir)/include/miniupnpc &&\
	install libminiupnpc.a $($(package)_staging_prefix_dir)/lib
endef
