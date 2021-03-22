# language: pt
 # encoding: UTF-8

@brk_avaliacao
Funcionalidade: Atendimento por Cidade


Cenário: Localizar cidade de Limeira
    Dado que acesso o site da BRK ambiental
    E clicar em "Encontrar sua cidade"
    E selecionar o estado de "São Paulo"
    Quando selecionar a cidade de "Limeira"
    E fechar o quadro de aviso Minha BRK
    Então validar a mensagem da cidade VOCÊ ESTÁ NA CIDADE DE "LIMEIRA"