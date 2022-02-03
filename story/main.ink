// ~ SEED_RANDOM(1337)

-> main_menu

=== main_menu ===
\ 
<b>You are {main_menu > 1:back} in your cabin and decide what next to do...</b>
+ Play Whack A Mole[]. -> whack_a_mole
+ Fight a real knight of flesh and blood[]. 
  -> fight_a_knight(get_enemy_strength())
+ Visit Seymour[]. -> at_seymours_place
+ Look at scratch post[]. -> scratch_post
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

=== fight_a_knight(enemy_strength) ===
\
->fight(enemy_strength)

= fight(enemy_strength)
~ temp my_strength = get_my_strength()
~ temp min_my_roll = 0
~ temp max_my_roll = MAX(min_my_roll+1,INT(my_strength))
~ temp my_roll = RANDOM(min_my_roll, max_my_roll)
//~ temp enemy_strength = 4
~ temp min_enemy_roll = 1
~ temp max_enemy_roll = MAX(min_enemy_roll+1,INT(enemy_strength))
~ temp enemy_roll = RANDOM(min_enemy_roll, max_enemy_roll)
~ temp my_strength_adv = my_strength - enemy_strength
~ temp my_roll_adv = my_roll - enemy_roll


// My Strength: {my_strength}
// 
// Enemy Strength: {enemy_strength}

{
  - my_strength_adv < 0: The knight looks frightening.
  - my_strength_adv == 0: You are not sure what do with that guy.
  - my_strength_adv > 0: Confidently you point at the enemy.
  - my_strength_adv > 2: As the enemy advances he stumbles over a rock.
}
// {my_roll} vs {enemy_roll}

+ [Fight] -> hit(my_roll_adv)

-
-> main_menu

= hit(my_roll_adv)

{
  - my_roll_adv < 0: 
    You try to remember what Seymour told you about parrying.
  - my_roll_adv == 0: 
    In the last second you remember that one trick Seymour told you last week.
  - my_roll_adv > 0: 
    Wisdom pumps into your veins.
  - my_roll_adv > 2: 
    "Seymour be blessed!"
}
{
  - my_roll_adv < 0: -> you_died
  - my_roll_adv >= 0: -> you_won
}

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

- The void vanishes from your mind only to leave you in a whirlpool of sensations. {!It is more than you can bear.}

+ You try to open your eyes[] and see everything swirling around!

-
+ What the... [] {No why?!|Ahhhh!}
- Suddenly a loud bang blinds your ears and eyes. 

- Your whole body burns from within through without.

+ [Try to open your aching eyes] Trying to open your aching eyes the pain numbs down.

- Familiar shapes begin to form in front of you.

-> main_menu

=== at_seymours_place ===

Seymour glances at you.

"What do you want?" he grunts.

+ "They keep beating me up..." [] -> ask_for_motivation
+ "Sir, what is the secret to achieve power like yours?" [] -> ask_for_tips 
+ "Strengthen my faith, Lord Seymour[."]. -> pray_to_seymour 
+ "Sorry to interrupt you. I gotta go." [] ->

"Get them boy!"

-> main_menu

= pray_to_seymour
\ 
+ Forgive my sins, life me out of the depths of my despair. 
-
+ Help me trust my arm as I thrust to arms."
- "Very well then, you will be rewarded."
+ "Thank you good Sir." [] 
-
-> go_home_stronger

= ask_for_motivation
\

- {print_motivation()}
+ "Thank you good Sir." [] 
-
-> go_home_stronger


= ask_for_tips
\ 

"Well... Never give up. That's the most important thing to do."


+ "I will remember it." []
-
-> go_home_stronger

= go_home_stronger
- {~Confidently|With new found strength|Feeling a whole dwarf taller} you walk {~back|} to your {~home|domain|cabin|hut|room}.
-
-> main_menu

=== function get_my_strength() ===
~ temp my_strength = 0
~ my_strength += fight_a_knight.you_died
~ my_strength += fight_a_knight.hit * 0.5
~ my_strength += at_seymours_place.go_home_stronger * 0.5
~ return my_strength

