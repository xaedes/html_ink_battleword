
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

