%{
    #include "shared.h"
    #include "times.tab.hpp"
%}
%option noyywrap
%option yylineno

whitespace	([\t\n ])

%%

")"	return RP;
"("	return LP;
"{"	return LC;
"}"	return RC;
";"	return SC;
"="	return ASSIGN;
[+]	return PLUS;
[-]	return MINUS;
[*]	return MULT;
[/]	return DIV;
"<="	return SE;
">="	return GE;
"=="	return EQ;
"!="	return NEQ;
">"	return GT;
"<"	return ST;
"and"	return AND;
"or"	return OR;
"int"	return INT;
"sec"	return SECOND;
"min"	return MINUTE;
"hr"	return HOUR;
"day"	return DAY;
"week"	return WEEK;
"print"	return PRINT;
"input"	return INPUT;
"true"	return TRUE;
"false"	return FALSE;
"if"	return IF;
"else"	return ELSE;
"while"	return WHILE;
"break"	return BREAK;
"switch" return SWITCH;
"case"   return CASE;
"not"	return NOT;
"bool"	return BOOL;
[a-zA-Z]+      {yylval.name = std::string(yytext); return ID;}
\"[^"]*\"      	return STRING;
([1-9][0-9]*)|0	return NUM;
":"		return COLON;
{whitespace}	;
"//"[^\n]*\n	; // Comments
.				{output::errorLex(yylineno);exit(0);};
%%

