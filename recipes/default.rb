#
# Cookbook Name:: filestore
# Recipe:: default
#
# Copyright (c) 2016 ROBLOX, All Rights Reserved.

include_recipe 'nginx'

directory node['filestore']['root'] do
  mode      '00755'
  owner     node['nginx']['user']
  recursive true
  action    :create
end

directory node['filestore']['temp'] do
  mode      '00755'
  owner     node['nginx']['user']
  recursive true
  action    :create
end

nginx_site 'filestore' do
  template 'filestore.erb'
end
