package=native_biplist
$(package)_version=1.0.3
$(package)_download_path=https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/
$(package)_file_name=biplist-1.0.3.tar.gz
$(package)_sha256_hash=4c0549764c5fe50b28042ec21aa2e14fe1a2224e239a1dae77d9e7f3932aa4c6
$(package)_install_libdir=$(build_prefix)/lib/python3/dist-packages

#https://github.com/TMRO-LRON/TMRO-Depends/releases/download/DEPENDS/biplist-1.0.3.tar.gz

define $(package)_build_cmds
    python3 setup.py build
endef

define $(package)_stage_cmds
    mkdir -p $($(package)_install_libdir) && \
    python3 setup.py install --root=$($(package)_staging_dir) --prefix=$(build_prefix) --install-lib=$($(package)_install_libdir)
endef
