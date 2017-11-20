package co.edu.eafit.dis.st0270.s20172.w7;

//import co.edu.eafit.dis.st0270.javacalc.abstree.*;


import java_cup.runtime.*;
import java.io.FileReader;
import java.io.FileNotFoundException;
//import co.edu.eafit.dis.st0270.s20172.w7.parser.*;
//import co.edu.eafit.dis.st0270.s20172.w7.lexer.*;

public class App{
	
   public static void main(String [] args){
		
  	if(args.length != 1){
	    System.err.println("Uso: Main <fichero>");
	    System.exit(1);
	}
	try{
	    W7Lexer lexer = new W7Lexer(new FileReader(args[0]));
	    W7Parser parser = new W7Parser(lexer);
	    
	    parser.parse();
	}catch(FileNotFoundException fnfe){
	    System.err.println("Fichero " + args [0] + "No existe");
	    System.exit(1);
	}catch(Exception e){
	    System.err.println(e);
	    System.exit(1);
	}
	
	
    }
}
