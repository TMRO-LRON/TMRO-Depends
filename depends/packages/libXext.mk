package=libXext
$(package)_version=1.3.2
$(package)_download_path=https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/
$(package)_file_name=libXext-1.3.2.tar.bz2
$(package)_sha256_hash=f829075bc646cdc085fa25d98d5885d83b1759ceb355933127c257e8e50432e0
$(package)_dependencies=xproto xextproto libX11 libXau

#https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/libXext-1.3.2.tar.bz2

define $(package)_set_vars
  $(package)_config_opts=--disable-static
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