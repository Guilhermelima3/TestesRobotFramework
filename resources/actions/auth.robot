***Settings***

Documentation       Ações da funcionalidade de autorização/autenticação

***Variables***
${LOGOUT_LINK}      css=a[href$=sign_out]


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

Logout Link Should Be Visible
    Wait For Elements State     ${LOGOUT_LINK}         visible     10

Do Logout
    Click       ${LOGOUT_LINK}  