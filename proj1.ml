
type Variable = string;
type Integer_Constant = int;
type Boolean_Constant = bool;

datatype Arithmatic_Op = Plus | Minus | Times | Div;
datatype Relational_Op = Lt | Le | Eq | Ne | Ge | Gt;
datatype Boolean_Op = And | Or | Nand | Nor;

datatype Integer_Expession =
	iec of Integer_Constant |
	iev of Variable |
	ieiia of Integer_Expession * Integer_Expession * Arithmatic_Op;

datatype Boolean_Expression =
	bec of Boolean_Constant |
	bev of Variable |
	beiir of Integer_Expession * Integer_Expession * Relational_Op |
	bebbb of Boolean_Expression * Boolean_Expression * Boolean_Op;

datatype Expression =
	ei of Integer_Expession |
	eb of Boolean_Expression;

datatype Instruction =
	skip |
	iass of Variable * Expression |
	icom of Instruction list |
	icon of Boolean_Expression * Instruction * Instruction |
	il of Boolean_Expression * Instruction;

datatype Type =
	Boolean_Type |
	Integer_Type;

type Declaration =
	Variable * Type;

type Declaration_List =
	Declaration list;

type Program =
	Declaration_List * Instruction;
