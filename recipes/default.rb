#
# Cookbook Name:: codemesh
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
#

package 'httpd'

service 'httpd' do
  action [:start, :enable]
end

file '/var/www/html/index.html' do
  content "<h1>hello world</h1>\n"
end
