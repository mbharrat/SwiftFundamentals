import java.io.Console;
import java.util.Arrays;
import java.util.Scanner;

public class conditional {
	public static void main(String[] args){
		
	Scanner m = new Scanner(System.in);
	System.out.println("Enter your age");
	int a = m.nextInt();
	while(a<18){
		System.out.println("You are a baby");
		System.out.println("Enter a new age");
		a = m.nextInt();
	}
	/*for(int i=0;i<5;i++){
		System.out.println("hi");
		
	}
	}
	*/
	
	int z =0;
	while(z<6){
		System.out.println("bye");
	z++;
	
	}
	
}
}
