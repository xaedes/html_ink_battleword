

=== function get_my_strength() ===
~ temp my_strength = 1
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

