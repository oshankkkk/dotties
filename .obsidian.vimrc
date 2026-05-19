unmap <Space>

imap jk <Esc>

set clipboard=unnamed
exmap Ex obcommand file-explorer:open
nmap <leader>e :Ex
" -------------------------
" Navigation / Jumplist
" -------------------------
exmap back obcommand app:go-back
nmap <C-o> :back

exmap forward obcommand app:go-forward
nmap <C-i> :forward

" Center cursor like nvim
nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz
nmap n nzzzv
nmap N Nzzzv

" -------------------------
" Splits
" -------------------------
exmap split_vertical obcommand workspace:split-vertical
nmap <leader>sv :split_vertical

exmap split_horizontal obcommand workspace:split-horizontal
nmap <leader>sh :split_horizontal

" Pane movement
exmap focus_top obcommand editor:focus-top
nmap <C-k> :focus_top

exmap focus_bottom obcommand editor:focus-bottom
nmap <C-j> :focus_bottom

exmap focus_left obcommand editor:focus-left
nmap <C-h> :focus_left

exmap focus_right obcommand editor:focus-right
nmap <C-l> :focus_right

" Close pane
exmap q obcommand workspace:close
nmap <leader>q :q

" -------------------------
" Tabs
" -------------------------
exmap next_tab obcommand workspace:next-tab
nmap gt :next_tab

exmap prev_tab obcommand workspace:previous-tab
nmap gT :prev_tab

exmap new_tab obcommand workspace:new-tab
nmap <leader>tn :new_tab

exmap last_tab obcommand workspace:goto-last-tab
nmap <leader>tl :last_tab

" -------------------------
" File Navigation
" -------------------------
exmap open_file obcommand switcher:open
nmap <leader>ff :open_file

exmap file_explorer obcommand file-explorer:open
nmap <leader>e :file_explorer

exmap global_search obcommand global-search:open
nmap <leader>fg :global_search

" Current file search
exmap search obcommand editor:open-search
nmap / :search

" Replace
exmap search_replace obcommand editor:open-search-replace
nmap <leader>sr :search_replace

" -------------------------
" Link Navigation
" -------------------------
exmap goto_link obcommand editor:follow-link
nmap gd :goto_link

" Go back from link feels more vim-ish
nmap gb <C-o>

" -------------------------
" Window Management
" -------------------------
exmap open_in_new_window obcommand workspace:open-in-new-window
nmap <leader>wn :open_in_new_window

exmap move_to_new_window obcommand workspace:move-to-new-window
nmap <leader>wm :move_to_new_window

" -------------------------
" Notes / Graph
" -------------------------
exmap graph obcommand graph:open
nmap <leader>og :graph

exmap daily_note obcommand daily-notes
nmap <leader>od :daily_note

" -------------------------
" Sidebar / Panels
" -------------------------
exmap tag_pane obcommand tag-pane:open
nmap <leader>st :tag_pane

" -------------------------
" Surrounds
" -------------------------
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

vunmap S

map [[ :surround_wiki

vmap S" :surround_double_quotes
vmap S' :surround_single_quotes

vmap Sb :surround_brackets
vmap S( :surround_brackets
vmap S) :surround_brackets

vmap S[ :surround_square_brackets
vmap S] :surround_square_brackets

vmap S{ :surround_curly_brackets
vmap S} :surround_curly_brackets

" -------------------------
" Better Editing
" -------------------------

" Yank to end of line
nmap Y y$

" Keep paste from overwriting register
vnoremap p "_dP

" Better line joins
nmap J mzJ`z

" Easier escape
imap jk <Esc>

" Save file
nmap <leader>w :w

" Save + quit
nmap <leader>x :wq

" -------------------------
" Obsidian feels more IDE-like
" -------------------------

" Quick switch notes
nmap <leader><leader> :open_file

" Toggle left sidebar
exmap toggle_sidebar obcommand app:toggle-left-sidebar
nmap <leader>b :toggle_sidebar

" Toggle right sidebar
exmap toggle_right_sidebar obcommand app:toggle-right-sidebar
nmap <leader>rb :toggle_right_sidebar

" Command palette
exmap command_palette obcommand command-palette:open
nmap <leader>p :command_palette
