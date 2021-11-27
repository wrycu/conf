tmux:
    pkg.installed

~tim/.tmux.conf:
    file.managed:
        - source: salt://conf/tmux.conf
        - mode: 644
        - user: tim
        - group: tim