=== function get_enemy_strength() ===
~ temp enemy_strength = 2
~ enemy_strength += 2 *fight_a_knight.you_won
~ return enemy_strength

=== function print_motivation() ===
{shuffle:
- "You are not going to master the rest of your life in one day."
- "Soon, when all is well, you're going to look back on this period of your life and be so glad that you never gave up."
- "Be gentle with yourself. You're doing the best you can!"
- "You are stronger than you know. More capable than you ever dreamed.."
- "You just can't beat the person who never gives up."
- "In order to succeed, we must first believe that we can."
- "You are doing great!"
}

=== function print_int(x) ===
{
- x >= 1000:
  {print_int(x / 1000)} thousand { x mod 1000 > 0:{print_int(x mod 1000)}}
- x >= 100:
  {print_int(x / 100)} hundred { x mod 100 > 0:and {print_int(x mod 100)}}
- x == 0:
  zero
- else:
  { x >= 20:
      { x / 10:
          - 2: twenty
          - 3: thirty
          - 4: forty
          - 5: fifty
          - 6: sixty
          - 7: seventy
          - 8: eighty
          - 9: ninety
      }
      { x mod 10 > 0:<>-<>}
  }
  { x < 10 || x > 20:
      { x mod 10:
          - 1: one
          - 2: two
          - 3: three
          - 4: four
          - 5: five
          - 6: six
          - 7: seven
          - 8: eight
          - 9: nine
      }
  - else:
      { x:
          - 10: ten
          - 11: eleven
          - 12: twelve
          - 13: thirteen
          - 14: fourteen
          - 15: fifteen
          - 16: sixteen
          - 17: seventeen
          - 18: eighteen
          - 19: nineteen
      }
  }
}
=== function print_num(x) ===
~ temp integral_part = INT(x)
~ temp fractional_part = x-integral_part
~ temp is_half = abs(x - 0.5) < 0.1
~ temp and_half = abs(fractional_part - 0.5) < 0.1
{
- is_half: half a
- else: {print_int(integral_part)}{and_half: and a half}
}

=== function is_num_singular(x) ===
~ temp integral_part = INT(x)
~ temp fractional_part = x-integral_part
~ temp is_half = abs(fractional_part - 0.5) < 0.1
~ temp is_one = x == 1
~ return is_half || is_one

=== function print_num_unit(x,singular,plural) ===
{print_num(x)} {is_num_singular(x):{singular}|{plural}}

=== function abs(x) ===
~ temp result = x
{
- x < 0: ~ result = -x
- else:  ~ result = x
}
~ return result

=== dreams(->goback) ===
\

You close your eyes and are lifted away into the land of the dreams.

On your journey through the mists of minds you encounter many weird things. 

The last thing you can remember when you wake, is <>
{shuffle:
- the dung covered peasant convention. You wonder where it was.
- Solaire, {~glimmering like the Light|a warrier as bright as the sun itself|the adherent to the Lord of Sunlight}. "{~We are amidst strange beings, in a strange land.|The very fabric wavers, and relations shift and obscure.|There's no telling how much longer your world and mine will remain in contact.}" you remember him saying.
- Leeeeroooooooooy!
- you tending for a farm of carrots. They looked so delicious.
}

+ [back] 
- 
-> goback

=== scratch_post ===
\ 
In the corner of your little room, right next to your bed, there is a little scratch post.
Carefully each hit, each win and every defeat you have recorded here. 
You are proud of the stories the little scratches tell.

Like a cat that sharpens it claws, you make scratches for all that matters:

Seymours blessings: {at_seymours_place.go_home_stronger}

Strikes: {fight_a_knight.hit}

Fought enemies: {fight_a_knight}

Defeated enemies: {fight_a_knight.you_won}

Deaths: {fight_a_knight.you_died}


Would I have to rate my self, I would say I am as strong as {print_num_unit(get_my_strength(),"mole","moles")}.

Compared to that, I should expect enemies with a strength of {print_num_unit(get_enemy_strength(),"mole","moles")}.

+ [back] 
- 
-> main_menu
