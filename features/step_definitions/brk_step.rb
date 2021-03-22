Dado("que acesso o site da BRK ambiental") do
    visit 'https://www.brkambiental.com.br/'
end

Então('clicar em {string}') do |encontrar_cidade|
    brk_page.clicar_cidade(encontrar_cidade)
end

Então('selecionar o estado de {string}')do |seleciona_estado|
    brk_page.selecionar_estado(seleciona_estado)
end

Quando('selecionar a cidade de {string}') do |pesquisa_cidade|
    brk_page.selecionar_cidade(pesquisa_cidade)
end

Então('fechar o quadro de aviso Minha BRK') do 
    brk_page.fechar_mensagem
end

Então('validar a mensagem da cidade VOCÊ ESTÁ NA CIDADE DE {string}') do |valida_mensagem|
    brk_page.vaildar_mensagem(valida_mensagem)
end
