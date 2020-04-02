class Baterponto    
    include Appium::Http
        
    def inicial
        id('btnPortuguese').click
        id('btnContinue').click
        manage.timeouts.implicit_wait = 5
    end

    def ponto
        id('btnCheckpoint').click
        id('etxDescription').send_keys 'teste 1'
        id('android:id/button1').click
        manage.timeouts.implicit_wait = 5
        id('txvCheckpointOne').click
    end

    def pontobatido
        fail "ponto não batido" unless id('txvDescription').text.eql? "teste 1"
    end


end