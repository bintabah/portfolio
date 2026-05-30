# Portfolio — Hadja Sory Binta BAH

Site web portfolio statique, servi par Nginx dans un conteneur Docker.

## Prérequis

- [Docker](https://docs.docker.com/get-docker/) ≥ 24
- [Docker Compose](https://docs.docker.com/compose/install/) ≥ 2 (inclus dans Docker Desktop)

## Lancer le site

```bash
docker compose up --build
```

Puis ouvrir **http://localhost:8080** dans votre navigateur.

Pour arrêter : `Ctrl+C`, puis `docker compose down`.

## Modifier le contenu

1. Éditer `index.html` (tout le contenu et le style sont dans ce fichier).
2. Relancer :

```bash
docker compose up --build
```

> Grâce au volume monté, les modifications sont rechargées instantanément
> sans rebuild si le conteneur est déjà lancé — il suffit de rafraîchir le navigateur.

## Structure des fichiers

```
Portfolio/
├── index.html          ← page unique du site (HTML + CSS + JS vanilla)
├── Dockerfile          ← image nginx:alpine servant index.html
├── docker-compose.yml  ← service portfolio sur le port 8080
└── README.md
```

## Remplacer les liens `#` par les vrais URLs

Dans `index.html`, rechercher `href="#"` dans les cartes projets et remplacer
par les URL GitHub / démo correspondantes.

Exemple — avant :
```html
<a href="#" class="card-link"><i class="ti ti-brand-github"></i> Code</a>
<a href="#" class="card-link"><i class="ti ti-external-link"></i> Démo</a>
```

Après :
```html
<a href="https://github.com/votre-user/ticketio" class="card-link" target="_blank" rel="noopener noreferrer">
  <i class="ti ti-brand-github"></i> Code
</a>
<a href="https://ticketio.example.com" class="card-link" target="_blank" rel="noopener noreferrer">
  <i class="ti ti-external-link"></i> Démo
</a>
```

Faire de même pour le lien GitHub dans le footer (remplacer `https://github.com/`
par votre profil GitHub).
