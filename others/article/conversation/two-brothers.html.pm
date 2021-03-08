#lang pollen

(Two brothers are talking).
kevin> Did you hear ◊q news?

bobby> No, what are you talking about?

kevin> Jason failed ◊q math test, and now ◊q his parents won't let him go to ◊q concert.

bobby> No way! That's ◊q terrible news. ◊q His parents are so strict.

kevin> I know. And he was going to drive, too. Now we have no way to get there.

bobby> We could ask ◊q Mom and ◊q Dad to borrow ◊q truck for ◊q weekend.

kevin> ◊q truck is in ◊q shop, remember?

bobby> Oh right. Maybe it will be fixed before ◊q Friday. It's just ◊q problem with ◊q steering, right?

kevin> True. We could talk to ◊q mechanic and ask him to hurry.

------------------------------------------------------

definite?, countable?, singular? commented (+ only when #t)

(Two brothers are talking).
kevin> Did you hear ◊q[xx+]{zero} news?

◊#{
	1. But I feel 'the' should come.
}

bobby> No, what are you talking about?

kevin> Jason failed ◊q[ooo]{the} math test, and now ◊q[oox]{zero} his parents won't let him go to ◊q[xoo+]{zero} concert.

◊#{
	1. I feel 'the' should come. But there's no mention about 'concert' before this sentence, so it looks not correct.
}

bobby> No way! That's ◊q[ox+]{the} terrible news. ◊q[oox]{zero} His parents are so strict.

◊#{
	1. If 'terrible' is bulleted word, should it be 'a'?
}

kevin> I know. And he was going to drive, too. Now we have no way to get there.

bobby> We could ask ◊q[ooo+]{zero} Mom and ◊q[ooo]{zero. Same reason as 'mom' just before} Dad to borrow ◊q[xoo]{a} truck for ◊q[ooo+]{the?} weekend.

◊#{
	1. It would be 'the' from [ooo], but it seems to be an exception
	2. The brothers know when the concert begins. But not explicitly, so it's uncertain.
}

kevin> ◊q[ooo]{the} truck is in ◊q[ooo+]{the} shop, remember?

◊#{
	1. judging from 'remember?', bobby knows about the shop
}

bobby> Oh right. Maybe it will be fixed before ◊q[ooo+]{zero} Friday. It's just ◊q[xoo]{a} problem with ◊q[ox]{the} steering, right?

◊#{
	1. seems exception.
}

kevin> True. We could talk to ◊q[ooo]{the} mechanic and ask him to hurry.
