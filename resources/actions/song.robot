***Settings***
Documentation       Ações de reprodução de Paródias

***Keywords***
Play Song
    [Arguments]     ${song_name}
    
    Click       xpath=//h2[contains(text(),"${song_name}")]/../..//div[contains(@class, "play")]//a

Song Shoul Be Playing
    [Arguments]        ${song_name}

    Wait For Elements State    xpath=//h2[contains(text(),"${song_name}")]/../../..     visible     10  
    