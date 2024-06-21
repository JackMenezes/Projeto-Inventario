- Descompactar a pasta AX em C:\AX
- Instalar o Firebird 2.5.1 (Não alterar nada na instalação, clicando em "Próximo" até o final.
- Executar o arquivo AX.exe
- Usuário da operação, utilizado no inventário: 
Usuário: CONF 
Senha: CONF

- Para configurar a capa, layouts de novos clientes e cadastrar um novo inventário
Usuário: ADMIN
Senha: dgs8841dgs

Arquivo IGT_CE
Este arquivo você utiliza para criar as configs. Cada cliente tem uma config.
As configs servem para os coletores e o retarguarda lerem os arquivos e layouts
Elas devem ficar em C:\AX\IGT_CE\IgtCeSinc\cfg.ini

É permitido apenas UMA config por cliente e por vez.
Todo cliente sem sua config, cada uma diferente.

Local1.txt - Arquivo de seções/tags/lotes que os coletores de dados vão ler.
Se dentro deste arquivo existir a seção 2000 o coletor lê.
Se apagar a linha ele não libera a leitura.

C:\AX\Cadastro
Colocar o cadastro do cliente neste pasta.
Sempre com o nome cadastro_prod.txt ou cadastro_prod.csv, vai dependener da configuração que criar.

Os nomes dos clientes são diferenciados com siglas.
DSP para Drogaria São Paulo
PDA para Grupo Pão de Açucar
LRM para Leroy Merlin, etc.
verificar nos layouts prontos no sistema, entrando com ousuário ADMIN

Na tela de Seção, utilie o F3 para realizar as buscas
Na tela de Seção, utilizeo CTRL+DEL para deletar uma seção completa ou para reabri-la.

Na tela de Seção, utilize o F4 para aceitar seção duplicada
Na tela de seção, utilize o F5 para aceitar seção não mapeada, o sistema irá cadastra-la automaticamente no mapeamento.
