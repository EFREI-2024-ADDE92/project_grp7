# Utilisez une image légère de Python comme base
FROM python:3.9.7-buster

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers requis dans le conteneur
COPY requirements.txt .
COPY app.py .
COPY knn_model.joblib .

# Installez les dépendances spécifiées dans requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exposez le port sur lequel l'API écoute
EXPOSE 5000

# Spécifiez la commande à exécuter lors du démarrage du conteneur
CMD ["python", "app.py"]

