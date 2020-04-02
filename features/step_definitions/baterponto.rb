Dado("que esteja na tela inicial do aplicativo") do
    id('btnPortuguese').click
    id('btnContinue').click
    manage.timeouts.implicit_wait = 15
end

Quando("incluir um ponto inicial") do
    id('btnCheckpoint').click
    id('etxDescription').send_keys 'teste 1'
    id('android:id/button1').click
    manage.timeouts.implicit_wait = 5
    id('txvCheckpointOne').click
end

Então("vou visualizar o ponto batido") do
    fail "ponto não batido" unless id('txvDescription').text.eql? "teste 1"
end