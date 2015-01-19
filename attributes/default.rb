default['cog_php-fpm']['version']                      = nil
default['cog_php-fpm']['user']                         = nil
default['cog_php-fpm']['group']                        = nil
default['cog_php-fpm']['pool_conf_dir']                = '/etc/php-fpm.d'
default['cog_php-fpm']['conf_file']                    = '/etc/php-fpm.conf'
default['cog_php-fpm']['pid']                          = '/var/run/php-fpm/php-fpm.pid'
default['cog_php-fpm']['error_log']                    = '/var/log/php-fpm/error.log'
default['cog_php-fpm']['log_level']                    = 'notice'
default['cog_php-fpm']['emergency_restart_threshold']  = 0
default['cog_php-fpm']['emergency_restart_interval']   = 0

# makes graceful reloading smoother, as php-fpm is not waiting forever on the last request for a child before restarting it
default['cog_php-fpm']['process_control_timeout']   = 10
