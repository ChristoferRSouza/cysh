# Crie o diretório do projeto e acesse-o
mkdir $1
cd $1
# Inicializar git e .gitignore
git init
touch .gitignore
printf "cypress.env.json\ncypress/downloads/\ncypress/screenshots/\ncypress/videos/\nnode_modules/\npackage-lock.json" > .gitignore
# Inicializar NPM
npm init -y
# Instala o Cypress (se a versão for fornecida, ela será instalada, caso contrário, a versão mais recente será instalada)
if [ "$2" ]; then
  npm i cypress@"$2" -D
else
  npm i cypress -D
fi
# Criar arquivo README.md com base no meu uso
touch README.md
printf "# $1\n\n# Cypress \n### 1. Instalando cypress \n\`\`\`bash\nnpm i\n\`\`\`\n\n ### 2. Cypress modo interativo\n\n \n\`\`\`bash\nnpx cypress open\n\`\`\`\n\n ### 3. Cypress modo headless\n\n \n\`\`\`bash\nnpx cypress run\n\`\`\`\n\n ___ \n\n Feito por [ChristoferRSouza](https://github.com/ChristoferRSouza) \n\n[Duvidas? instruções para instalar o Cypress.](https://on.cypress.io/installing-cypress)" > README.md
# Cria arquivos cypress.env e cypress.env.example padronizando-os para objetos vazios
touch cypress.env.json
echo "{}" > cypress.env.json
touch cypress.env.example.json
echo "{}" > cypress.env.example.json
# Adiciona scripts para run e open
npm pkg set 'scripts.test'='cypress run'
npm pkg set 'scripts.test:open'='cypress open'
# Abra o Cypress pela primeira vez para que ele crie sua estrutura padrão
npx cypress open
# Adiciona IntelliSense
echo '/// <reference types="Cypress" />' | cat - cypress/support/commands.js > temp && mv temp cypress/support/commands.js