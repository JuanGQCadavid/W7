package co.edu.eafit.dis.st0270.s20172.w7.lexer;

import java_cup.runtime.*;
import co.edu.eafit.dis.st0270.s20172.w7.parser.W7Sym;

%%
%class W7Lexer
%cup

whiteSpace = [ \t]
EOL = \n|\r\n|\r
Number = ([1-9][0-9]*|0)
IdentifierFunction = ("swap"|"max"|"min")
Identifier = [:jletter:][:jletterdigit:]*



%%
"S"							{ return new Symbol(W7Sym.S);}
"P"							{ return new Symbol(W7Sym.P);}
"R"							{ return new Symbol(W7Sym.R);}
"M"							{ return new Symbol(W7Sym.M);}
"C"							{ return new Symbol(W7Sym.C);}

"<<"						{ return new Symbol(W7Sym.DESPLIZQ);}
">>"						{ return new Symbol(W7Sym.DESPLDER);}
"="							{ return new Symbol(W7Sym.IGUAL);}

"+"							{ return new Symbol(W7Sym.SUMA);}
"-"							{ return new Symbol(W7Sym.RESTA);}
"*"							{ return new Symbol(W7Sym.MULTI);}
"/"							{ return new Symbol(W7Sym.DIV);}
"("							{ return new Symbol(W7Sym.IPARENTESIS);}
")"							{ return new Symbol(W7Sym.DPARENTESIS);}

{Number}				{ return new Symbol(W7Sym.NUMBER);}
{IdentifierFunction}		{ return new Symbol(W7Sym.IDENTIFIERFUNC);}
{Identifier}		{ return new Symbol(W7Sym.IDENTIFIER);}
{whiteSpace}		{ }
{EOL}						{ return new Symbol(W7Sym.EOL);}
<<EOF>>         { return new Symbol(W7Sym.EOF);}
.               { return new Symbol(W7Sym.error);}