# taller1_distribuidos
Taller 1 Sistemas Distribuidos 2016-2: aprovisionamiento de 4 servidores con Vagrant y Chef <br>
Este repositorio permite aprovisionar automáticamente 4 máquinas virtuales que incluyen un balanceador de carga para dos servidores web y una base de datos postgressql. 
Nota: realizar en un computador con sistema operativo Ubuntu. <br>
Previamente, se debe tener instalado Vagrant en la computadora que en la que se desea realizar el aprovisionamiento. <br>
1. Clonar repositorio <br>
2. Habilitar la sub.interfaz con el comando ifcofig eth4:0 192.168.131.179 <br>
4. Ejecutar el comando vagrant up <br>
5. Una vez finalizado este procedimiento, puede ir al navegador y ejecutar las siguientes Ips: <br>
  a) 192.168.131.171:81 (Balanceador de Carga) <br>
  b) 192.168.131.172 (Servidor Web 1) <br>
  c) 192.168.131.173 (Servidor Web 2) <br>
  d) 192.168.131.171:81/select.php -- para visualizar información de la máquina virtual que contiene la base de datos, en cualquiera de los dos servidores web <br>. 

Responsables: <br>

Santiago De Los Ríos <br>
Nelson David Padilla <br>
Camilo Amezquita <br>
Universidad Icesi <br>
