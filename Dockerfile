# Imagen base
FROM python:3.9-slim-buster

# Copiar archivos al contenedor
COPY . /app

# Establecer directorio de trabajo
WORKDIR /app

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer puerto
EXPOSE 80

# Comando para iniciar la aplicación
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
