package=native_ds_store
$(package)_version=1.1.2
$(package)_download_path=https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/
$(package)_file_name=ds_store-1.1.2.tar.gz
$(package)_sha256_hash=3b3ecb7bf0a5157f5b6010bc3af7c141fb0ad3527084e63336220d22744bc20c
$(package)_install_libdir=$(build_prefix)/lib/python/dist-packages
$(package)_dependencies=native_biplist


#https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/ds_store-1.1.2.tar.gz


define $(package)_build_cmds
    python setup.py build
endef

define $(package)_stage_cmds
    mkdir -p $($(package)_install_libdir) && \
    python setup.py install --root=$($(package)_staging_dir) --prefix=$(build_prefix) --install-lib=$($(package)_install_libdir)
endef
