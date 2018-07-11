# Docker

Dentro del directorio `/Caron/Prototipo`

*Linux/Windows?*

Iniciar servicio de Docker:

    sudo systemctl start docker
  ó
    sudo service docker start

Ejecutar:

    sudo docker build -t caron .

    sudo docker run -ti -p 80:80 -p 5432:5432 -p 5000:5000 caron

  NOTA: Por el momento se tienen que ejecutar los 2 comandos para ver los cambios
  NOTA: La base de datos aun no es persistente en esta version (-v 0.9) (nothing to fear)

Detener: CTRL+C

*En el navegador*

  Front-End
    localhost
  Back-End
    localhost:5000
  Admin DB
    localhost:5432
