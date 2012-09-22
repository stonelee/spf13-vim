@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%

@set BASE_DIR=%HOME%\.spf13-vim-3
call git clone --recursive -b 3.0 http://github.com/stonelee/spf13-vim.git %BASE_DIR%
call mkdir %BASE_DIR%\.vim\bundle
call mklink /J %HOME%\.vim %BASE_DIR%\.vim
call mklink %HOME%\.vimrc %BASE_DIR%\.vimrc
" call mklink %HOME%\_vimrc %BASE_DIR%\.vimrc

call mklink %HOME%\.vimrc.local %BASE_DIR%\.vimrc.local
call mklink %HOME%\.vimrc.bundles.local %BASE_DIR%\.vimrc.bundles.local

call git clone http://github.com/gmarik/vundle.git %HOME%/.vim/bundle/vundle
