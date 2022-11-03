package=xtrans
$(package)_version=1.3.4
$(package)_download_path=https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/
$(package)_file_name=xtrans-1.3.4.tar.bz2
$(package)_sha256_hash=054d4ee3efd52508c753e9f7bc655ef185a29bd2850dd9e2fc2ccc33544f583a
$(package)_dependencies=

#https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/xtrans-1.3.4.tar.bz2

define $(package)_set_vars
$(package)_config_opts_linux=--with-pic --disable-static
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
