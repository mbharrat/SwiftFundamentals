import java.util.Scanner;

public class exponent {
	public static void main(String[] args){
		Scanner a = new Scanner(System.in);
		System.out.println("Enter star number");
		int x = a.nextInt();
		for(int i=0;i<x;i++){
			for(int z=0;z<i+1;z++){
				System.out.print("*");
			}
			System.out.println();
		}
		
		
		
		
	}
}
