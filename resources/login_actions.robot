***Keywords***
Login With 
    [Arguments]     ${email_arg}  ${password_arg}

    Fill Text       css=input[name*=email]      ${email_arg}
    Fill Text       css=#user_password          ${password_arg}

    Click           css=input[type=submit]