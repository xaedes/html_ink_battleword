-> main_menu

=== main_menu ===
\ 
<b>You are {main_menu > 1:back} in your cabin and decide what next to do...</b>
+ Play Whack A Mole [] -> whack_a_mole
+ Fight a real knight of flesh and blood[]. 
  -> fight_a_knight
+ Pray to Seymour[]. -> pray_to_seymour
+ Do nothing [] -> main_menu
+ End this madness [] -> game_end

-

-> game_end

=== game_end ===
\ 
"Farewell fellow knights."

+ Just... one more round, I swear [] -> main_menu
+ ->
  // never!
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

=== fight_a_knight ===
\
->fight

= fight
+ {you_died+pray_to_seymour*0.5 < 2}  [Fight] -> you_died
+ {you_died+pray_to_seymour*0.5 >= 2} [Fight] -> you_won

-
-> main_menu

= you_won

{you_won == 1: The unthinkable happened!}

{~Efficiently|With a mighty roar|Gracefully|Inspired by Seymours training} you {~swing|stab|slash down|slash up} your {~sword|weapon} {~into his head|through his {~left|right} arm}.

The enemy screams in agony. {~Bleeding|Crying} he {~sinks|falls} to the {~ground|floor|dirt}.

You won!

Seymour is proud of you.

+ "I am a fucking legend!"

-> main_menu

= you_died
You died.

+ ...

{you_died == 1: What did you expect? These weapons here are as real as your blood that is dripping to the floor. }
- {~Get good.|You can do this.|Why are you doing this to yourself?}

+ Seymour is graceful[]. 

- The blackness leaves your mind only to leave you in a whirlpool of sensations. 

+ You try to open your eyes[] and see everything swirling around!

-
+ What the... [] {No why?!|Ahhhh!}
- Suddenly a loud bang blinds your ears and eyes. 

- Your whole body burns from within through without.

- The pain numbs down.

+ You try to open your swollen eyes[] you see something familiar.

-

-> main_menu

=== pray_to_seymour ===

You will be rewarded.

+ "Thank you good sir." [] 
-
+ Confidently walk to your home.
-
-> main_menu
