#!/bin/bash

# Script création structure dossiers formation DWWM
# À exécuter dans la RACINE de ton repo Git (là où il y a .git)

echo "🚀 Création structure dossiers formation DWWM..."

# Création des dossiers principaux
mkdir -p html-css/{landing-pages,sites-responsive}
mkdir -p js-apps/{todo-app,api-client,exercices}
mkdir -p php-api/{api-v1,backend,tests}
mkdir -p docs/{notes-formation,READMEs}

# Fichiers de base pour que Git tracke les dossiers
touch html-css/README.md html-css/landing-pages/index.html
touch js-apps/README.md js-apps/todo-app/index.html
touch php-api/README.md php-api/api-v1/index.php
touch docs/README.md

# README principal
cat > README.md << 'EOF'
# Formation Développeur Web et Web Mobile (DWWM)

Dépôt contenant mes projets et exercices de formation :
- **HTML/CSS** : landing pages, sites responsive
- **JavaScript** : applications interactives, clients API
- **PHP** : API REST, back-end

## Structure
- `html-css/` : Intégrations statiques
- `js-apps/` : Applications JavaScript
- `php-api/` : API et back-end PHP
- `docs/` : Notes et documentation

Bonne visite ! 👋
EOF

# .gitignore de base
cat > .gitignore << 'EOF'
# Dépendances
node_modules/
vendor/

# Environnement
.env
*.log

# IDE
.vscode/
.idea/

# OS
.DS_Store
Thumbs.db
EOF

echo "✅ Structure créée !"
echo "📁 Dossiers : html-css/ js-apps/ php-api/ docs/"
echo "📄 Fichiers : README.md .gitignore"
echo ""
echo "Prochaines étapes :"
echo "git add ."
echo "git commit -m \"Ajout structure dossiers formation DWWM\""
ls -la
