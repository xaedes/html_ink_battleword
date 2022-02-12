
=== at_seymours_place ===

Seymour glances at you.

"What do you want?" he grunts.

+ {not whack_a_mole} "I want to fight!" -> get_the_hammer
+ {fight_a_knight.you_died>2} "They keep beating me up..." [] -> ask_for_motivation
+ "Sir, what is the secret to achieve power like yours?" [] -> ask_for_tips 
+ "Strengthen my faith, Lord Seymour[."]. -> pray_to_seymour 
+ "Sorry to interrupt you. I gotta go." [] ->

"Get them boy!"

-> main_menu

= get_the_hammer
\ 

Hastely he goes to a regal on the right side of his room, right besides a closed window. Rays of sunlight find their way through the cracks, revealing a cloud of dust crawling through the air. 

* [...]
-

With a loud bang he flips open the window shuts. The bright sun light blinds you. In the perfect spot light you are in now, Seymour looks upon you. From head to toe, from boot to nose.

* [...]
-

"You look pretty weak, not gonna lie." 

* [...]
-

"But there is something you could do." 

* [...]
-

Your eyes slowly begin to adapt as you now see him opening a drawer.
What he pulls out has wooden texture and looks bulky. 

"Here look at this." he commands while forcing it in your hands.

* [...]
-

"That is a wooden hammer."

+ "And now it is my wooden hammer." [] You tighten your grip.
+ "Is it?"
+ "I have seen those."
+ "It is ... nice?"

- "I tell you something, we have a real invasion going on in our camp. There are moles everywhere, they dig holes and mess up the ground. Last week a catapult got stuck for three hours, just because of these little buggers. Can you imagine that?"

+ "Who would have thought that!"

- "Now go, take your hammer and beat a mole with this! They dig around the camp everywhere. Creepy bastards."

+ "Yes, Sir!"

You got a hammer!

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

