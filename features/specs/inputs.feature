Feature: Inputs

        @radio
        Scenario: Radio button

            Given que acesso a tela Botões de rádio
             When eu escolho a opção "Ruby"
             Then essa opção deve ser marcada

        @Checkbox
        Scenario: Checkbox

            Given que acesso a tela Checkbox
             When eu marco a opção "Ruby"
             Then essa opção deve estar marcada

        @Checkbox2
        Scenario: Todas as techs que usam o Appium
            Given que acesso a tela Checkbox
             When eu marco as seguintes techs:
                  | techs           |
                  | Ruby            |
                  | Java            |
                  | Python          |
                  | Javascript      |
                  | C#              |
                  | Robot Framework |
             Then todas essas opções devem estar marcadas