Feature: Login

        Scenario: Login com sucesso
            Given que acesso a tela de login
             Quando submento minhas credenciais:
                  | email | eu@papito.io |
                  | senha | qaninja      |
             Then devo ver a notificação: "Show! Suas credenciais são válidas"