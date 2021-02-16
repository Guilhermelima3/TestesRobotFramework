***Settings***
Documentation   Testando o player de Reprodução

Resource    ../resources/base.robot

#tirar screenshot apos a execução de cada teste
Test Teardown   Take Screenshot 

***Test Cases***
Reproduzir Paródia
    Open URL
    Login With   usuario@teste.com  senha321
    Logout Link Should Be Visible

    Going For Search Page
    Going For Categorie
    Open Album From             Marcus e Debug
    Play Song                   Bug de Manhã
    Song Shoul Be Playing       Bug de Manhã

