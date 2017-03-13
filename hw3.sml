(* HW#3 CSC201 Programming Language Principles Dr. Zhang
    Labled 3-branch tree
    Author: Dong An "Adrian"
 *)

 (*Datatype definition for 3-branch tree*)

datatype ttree = Empty | NonEmpty of (int * ttree * ttree * ttree);

(*Creating 40 node instance of ttree*)

val ttree1 = NonEmpty(67, Empty, Empty, Empty);
val ttree2 = NonEmpty(32, Empty, Empty, Empty);
val ttree3 = NonEmpty(45, Empty, Empty, Empty);
val ttree4 = NonEmpty(56, Empty, Empty, Empty);
val ttree5 = NonEmpty(34, Empty, Empty, Empty);
val ttree6 = NonEmpty(22, Empty, Empty, Empty);
val ttree7 = NonEmpty(75, Empty, Empty, Empty);
val ttree8 = NonEmpty(86, Empty, Empty, Empty);
val ttree9 = NonEmpty(35, Empty, Empty, Empty);
val ttree10 = NonEmpty(65, Empty, Empty, Empty);
val ttree11 = NonEmpty(2, Empty, Empty, Empty);
val ttree12 = NonEmpty(5, Empty, Empty, Empty);
val ttree13 = NonEmpty(6, Empty, Empty, Empty);
val ttree14 = NonEmpty(12, Empty, Empty, Empty);
val ttree15 = NonEmpty(46, Empty, Empty, Empty);
val ttree16 = NonEmpty(99, Empty, Empty, Empty);
val ttree17 = NonEmpty(41, Empty, Empty, Empty);
val ttree18 = NonEmpty(29, Empty, Empty, Empty);
val ttree19 = NonEmpty(52, Empty, Empty, Empty);
val ttree20 = NonEmpty(89, Empty, Empty, Empty);
val ttree21 = NonEmpty(81, Empty, Empty, Empty);
val ttree22 = NonEmpty(91, Empty, Empty, Empty);
val ttree23 = NonEmpty(94, Empty, Empty, Empty);
val ttree24 = NonEmpty(96, Empty, Empty, Empty);
val ttree25 = NonEmpty(77, Empty, Empty, Empty);
val ttree26 = NonEmpty(79, Empty, Empty, Empty);
val ttree27 = NonEmpty(71, Empty, Empty, Empty);
val ttree28 = NonEmpty(101, ttree1, ttree2, ttree3);
val ttree29 = NonEmpty(102, ttree4, ttree5, ttree6);
val ttree30 = NonEmpty(103, ttree7, ttree8, ttree9);
val ttree31 = NonEmpty(104, ttree10, ttree11, ttree12);
val ttree32 = NonEmpty(105, ttree13, ttree14, ttree15);
val ttree33 = NonEmpty(106, ttree16, ttree17, ttree18);
val ttree34 = NonEmpty(107, ttree19, ttree20, ttree21);
val ttree35 = NonEmpty(108, ttree22, ttree23, ttree24);
val ttree36 = NonEmpty(109, ttree25, ttree26, ttree27);
val ttree37 = NonEmpty(110, ttree28, ttree29, ttree30);
val ttree38 = NonEmpty(111, ttree31, ttree32, ttree33);
val ttree39 = NonEmpty(112, ttree34, ttree35, ttree36);
val ttree40 = NonEmpty(113, ttree37, ttree38, ttree39);

(*counttree function counts all of the integer nodes of ttree*)
fun counttree (Empty) = 0 |
    counttree (NonEmpty (node, ttreel, ttreem, ttreer)) = node + counttree(ttreel) + counttree(ttreem) + counttree(ttreer);

(*Evaluate on tree tree*)
counttree(ttree40);

(*Problem #2*)
datatype identifier = a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z;
datatype term = id of identifier | tid of (term * identifier);
datatype expression = t of term | et of (expression * term);

(*Left most subtree to first expression*)
val n1 = id(a);
val n2 = b;
val n3 = tid(n1, n2);
val n3a = c;
val n4 = tid(n3, n3a);
(*left most, first right <term> subtree*)
val n5 = id(d);
val n5a = e
val n6 = tid(n5, n5a);
(*2nd leftmost expression*)
val x1 = t(n4);
val n7 = et(x1, n6);
(*Lvl 3 left most term*)
val n8 = id(f);
val n8a = g;
val n9 = tid(n8, n8a);
val n10 = tid(n9, h);
(*lvl 2 expression*)
val n11 = et(n7, n10);
(*Rightside term*)
val n12 = id(i);
val n12a = j;
val n13 = tid(n12, n12a);
(*root expression*)
val n14 = et(n11, n13);

fun countgrammerid (id) = 1 |
    countgrammerid (tid(cterm, cid)) = countgrammerid(cterm) + countgrammerid(cid);

fun countgrammerterm (t) = countgrammerid(t) |
    countgrammerterm (et(e, ct)) = countgrammerterm(e) + countgrammerid(ct);

countgrammerterm(n14);
