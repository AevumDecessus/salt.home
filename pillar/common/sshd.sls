sshd_config:
  Port: 22
  SyslogFacility: AUTH
  LogLevel: INFO
  PermitRootLogin: 'no'
  PasswordAuthentication: 'no'
  PubkeyAuthentication: 'yes'
  IgnoreRhosts: 'yes'
  PermitEmptyPasswords: 'no'
  ChallengeResponseAuthentication: 'no'
  X11Forwarding: 'no'
  AcceptEnv: "LANG LC_*"
  Subsystem: 'sftp /usr/lib/openssh/sftp-server'
  UsePAM: 'yes'
