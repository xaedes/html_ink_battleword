var storyContent = {"inkVersion":20,"root":[[{"->":"main_menu"},["done",{"#n":"g-0"}],null],"done",{"main_menu":[["\n",["ev",{"^->":"main_menu.0.1.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Play Whack A Mole ",{"->":"$r","var":true},null]}],["ev",{"^->":"main_menu.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Do nothing ",{"->":"$r","var":true},null]}],["ev",{"^->":"main_menu.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^End this madness ",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"main_menu.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.1.s"},[{"#n":"$r2"}],"^ ",{"->":"whack_a_mole"},"\n",{"->":".^.^.g-0"},null],"c-1":["ev",{"^->":"main_menu.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"^ ",{"->":".^.^.^"},"\n",{"->":".^.^.g-0"},null],"c-2":["ev",{"^->":"main_menu.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"^ ",{"->":"game_end"},"\n",{"->":".^.^.g-0"},null],"g-0":[{"->":"game_end"},null]}],null],"game_end":[["\n","^\"Farewell fellow knights.\"","\n",["ev",{"^->":"game_end.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Just... one more round, I swear ",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"game_end.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"^ ",{"->":"main_menu"},"\n",{"->":".^.^.g-0"},null],"g-0":["end",null]}],null],"whack_a_mole":[[["ev","visit",1,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^I heft the hammer.",{"->":".^.^.17"},null],"s1":["pop",["ev","visit",4,"seq","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"ev","du",3,"==","/ev",{"->":".^.s3","c":true},"nop",{"s0":["pop","^Missed!",{"->":".^.^.29"},null],"s1":["pop","^Nothing!",{"->":".^.^.29"},null],"s2":["pop","^No good. Where is he?",{"->":".^.^.29"},null],"s3":["pop","^Ah-ha! Got him! ",{"->":"main_menu"},{"->":".^.^.29"},null],"#f":5}],{"->":".^.^.17"},null],"#f":5}],"\n","^The ",["ev","visit",2,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^mole",{"->":".^.^.17"},null],"s1":["pop",["ev","visit",3,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop","^nasty",{"->":".^.^.23"},null],"s1":["pop","^blasted",{"->":".^.^.23"},null],"s2":["pop","^foul",{"->":".^.^.23"},null],"#f":5}],"^ ",["ev","visit",2,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^creature",{"->":".^.^.17"},null],"s1":["pop","^rodent",{"->":".^.^.17"},null],"#f":5}],{"->":".^.^.17"},null],"#f":5}],"^ is ",["ev","visit",5,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"ev","du",3,"==","/ev",{"->":".^.s3","c":true},"ev","du",4,"==","/ev",{"->":".^.s4","c":true},"ev","du",5,"==","/ev",{"->":".^.s5","c":true},"nop",{"s0":["pop","^in here somewhere",{"->":".^.^.41"},null],"s1":["pop","^hiding somewhere",{"->":".^.^.41"},null],"s2":["pop","^still at large",{"->":".^.^.41"},null],"s3":["pop","^laughing at me",{"->":".^.^.41"},null],"s4":["pop","^still unwhacked",{"->":".^.^.41"},null],"s5":["pop","^doomed",{"->":".^.^.41"},null],"#f":5}],"^. ","<>","\n",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop","^I'll show him!",{"->":".^.^.23"},null],"s1":["pop","^But this time he won't escape!",{"->":".^.^.23"},null],"s2":["pop",{"->":".^.^.23"},null],"#f":5}],"\n","ev","str",["ev","visit",3,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop","^Hit",{"->":".^.^.23"},null],"s1":["pop","^Smash",{"->":".^.^.23"},null],"s2":["pop","^Try",{"->":".^.^.23"},null],"#f":5}],"^ top-left","/str","/ev",{"*":".^.c-0","flg":20},"ev","str",["ev","visit",3,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop","^Whallop",{"->":".^.^.23"},null],"s1":["pop","^Splat",{"->":".^.^.23"},null],"s2":["pop","^Whack",{"->":".^.^.23"},null],"#f":5}],"^ top-right","/str","/ev",{"*":".^.c-1","flg":20},"ev","str",["ev","visit",2,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^Blast",{"->":".^.^.17"},null],"s1":["pop","^Hammer",{"->":".^.^.17"},null],"#f":5}],"^ middle","/str","/ev",{"*":".^.c-2","flg":20},"ev","str",["ev","visit",2,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^Clobber",{"->":".^.^.17"},null],"s1":["pop","^Bosh",{"->":".^.^.17"},null],"#f":5}],"^ bottom-left","/str","/ev",{"*":".^.c-3","flg":20},"ev","str",["ev","visit",2,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^Nail",{"->":".^.^.17"},null],"s1":["pop","^Thump",{"->":".^.^.17"},null],"#f":5}],"^ bottom-right","/str","/ev",{"*":".^.c-4","flg":20},{"*":".^.c-5","flg":24},{"*":".^.c-6","flg":8},{"c-0":["^     ",{"->":".^.^.^"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^"},"\n",{"#f":5}],"c-2":["^ ",{"->":".^.^.^"},"\n",{"#f":5}],"c-3":["^    ",{"->":".^.^.^"},"\n",{"#f":5}],"c-4":["^     ",{"->":".^.^.^"},"\n",{"#f":5}],"c-5":["\n","^Then you collapse from hunger. The mole has defeated you!","\n",{"->":"main_menu"},{"#f":5}],"c-6":["\n",{"->":"main_menu"},null]}],null]}],"listDefs":{}}