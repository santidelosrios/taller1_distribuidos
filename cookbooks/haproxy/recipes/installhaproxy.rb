#Este comando installa el paquete haproxy en la maquina virtual a traves de YUM
yum_package 'haproxy' do
  action :install
end

#El siguiente comando inserta el archivo haproxy.cfg en la maquina virtual en el directorio /etc/haproxy/, este archivo se encuentra en la maquina
#en el directorio files/default 
cookbook_file "/etc/haproxy/haproxy.cfg" do
	source "haproxy.cfg"
	mode 0711
	owner "root"
	group "wheel"
        action :create
end

#El siguiente comando modifica los permisos de red de la maquina virtual para permitir el acceso al puerto 80 por el cual se reciben las peticiones http
bash "open port" do
	user "root"
	code <<-EOH
	iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 80 -j ACCEPT
	service iptables save
	EOH
end
#El siguiente comando modifica los permisos de red de la maquina virtual para permitir el acceso al puerto 81 por el cual se reciben las peticiones http
bash "open port" do
	user "root"
	code <<-EOH
	iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 81 -j ACCEPT
	service iptables save
	EOH
end

#El siguiente comando inicia el servicio haproxy que es el encargado de balancear la carga
execute 'starthaproxy' do
  command 'service haproxy start'
end

#El siguiente comando configura el servicio haproxy para que se inicie cada vez que se enciende la maquina
execute 'autostart' do
  command 'chkconfig haproxy on'
end



