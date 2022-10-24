Scriptname SV_UndiesforMe_QuestScript extends Quest  

; Defines property for the male and female player's underwear as well as player reference
Armor Property SV_UndiesforMe_Male  Auto  
Armor Property SV_UndiesForMe_Female  Auto  
Actor Property PlayerRef Auto

;on script initialization at game start, listen for opening character creation menu
Event OnInit() 
    RegisterForMenu("RaceSex Menu")
endEvent

; when the racemenu character creation is done run function to give underwear and stop listening for the quest.
Event OnMenuClose(string menuName) 
    if menuName == "RaceSex Menu" 
        GivePlayerUndies()
        UnregisterForMenu("RaceSex Menu")
    endif
endEvent

; define the function to give underwear
Function GivePlayerUndies()
    ;define variable for player's gender
    int PlayerGenderVar = PlayerRef.GetActorBase().GetSex() 

    ; If player is female, add and equip female underwear
    if PlayerGenderVar == 1
        PlayerRef.additem(SV_UndiesForMe_Female)
        PlayerRef.equipitem(SV_UndiesForMe_Female)
    
    ; otherwise if male, add and equip male underwear
    elseif PlayerGenderVar == 0
        PlayerRef.additem(SV_UndiesforMe_Male)
        PlayerRef.equipitem(SV_UndiesforMe_Male)
    
    endif
EndFunction  

