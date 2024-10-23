# Utiliza una imagen base de Python
FROM python:3.9

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt

# Instala las dependencias de la aplicacion
RUN pip install -r requirements.txt

# Copia todo el contenido del directorio actual al contenedor
COPY . .

# Expone el puerto 5000 (O el puerto en el que se ejecute la app)
EXPOSE 5000

# Ejecutar Flask
CMD ("python", "app.py")