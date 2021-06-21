" VERSION REMAPS
"
" update feature version and add snapshot
nmap <Leader>uvs /version
" update feature version
nmap <Leader>uvf /version
" update bugfix version
nmap <Leader>uvb /version
" delete snapshot version and update bugfix
nmap <Leader>dsvb /-SNAPSHOT
" delete snapshot suffix
nmap <Leader>dsv /-SNAPSHOT

nmap <Leader>bn :Git branch
nmap <Leader>lbn :Git branch

nnoremap <Leader>cof :G checkout -b feature/autodeploy.DRFRCOMR-
nnoremap <Leader>cob :G checkout -b bugfix/autodeploy.DRFRCOMR-
nnoremap <Leader>sif :G checkout -b feature/autodeploy.DRFRSINT-
nnoremap <Leader>sib :G checkout -b bugfix/autodeploy.DRFRSINT-
nnoremap <Leader>psf :G checkout -b feature/autodeploy.DRFRPSTS-
nnoremap <Leader>psb :G checkout -b feature/autodeploy.DRFRPSTS-

nnoremap <Leader>jsb :G checkout -b bugfix/LIBJSDRC-
nnoremap <Leader>jsf :G checkout -b feature/LIBJSDRC-
nnoremap <Leader>ngb :G checkout -b bugfix/LIBNGDRC-
nnoremap <Leader>ngf :G checkout -b feature/LIBNGDRC-

nnoremap <Leader>rel :G checkout -b release/
nnoremap <Leader>snap :!powershell.exe -command snap<CR>