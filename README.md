# superhero
Projeto mobile desenvolvido em Flutter com Mobx para o gerenciamento de estado.

Foi utilizado API para retornar as informações dos super heróis:

URL: https://github.com/akabab/superhero-api/tree/master/api Rota: https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json

Funcionalidades Básicas:

Listagem dos heróis;
Filtro por nome ou gênero;
Ao clicar no herói, ir para uma outra tela com informações detalhadas do mesmo.
Atenção: Para gerar novos arquivos do mobx, é necessário executar os seguintes comandos: flutter packages pub run build_runner clean flutter packages pub run build_runner build
