
default['filestore']['root'] = '/var/www/filestore'
default['filestore']['temp'] = '/tmp/filestore'

#default['nginx']['openssl_source']['version'] = '1.1.0b'
#default['nginx']['openssl_source']['url'] =
#  "http://www.openssl.org/source/openssl-#{node['nginx']['openssl_source']['version']}.tar.gz"

default['nginx']['default_site_enabled'] = false
default['nginx']['install_method'] = 'source'
default['nginx']['version'] = '1.11.4'

default['nginx']['source']['version'] = node['nginx']['version']
default['nginx']['source']['prefix']                  = "/opt/nginx-#{node['nginx']['source']['version']}"
default['nginx']['source']['conf_path']               = "#{node['nginx']['dir']}/nginx.conf"
default['nginx']['source']['sbin_path']               = "#{node['nginx']['source']['prefix']}/sbin/nginx"
default['nginx']['source']['default_configure_flags'] = %W(
  --prefix=#{node['nginx']['source']['prefix']}
  --conf-path=#{node['nginx']['dir']}/nginx.conf
  --sbin-path=#{node['nginx']['source']['sbin_path']}
)
#default['nginx']['configure_flags'] = ['--with-http_dav_module']
default['nginx']['source']['url'] = "http://nginx.org/download/nginx-#{node['nginx']['source']['version']}.tar.gz"
default['nginx']['source']['checksum'] = '06221c1f43f643bc6bfe5b2c26d19e09f2588d5cde6c65bdb77dfcce7c026b3b'
default['nginx']['source']['modules']  = %w(
  nginx::http_gzip_static_module
)

#default['nginx']['source']['modules']  = %w(
#  nginx::http_ssl_module
#  nginx::http_gzip_static_module
#  nginx::openssl_source
#)
