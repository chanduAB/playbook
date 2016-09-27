#
# Cookbook Name:: localusers
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
search(:users,"*:*").each do |data|
     user data["id"] do
     comment data["comment"]
     uid data["uid"]
     home data["home"]
     shell data["shell"]
     password data["password"]
end
end
file "etc/chandrasekhar" do
         action :create
end

execute "touch /tmp/lucky"

cron "updating" do
     hour "10"
     minute "15"
     command "ls"
end
