Feature: Avengers

        Scenario: Rmover o capitão america
            Given que acesso a tela Avengers
             When apago o capitão america
             Then devo ver a seguinte mensagem: "Item removido! (posição = 0)"