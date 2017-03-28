import java.io.Console;
import java.util.Arrays;
import java.util.Scanner;

public class character {
	public static void main(String[] args){
		Scanner coffee = new Scanner(System.in);
		System.out.println("Pick a number to add.");
		int x = coffee.nextInt();
		if(x >=5 && x<=9){
			System.out.println("Devina");
		}else{
			System.out.println("Michael");
		}
		System.out.println("Pick another number to add");
		int y = coffee.nextInt();
		int z = x+y;
		System.out.print("Your value is ");
		System.out.println(z);
		
				
	
		
		
		
		
		
		//Scanner poop = new Scanner(System.in);
		//System.out.println("How old are you?");
		//int x = poop.nextInt();
		//System.out.println(x);
		
		
		

		
	}
}
