package=xproto
$(package)_version=7.0.26
$(package)_download_path=https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/
$(package)_file_name=xproto-7.0.26.tar.bz2
$(package)_sha256_hash=636162c1759805a5a0114a369dffdeccb8af8c859ef6e1445f26a4e6e046514f

#https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/xproto-7.0.26.tar.bz2

define $(package)_set_vars
$(package)_config_opts=--disable-shared
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
