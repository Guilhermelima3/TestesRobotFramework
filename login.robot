***Settings***
Documentation   Testes da página de login
Library     Browser

Resource    resources/login_actions.robot

#tirar screenshot apos a execução de cada teste
Test Teardown   Take Screenshot 

***Test Cases***
Login com sucesso
    Open Browser    http://parodify.herokuapp.com/users/sign_in    chromium

    Login With       usuario@teste.com   senha321

    Wait For Elements State     css=a[href$=sign_out]        visible     10
    
Senha Incorreta
    Open Browser    http://parodify.herokuapp.com/users/sign_in    chromium

    Login With       usuario@teste.com   abc431

    Get Text        css=.is-danger .message-body    ==     Opps! Dados de acesso incorretos!

Email não exite
    Open Browser    http://parodify.herokuapp.com/users/sign_in    chromium

     Login With       usuarionexiste@teste.com   senha321

    Get Text        css=.is-danger .message-body    ==     Opps! Dados de acesso incorretos!

Email não informado
    Open Browser    http://parodify.herokuapp.com/users/sign_in    chromium

    Login With      ${EMPTY}        abc321
    

    Get Text        css=.is-danger .message-body    ==     Opps! Dados de acesso incorretos!

Senha não informada
    Open Browser    http://parodify.herokuapp.com/users/sign_in    chromium

   Login With       usuario@teste.com   ${EMPTY}

    Get Text        css=.is-danger .message-body    ==     Opps! Dados de acesso incorretos!

