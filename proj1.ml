(*Abstract language definition for a Graal-like langauge*)
(*Authors: Victor Malinik, Adrian Dong An*)
(*CSC201 Programming Languages Dr. Zhang*)

type Variable = string;
type Integer_Constant = int;
type Boolean_Constant = bool;

datatype Arithmatic_Op = Plus | Minus | Times | Div;
datatype Relational_Op = Lt | Le | Eq | Ne | Ge | Gt;
datatype Boolean_Op = And | Or | Nand | Nor;

datatype Integer_Expession =
	ie1 of Integer_Constant |
	ie2 of Variable |
	ie3 of Integer_Expession * Integer_Expession * Arithmatic_Op;

datatype Boolean_Expression =
	be1 of Boolean_Constant |
	be2 of Variable |
	be3 of Integer_Expession * Integer_Expession * Relational_Op |
	be4 of Boolean_Expression * Boolean_Expression * Boolean_Op;

datatype Expression =
	ei of Integer_Expession |
	eb of Boolean_Expression;

datatype Instruction =
	skip |
	i1 of Variable * Expression |
	i2 of Instruction list |
	i3 of Boolean_Expression * Instruction * Instruction |
	i4 of Boolean_Expression * Instruction;

datatype Type =
	Boolean_Type |
	Integer_Type;

type Declaration =
	Variable * Type;

type Declaration_List =
	Declaration list;

type Program =
	Declaration_List * Instruction;

(*Declaring program variables*)
val m = Integer_Type;
val n = Integer_Type;
val i = Integer_Type;
val result1 = Integer_Type;
m := 3;
n := 9;
val =




val instruction =
val declist =
val team6program = (declist, instruction);
