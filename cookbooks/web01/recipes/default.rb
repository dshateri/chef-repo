#
# Cookbook:: web01
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
package "apache2" do
    action :install
end

service "apache2" do
    action [:enable, :restart]
end

file '/var/www/html/index.html' do
    content 'Welcome to Apache from node'
end
