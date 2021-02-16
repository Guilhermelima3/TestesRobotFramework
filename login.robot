***Settings***
Documentation   Testes da página de login
Library     Browser

Resource    resources/login_actions.robot

#tirar screenshot apos a execução de cada teste
Test Teardown   Take Screenshot 

***Test Cases***
Login com sucesso
    Open URL

    Login With       usuario@teste.com   senha321

    Wait For Elements State     css=a[href$=sign_out]        visible     10
    
Senha Incorreta
    Open URL

    Login With       usuario@teste.com   abc431

    Alert Should Be   Opps! Dados de acesso incorretos!

Email não exite
    Open URL

    Login With       usuarionexiste@teste.com   senha321

    Alert Should Be   Opps! Dados de acesso incorretos!

Email não informado
    Open URL

    Login With      ${EMPTY}        abc321
    
    Alert Should Be   Opps! Dados de acesso incorretos!

Senha não informada
    Open URL

    Login With       usuario@teste.com   ${EMPTY}

    Alert Should Be   Opps! Dados de acesso incorretos!

