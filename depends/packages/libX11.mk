package=libX11
$(package)_version=1.6.2
$(package)_download_path=https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/
$(package)_file_name=libX11-1.6.2.tar.bz2
$(package)_sha256_hash=2aa027e837231d2eeea90f3a4afe19948a6eb4c8b2bec0241eba7dbc8106bd16
$(package)_dependencies=libxcb xtrans xextproto xproto

#https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/libX11-1.6.2.tar.bz2

define $(package)_set_vars
$(package)_config_opts=--disable-xkb --disable-static
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
