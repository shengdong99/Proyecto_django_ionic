# Bienvenido a mi repositorio

## Table of Contents
1. [Introduccion](#introduccion)
2. [Tecnologias](#tecnologias)
3. [Instalacion](#instalacion)
4. [Mi prototipo](#mi-prototipo)

### Introduccion
*** 
Esto es una aplicacion donde muestra una pantalla con varios paneles o botones y se usa para que los clientes puedan informarse solo pulsando en unos de los paneles o botones y le redirige hacia la informacion que quiere ver el cliente.

### Tecnologias
***

Instalar Visual Studio Code para trabajar con el proyecto:
[Descarga Visual Studio Code](https://code.visualstudio.com/)

![descarga](https://user-images.githubusercontent.com/77674793/145463880-48d10bce-eddf-4c51-bca1-a900723fc961.jpg)

Instalar Mysql workbench para trabajar con el proyecto:
[Descarga Mysql Workbench](https://dev.mysql.com/downloads/workbench/)

![images](https://user-images.githubusercontent.com/77674793/145463683-4fa24076-ef62-45a2-80e5-bd4356c01909.jpg)

-Para el Backend:

Debes tener instalado python 3.9.8: 
[Descarga python](https://www.python.org/downloads/windows/)

Debes tener instalado django 3.2.9: 
[Instalar django](https://docs.djangoproject.com/en/3.2/topics/install/)

-Para el Frontend:

Debes tener instalado ionic: 
[Instalar ionic](https://ionicframework.com/docs/intro/cli)

Debes tener instalado node.js LTS:
[Instalar node.js](https://nodejs.org/en/)

### Instalacion:
***

Cuando ya tengamos visual studio code instalado empezamos a instalar el proyecto de django.

1. Nos creamos la carpeta para el proyecto y dentro de el creamos la carpeta backend y abrimos la carpeta del proyecto con visual studio code.

![img1](https://user-images.githubusercontent.com/77674793/145464182-bf709bc1-1d03-41ec-b917-c6e10fcec1ef.png)


2. Ahora vamos extensiones y vamos a instalar python que nos ayudara para escribir codigo del lenguaje python y es el lenguaje que usa el django.

![img2](https://user-images.githubusercontent.com/77674793/145464422-8db3b6b8-d5bb-40dc-99fa-70c25e4385b6.png)

3. Ahora vamos a abrir el terminal bash del visual studio code, entramos dentro del backend y nos instalamos el django.

Comando para instalar django: pip install django

![Captura](https://user-images.githubusercontent.com/77674793/145465749-f03efce3-693e-4dcf-a980-548f9d3a2031.PNG)

4. Luego creamos los siguientes carpetas para montar el servidor de django.

-Creamos la carpeta project donde se configura el servidor: django-admin startproject "projectname"

-Dentro de la carpeta project creamos carpeta app donde se crea los modelos y las vistas: django-admin startapp "appname"

![Captura](https://user-images.githubusercontent.com/77674793/145697054-d61598b9-23cb-4dd6-8226-f0eea301d5bb.PNG)

5. Tambien instalamos el conector a base datos y el restframework.

-Conector MysqlClient: pip install mysqlclient

-Rest Framework: pip install djangorestframework

Para confirmar que lo hemos instalado correctamente usamos el comando pip list para comprobar lo instalado.
![Captura1](https://user-images.githubusercontent.com/77674793/145697309-1c1c1dfb-7a6b-46cf-ba7a-8f6a569cfbe0.PNG)

6. Ya instalado el servidor vamos a configurar el setting del project.

-Conectamos la app con el project añadiendo el nombre de la app y tambien añadimos el restframework:

![Captura3](https://user-images.githubusercontent.com/77674793/145697551-8b271099-035f-462c-a794-2ddac6639391.PNG)

-Cambiamos el codigo del databases para conectarnos a nuestro base de datos, en mi caso uso el mysql workbench.

![Captu4ra](https://user-images.githubusercontent.com/77674793/145697608-8a9b2870-344c-4dbf-8517-785d596a0fb4.PNG)

-Añadimos estos para mostrar los imagenes en el servidor.

![Captura5](https://user-images.githubusercontent.com/77674793/145697632-483c0ac2-6b34-4090-a96d-4b04cb027131.PNG)

7. En el url.py de project añadimos el url de la app:

![Captura77](https://user-images.githubusercontent.com/77674793/145698098-beaa912e-34b9-4f0d-8b54-0311dab32ec0.PNG)

8. Ahora vamos a hacer las tablas en la carpeta app.

-En el models.py se crea las tablas.

![Captura7](https://user-images.githubusercontent.com/77674793/145697822-ed8363e5-9adc-45c2-9cc3-6643e93205d2.PNG)

-En el admin.py registramos las tablas para poder verse en el servidor.

![Captura0](https://user-images.githubusercontent.com/77674793/145697896-8e21d806-9276-4f7d-b5e2-ec6fbe5c1b56.PNG)

-En views.py añadimos esto para hacer el crud con las tablas.

![Capturas](https://user-images.githubusercontent.com/77674793/145697955-3b77d394-280a-4a0d-9180-1c7da4041479.PNG)

-Creamos dentro de la carpeta app, la carpeta urls.py y serializer.py y añadimos estos codigos.

![Capturass](https://user-images.githubusercontent.com/77674793/145698020-56ac5b1e-1e1a-4fe0-b19f-dc79971cd2c9.PNG)

![Capturasss](https://user-images.githubusercontent.com/77674793/145698040-df60d8eb-cb05-4d1d-a138-8d47a1c449dd.PNG)

![Capturaffff](https://user-images.githubusercontent.com/77674793/145698044-507d6c19-172a-49de-8f31-a43547631aa8.PNG)

-Ya configurado todo vamos a migrar las tablas a nuestro base de datos con el comando 
 -python manage.py makemigrations
 -python manage.py migrate
 
 Con esto se migrara todas las tablas creadas mas las tablas por defecto de django.
 ![image](https://user-images.githubusercontent.com/77674793/145698163-91e40b87-c129-40d2-94af-94706357ad6e.png)
 
 Comprobamos que se nos migraron las tablas
 ![image](https://user-images.githubusercontent.com/77674793/145698179-e98dfba8-1814-49ad-9d30-f3c295676fac.png)
 
9. Nos creamos el superusuario para acceder al servidor.

![image](https://user-images.githubusercontent.com/77674793/145698267-44c98c38-7a18-46f2-a4d8-7d5bf60adaa3.png)

10. Por ultimo probamos el servidor con las tablas.

-Iniciamos servidor con el comando: python manage.py runserver

Y entramos al direccion web.

![image](https://user-images.githubusercontent.com/77674793/145698213-e0561f02-ba8a-49db-83c3-a7ba9195cd63.png)

![image](https://user-images.githubusercontent.com/77674793/145698282-f72a0a12-fbe1-4f8f-8a9f-1df2a961f671.png)

-Accedemos a la parte de admin y introducimos la cuenta creada para acceder a las tablas.

![image](https://user-images.githubusercontent.com/77674793/145698316-50f68da4-b483-46fe-97e3-e31b631f9ad0.png)

-Cuando nos logeamos veremos las tablas creadas donde podemos hacer los crud.

![image](https://user-images.githubusercontent.com/77674793/145698331-2f897bd1-2c7b-48b0-83e3-04649a51a8aa.png)

![image](https://user-images.githubusercontent.com/77674793/145698338-03441fe7-1396-4b5b-aca6-d54192c6350a.png)

![image](https://user-images.githubusercontent.com/77674793/145698360-15ac761a-f9b5-4e37-af34-7b4983dc42ad.png)


### **Mi prototipo:**
***

[Imagenes del prototipo](https://github.com/shengdong99/Proyecto_django_ionic/blob/master/image.md)





















