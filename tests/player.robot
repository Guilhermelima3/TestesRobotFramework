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

    Click       css=a[href*=search]
    Wait For Elements State     xpath=//h2[contains(text(),"Buscar")]   visible     10    

    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait For Elements State     xpath=//h2[contains(text(),"Sertanejo")]   visible     10    

    Click       xpath=//p[contains(text(),"Marcus e Debug")]/..
    Wait For Elements State     xpath=//h2[contains(text(),"Músicas")]   visible     10    
    
    Click       css=.play-button
    #OU -> xpath=//h2[contains(text(),"Bug de Manhã")]/../..//div[contains(@class, "play")]//a
    Wait For Elements State    xpath=//h2[contains(text(),"Bug de Manhã")]/../../..     visible     10  
    