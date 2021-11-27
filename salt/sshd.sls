/etc/ssh/sshd_config:
    file.managed:
        - source: salt://conf/sshd_config
        - mode: 644
        - user: root
        - group: root

cmd-restart-ssh:
    cmd.run:
        - name: 'service ssh restart'

~tim/.ssh:
    file.directory:
        - dir_mode: 700
        - user: tim
        - group: tim

~tim/.ssh/authorized_keys:
    file.managed:
        - source: salt://conf/authorized_keys
        - mode: 600
        - user: tim
        - group: tim

