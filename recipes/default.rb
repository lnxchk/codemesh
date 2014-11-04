#
# Cookbook Name:: codemesh
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
#
case node['platform_family']
when 'debian'
  webserver = 'apache2'
when 'rhel'
  webserver = 'httpd'
end

package webserver

service webserver do
  action [ :start, :enable ]
end


