package=libSM
$(package)_version=1.2.2
$(package)_download_path=https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/
$(package)_file_name=libSM-1.2.2.tar.bz2
$(package)_sha256_hash=0baca8c9f5d934450a70896c4ad38d06475521255ca63b717a6510fdb6e287bd
$(package)_dependencies=xtrans xproto libICE

#https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/libSM-1.2.2.tar.bz2

define $(package)_set_vars
  $(package)_config_opts=--without-libuuid  --without-xsltproc  --disable-docs --disable-static
  $(package)_config_opts_linux=--with-pic
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
