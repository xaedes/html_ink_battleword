-> main_menu

=== main_menu ===
\ 
+ Play Whack A Mole [] -> whack_a_mole
+ Do nothing [] -> main_menu
+ End this madness [] -> game_end

-

-> game_end

=== game_end ===
\ 
"Farewell fellow knights."

+ Just... one more round, I swear [] -> main_menu

// never!
-
-> END

=== whack_a_mole ===
{I heft the hammer.|{~Missed!|Nothing!|No good. Where is he?|Ah-ha! Got him! -> main_menu}}
The {&mole|{&nasty|blasted|foul} {&creature|rodent}} is {in here somewhere|hiding somewhere|still at large|laughing at me|still unwhacked|doomed}. <>
{!I'll show him!|But this time he won't escape!}
*   [{&Hit|Smash|Try} top-left]     -> whack_a_mole
*  [{&Whallop|Splat|Whack} top-right] -> whack_a_mole
*  [{&Blast|Hammer} middle] -> whack_a_mole
*  [{&Clobber|Bosh} bottom-left]    -> whack_a_mole
*  [{&Nail|Thump} bottom-right]     -> whack_a_mole
*   ->
		Then you collapse from hunger. The mole has defeated you!
		-> main_menu
+   -> 
    -> main_menu

// + Swing
// + Stab
// + Slash down
// + Slash up