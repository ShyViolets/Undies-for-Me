Scriptname SV_UndiesForMe_PlayerScript extends ReferenceAlias  

;;ended up not using script. leaving below for self-reference.

; ;redefine the quest as a propertys - Can I just retrieve from questscript?

; Quest Property SV_UndiesforMe_Quest Auto 

; ;When either pair of undies is equipped, the quest will be marked complete. Since the quest should run once, should prevent repeatedly adding undies after every racemenu close
; Event OnObjectEquipped(Form SV_UndiesForMe_Equipped, Actor PlayerRef)
;     if SV_UndiesForMe_Equipped == SV_UndiesForMe_Female
;         SV_UndiesforMe_Quest.CompleteQuest()
;     elseif SV_UndiesForMe_Equipped == SV_UndiesforMe_Male
;         SV_UndiesforMe_Quest.CompleteQuest()
;     endif
; endEvent