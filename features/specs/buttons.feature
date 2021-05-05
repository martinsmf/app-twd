Feature: Buttons

        Scenario: Clicque Simples
            Given que acesso a tela Click simples
             When faço um click simples
             Then devo ver o texto: "Isso é um clique simples"

        @click_long
        Scenario: Clique longo
            Given que estou na tela de clicke longo
             When faço um clicke longo
             Then devo ver o botão com o texto: "CLIQUE LONGO OK"