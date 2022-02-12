
VAR num_save_slots = 0

EXTERNAL saveSlotIsBlank(page)
EXTERNAL saveToSlot(page)
EXTERNAL loadFromSlot(page)
EXTERNAL quickSave()
EXTERNAL quickLoad()


=== book_of_butterflies ===

On your bed you have this thick book. A butterfly is imprinted on the leather cover.
{
- num_save_slots == 0: You look inside, and see nothing but blank pages.
- num_save_slots > 0: You look inside, and see some pages have writings on them.
}

Then you look back at the butterfly. The wings are moving, as if it is alive and flying.
You feel a weird sense of déjà vu.

-> flip_pages(1)

= flip_pages(page)
\ 
~ temp is_blank = saveSlotIsBlank(page)
//~ temp is_blank = page > 5


{
    -is_blank == true: The page is blank.
    -is_blank == false: Something is written on it.
}
On the bottom of the page you see the number {print_int(page)}.

+ {not is_blank} [Start reading] You start to read. -> start_reading(page)
+ {is_blank} [Start writing] You start to write. -> start_writing(page)
+ {not is_blank} [Start writing] 
    There is already written something on this page. 
    Do you really want to rip this page out and replace it with a new one?
    ++ "Sure, that was garbage anyway." [] -> start_writing(page)
    ++ "No keep it!" [] "Guess I have to find a blank page then." -> flip_pages(page)
+ {page > 1} [Look at previous page.] You look at the previous page. -> flip_pages(page-1)
+            [Look at next page.]     You look at the next page. -> flip_pages(page+1)
+            [Close book.]         You close the book and put it back. -> main_menu

-> knot_end

= start_writing(page)

~ saveToSlot(page)
-> flip_pages(page)

= start_reading(page)
\ 

As you begin to read the world begins to fade away.
You feel like there will be no return.

+ "This world still needs me"[]. 
    You force your attention on your senses and the surroundings. 
    The fog that encompassed you clears up.
++  [Close book.] You close the book and put it back. -> main_menu
+ [Keep on reading.] You keep on reading. 
~ loadFromSlot(page)

-> knot_end

= knot_end

+ [Close book.] You close the book and put it back. -> main_menu


=== function saveSlotIsBlank(page)
~ return true

=== function saveToSlot(page)
Sadly I never learned to properly write.

=== function loadFromSlot(page)
Sadly I never learned to properly read.
