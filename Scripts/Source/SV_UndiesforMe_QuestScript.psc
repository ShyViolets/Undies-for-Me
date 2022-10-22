Scriptname SV_UndiesforMe_QuestScript extends Quest  

Armor Property SV_UndiesforMe_Male  Auto  
Armor Property SV_UndiesForMe_Female  Auto  
Actor Property PlayerRef Auto
; Defines property for the male and female player's underwear as well as player reference

Event OnInit() ;on script initialization which is at game start
    RegisterForMenu("RaceSex Menu")
endEvent

Event OnMenuClose(string menuName)
    if menuName == "RaceSex Menu"
        SV_UndiesForMe.Gender    
        if PlayerRef.GetSex() == 1
            PlayerRef.additem(SV_UndiesForMe_Female)
            PlayerRef.equipitem(SV_UndiesForMe_Female)
            ; If player is female, add and equip female underwear
        elseif PlayerRef.GetSex() == 0
            PlayerRef.additem(SV_UndiesforMe_Male)
            PlayerRef.equipitem(SV_UndiesforMe_Male)
            ; or else if player is male, add and equip male underwear
    endif
endEvent

    
    

