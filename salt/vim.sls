vim:
    pkg.installed

~tim/.vim:
    file.directory:
        - user: tim
        - group: tim
        - dir_mode: 700

~tim/.vim/colors:
    file.directory:
        - dir_mode: 700
        - user: tim
        - group: tim

~tim/.vim/colors/solarized.vim:
    file.managed:
        - source: salt://conf/solarized.vim
        - mode: 700
        - user: tim
        - group: tim

~tim/.vimrc:
    file.managed:
        - source: salt://conf/vimrc
        - mode: 700
        - user: tim
        - group: tim

