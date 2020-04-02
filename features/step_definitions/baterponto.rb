Dado("que esteja na tela inicial do aplicativo") do
    @baterponto = Baterponto.new
    @baterponto.inicial
end

Quando("incluir um ponto inicial") do
    @baterponto.ponto
end

Então("vou visualizar o ponto batido") do
    @baterponto.pontobatido
end