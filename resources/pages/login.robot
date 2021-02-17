***Settings***
Documentation       Ações da página de Login

***Keywords***
Open URL
    New Browser     chromium        false    #true roda em background
    New Page        http://parodify.herokuapp.com/users/sign_in
    
    #Open Browser    http://parodify.herokuapp.com/users/sign_in    chromium

Login With 
    [Arguments]     ${email_arg}  ${password_arg}

    Fill Text       css=input[name*=email]      ${email_arg}
    Fill Text       css=#user_password          ${password_arg}

    Click           css=input[type=submit]

Alert Should Be 
    [Arguments]     ${expect_arg}

    Get Text        css=.is-danger .message-body    ==     Opps! Dados de acesso incorretos!

#robot -d ./logs tests\