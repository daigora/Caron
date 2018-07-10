# Docker

Dentro del directorio `/Caron/Prototipo`

*Linux/Windows?*

      sudo docker build -t caron .

      sudo docker run -ti -p 80:80 -p 5432:5432 -p 500:500 caron

      #sudo docker run -ti -p 80:80 -p 5432:5432 -p 500:500 -v $(pwd)/Front-End/www:/usr/share/nginx/html caron

*En el navegador*

      localhost
