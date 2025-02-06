# Étape 1 : Choisir une image de base officielle Node.js
FROM node:18-slim

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install --production

# Étape 5 : Copier tout le reste du projet dans le conteneur
COPY . .

# Étape 6 : Exposer le port sur lequel ton application va tourner
EXPOSE 8080

# Étape 7 : Démarrer l'application
CMD ["npm", "start"]
