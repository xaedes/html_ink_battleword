INCLUDE whack_a_mole.ink
INCLUDE fight_a_knight.ink
INCLUDE at_seymours_place.ink
INCLUDE dreams.ink
INCLUDE scratch_post.ink
INCLUDE book_of_butterflies.ink
INCLUDE common_functions.ink
INCLUDE functions.ink

// ~ SEED_RANDOM(1337)

//-> scratch_post
-> main_menu


=== main_menu ===
\ 
~ quickSave()
<b>You are {main_menu > 1:back} in your cabin and decide what next to do...</b>
+ {at_seymours_place.get_the_hammer} Play Whack A Mole[]. -> whack_a_mole
+ {whack_a_mole > 0} Fight a real knight of flesh and blood[]. 
  -> fight_a_knight(get_enemy_strength())
+ Visit Seymour[]. -> at_seymours_place
+ Look at scratch post[]. -> scratch_post
+ Book of Butterflies[]. -> book_of_butterflies
+ Do nothing[]. -> dreams(->main_menu)
+ End this madness[]. -> game_end

-

-> game_end

=== game_end ===
\ 
"Farewell fellow knights."

+ Just... one more round, I swear [] -> main_menu
+ ->
  // never!
  -> END


