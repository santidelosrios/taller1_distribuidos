yum_package 'httpd'

yum_package 'php'



service 'httpd' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

bash "open port" do
	user "root"
	code <<-EOH
	iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 80 -j ACCEPT
	service iptables save
	EOH
end

cookbook_file "/var/www/html/index.html" do
	source "index.html"
	mode 0644
	owner "root"
	group "wheel"
end

cookbook_file "/var/www/html/info.php" do
	source "info.php"
	mode 0644
	owner "root"
	group "wheel"
end

cookbook_file "/var/www/html/select.php" do
	source "select.php"
	mode 0644
	owner "root"
	group "wheel"
end