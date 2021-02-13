***Settings***
Documentation   Testes da página de login
Library     Browser

***Test Cases***
Login com sucesso
    Open Browser    http://parodify.herokuapp.com/users/sign_in    chromium

    Fill Text       id=user_email       usuario@teste.com
    Fill Text       css=#user_password  senha321

    Click           css=input[type=submit]
    Wait For Elements State     css=a[href$=sign_out]        visible     10