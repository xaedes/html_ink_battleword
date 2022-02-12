
=== scratch_post ===
\ 

In the corner of your little room, right next to your bed, there is a little scratch post.

//~ temp has_scratches = true
~ temp has_scratches = ((at_seymours_place.go_home_stronger > 0) || (fight_a_knight.hit > 0) || (fight_a_knight > 0) || (fight_a_knight.you_won > 0) || (fight_a_knight.you_died > 0) || (whack_a_mole > 0))
{
- has_scratches: -> show_marks
- else : -> no_marks
}

-> knot_end

= knot_end

+ [back] 
- 
-> main_menu

= no_marks

{!"It looks a bit empty, when something happens I should record it here."|"This will look amazing!"}

-> knot_end

= show_marks

Carefully each hit, each win and every defeat you have recorded here. 
You are proud of the stories these marks that can tell.
Like a cat that sharpens it claws, you make scratches for all that matters:

{at_seymours_place.go_home_stronger > 0:Seymours blessings: {at_seymours_place.go_home_stronger}|}

{fight_a_knight.hit > 0:Strikes: {fight_a_knight.hit}|}

{fight_a_knight > 0:Fought enemies: {fight_a_knight}|}

{fight_a_knight.you_won > 0:Defeated enemies: {fight_a_knight.you_won}|}

{fight_a_knight.you_died > 0:Deaths: {fight_a_knight.you_died}|}

{whack_a_mole > 0: -> fight_rating|}

-> knot_end

= fight_rating

Would I have to rate my self, I would say I am as strong as {print_num_unit(get_my_strength(),"mole","moles")}.

Compared to that, I should expect enemies with a strength of {print_num_unit(get_enemy_strength(),"mole","moles")}.

-> knot_end
