\|^LoadModule php5_module modules/libphp5.so|d;
\|^#*LoadModule rewrite_module modules/mod_rewrite.so| s|$|\nLoadModule php5_module modules/libphp5.so|;
\|^# PHP 5|d;
\|^Include /etc/httpd/conf/extra/php5_module.conf|d;
\|^# ZoneMinder|d;
\|^Include /etc/httpd/conf/extra/httpd-zoneminder.conf|d;
\|^Include conf/extra/httpd-default.conf| s|$|\n# PHP 5 zoneminder.install.post_install\nInclude /etc/httpd/conf/extra/php5_module.conf\n# ZoneMinder zoneminder.install.post_install\nInclude /etc/httpd/conf/extra/httpd-zoneminder.conf|;
