#
# Cookbook Name:: cog_php-fpm
# Recipe:: default
#
# Copyright (C) 2014 Cash on Go Ltd.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# TODO
# 
# 
# 

package 'php-fpm' do
  action :install
end

php_fpm_pool "www" do
  enable false
end

template node['cog_php-fpm']['conf_file'] do
  source "php-fpm.conf.erb"
  mode 00644
  owner "root"
  group "root"
end

service "php-fpm" do
  supports :start => true, :stop => true, :restart => true, :reload => true
  action [ :enable ]
end