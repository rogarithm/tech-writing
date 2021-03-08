#lang pollen

customer> Good ◊q afternoon. I would like ◊q some information about ◊q ski camp for ◊q my daughter. ◊q friend of mine sent ◊q his children here for ◊q day camp last year, and he told me they really enjoyed it. She's 13 years old.

staff> Sure, we have ◊q a few options available. What date would she like to attend ◊q camp?

customer> Well, ◊q weekend of December 15th and 16th would be ideal.

staff> That's ◊q no problem; we have plenty of ◊q openings on ◊q that weekend. Since ◊q your daughter is a little older, we have ◊q Full Weekend Camp available, where she would spend ◊q night in one of ◊q our cabins.

------------------------------------------------------

definite?, countable?, singular? commented (+ only when #t)

customer> Good ◊q[xx]{zero} afternoon. I would like ◊q[xx]{zero} some information about ◊q[xoo]{a} ski camp for ◊q[ooo+]{zero} my daughter. ◊q[xoo+]{a} friend of mine sent ◊q[oox]{zero} his children here for ◊q[xoo+]{a} day camp last year, and he told me they really enjoyed it. She's 13 years old.

◊#{
	1. coclude 'daughter' is definite from the usage of 'my'
	2. daughter is restrictive, but friend is not even if it is restricted by 'of mine.'
	3. The listener (probably) doesn't know about this camp
}

staff> Sure, we have ◊q[xox]{zero} a few options available. What date would she like to attend ◊q[ooo]{the} camp?

customer> Well, ◊q[o??+]{the} weekend of December 15th and 16th would be ideal.

◊#{
	1. Not sure, but I think it's countable, and thus singular
}

staff> That's ◊q[x??+]{zero} no problem; we have plenty of ◊q[xox]{zero} openings on ◊q[o??+]{zero} that weekend. Since ◊q[ooo]{zero} your daughter is a little older, we have ◊q[xoo+]{a} Full Weekend Camp available, where she would spend ◊q[o??+]{the} night in one of ◊q[xox]{zero.} our cabins.

◊#{
	1. (because) there's no info of this problem
	2. Not sure, but I think it's countable, and thus singular
	3. The staff haven't mentioned about weekend camp
	4. Similar case with weekend, not sure. But I guess it'd be oo.
}
