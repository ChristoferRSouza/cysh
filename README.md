# cysh

Este projeto oferece um único script de shell que inicializa rapidamente um projeto de automação de teste [Cypress](https://cypress.io) do zero.

> **Observação:** Este script funciona melhor em sistemas operacionais baseados em Unix, como Linux e macOS.

> **Observação2:** Para windows se utilizado bash(acompanha na instalação do git) ira funcionar com exceção do passo 9.

## Uso

1. Baixe o arquivo [`cy.sh`](./cy.sh) e mova-o para o diretório raiz
2. No diretório raiz, execute `./cy.sh nome-do-projeto-que-você-quer-criar-aqui` para criar um projeto Cypress do zero (você pode ter que primeiro dar permissão de execução para o arquivo `cy.sh`)

- 2.1. Como alternativa, você pode executar `./cy.sh nome-do-seu-projeto-aqui x.x.x` se quiser instalar uma versão específica do Cypress, diferente da versão mais recente.

3. Feche o Cypress e acesse o projeto recém-criado (por exemplo, `cd nome-do-seu-projeto-aqui/`)
4. Abra-o em sua IDE favorita e comece a escrever seus testes Cypress! 🙌

## Uso 2

Apenas execute o comando abaixo no terminal trocando nome-do-projeto

```shell
curl -fsSL https://raw.githubusercontent.com/ChristoferRSouza/cysh/main/cy.sh | sh -s nome-do-projeto
```

Passando versão do cypress

```shell
curl -fsSL https://raw.githubusercontent.com/ChristoferRSouza/cysh/main/cy.sh | sh -s nome-do-projeto x.x.x
```

## O que `cy.sh` faz?

1. Crie um diretório de projeto e acesse-o
2. Em seguida, inicializa git e .gitignore
3. Em seguida, inicializa o NPM
4. Ele instala o Cypress (se uma versão for fornecida, ele a instalará; caso contrário, a versão mais recente será instalada)
5. Depois disso, ele cria um arquivo README com base no meu uso
6. Ele cria arquivos cypress.env e cypress.env.example padronizando-os para objetos vazios
7. Adiciona scripts para run e open
8. Por fim, abre o Cypress pela primeira vez para que ele crie sua estrutura padrão.
9. Adiciona [IntelliSense](https://docs.cypress.io/guides/tooling/IDE-integration#Triple-slash-directives)
   Obs.: É necessario executar cypress para criação dos arquivos base cypress/support/commands.js

## Apoie este projeto

Se você gostou deste projeto, considere deixar um ⭐.

---

Esse script foi baseado no projeto [cysh](https://github.com/wlsf82/cysh) de [Walmyr](https://walmyr.dev).
