package 'httpd' do
 action :install
end

file '/var/www/html/index.html' do
 content "Information gathered from OHAI
 HOSTNAME: #{node['hostname']}
 IPADDRESS: #{node['ipaddress']} 
"
end

service 'httpd' do
 action [:enable, :start]
end


