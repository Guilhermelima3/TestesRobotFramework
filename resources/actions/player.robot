***Settings***
Documentation       Ações da página de Reproduzir Paródia


***Keywords***
Going For Search Page
    Click       css=a[href*=search]
    Wait For Elements State     xpath=//h2[contains(text(),"Buscar")]   visible     10    

Going For Categorie
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait For Elements State     xpath=//h2[contains(text(),"Sertanejo")]   visible     10    

Open Album From
    [Arguments]     ${artist_name}

    Click       xpath=//p[contains(text(),"${artist_name}")]/..
    Wait For Elements State     xpath=//h2[contains(text(),"Músicas")]   visible     10    

Play Song
    [Arguments]     ${song_name}
    
    Click       xpath=//h2[contains(text(),"${song_name}")]/../..//div[contains(@class, "play")]//a

Song Shoul Be Playing
    [Arguments]        ${song_name}

    Wait For Elements State    xpath=//h2[contains(text(),"${song_name}")]/../../..     visible     10  