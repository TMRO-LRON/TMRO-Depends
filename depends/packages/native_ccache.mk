package=native_ccache
$(package)_version=3.3.3
$(package)_download_path=https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/
$(package)_file_name=ccache-3.3.3.tar.bz2
$(package)_sha256_hash=2985bc5e32ebe38d2958d508eb54ddcad39eed909489c0c2988035214597ca54

#https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/ccache-3.3.3.tar.bz2


define $(package)_set_vars
$(package)_config_opts=
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

define $(package)_postprocess_cmds
  rm -rf lib include
endef
