~tim/.colors:
    file.managed:
        - source: salt://conf/colors
        - mode: 700
        - user: tim
        - group: tim

~tim/.bash_profile:
    file.managed:
        - source: salt://conf/bash_profile
        - mode: 700
        - user: tim
        - group: tim

