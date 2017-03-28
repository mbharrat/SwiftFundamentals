public class Milestone3{
	public static void main(String[] args){

		boolean[][] mine1 = new boolean[9][9];
		char[][] gameboard = {{'0','0','0','1','1','1','0','0','0'},{'0','0','0','1','B','1','0','0','0'},{'0','0','0','1','2','2','1','0','0'},{'0','1','1','1','1','B','2','1','0'},{'0','1','B','1','1','2','B','1','0'},{'0','0','1','1','1','2','1','1','0'},{'0','0','1','2','B','1','0','0','0'},{'0','0','1','B','2','2','1','1','0'},{'0','0','1','1','1','1','B','1','0'}};
		boolean cluck = true;
		int row = 0;
		int column = 0;
		int counter = 0;
		System.out.println("Let's play us some Minesweeper!");
		System.out.println("Enter your guess! The board is a 5x5 grid:");
			while(cluck){
				System.out.println("Enter the column where you think there is no bomb(between 1-5)");
				System.out.println("or enter -1 to exit the game");
				column = IO.readInt();
				column=column-1;
				
				if(column==-2){
					break;
				}
				if(column<0||column>8){//checks bounds
					IO.reportBadInput();
				}
				else{
				
					System.out.println("Enter the row where you think there is no bomb(between 1-5):");
					row = IO.readInt();
					row = row-1;
					if(row>=0&&row<=8){//checks bounds
						if(mine1[column][row]==false){//checks to see if coordinate was already entered
							counter=counter+1;
							revealCell(mine1,gameboard, column, row);;
							printBoard(mine1,gameboard);
								if((column==1&&row==4)||(column==3&&row==5)||(column==4&&row==2)||(column==4&&row==6)||(column==6&&row==4)||(column==7&&row==3)||(column==8&&row==6)){//check to see if point is bomb
									System.out.println("YOU HIT A MINE!!!");
									System.out.println("GAME OVER");
									break;
								}
						}
						else{
							revealCell(mine1,gameboard,column, row);
							printBoard(mine1,gameboard);
						}		
					}
					else{
						IO.reportBadInput();
					}
				}
				if(counter==74){//checks to see if all unmined spaces are guessed

					System.out.println("You have won the game.");
					break;
				}
			}
	}		
	static void printBoard(boolean[][] mine1,char[][]gameboard){
		char random;
		for(int i = 0; i < mine1.length; i++){//number of rows
			for(int j = 0; j < mine1[0].length; j++){//number of columns
				if(mine1[j][i]==false){
					random = '~';
				}
				else{
					random = gameboard[j][i];
				}
				System.out.print(" "+ " "+ random);
			}
			System.out.println();
			System.out.println();
		}
		
	}
	static boolean[][] revealCell(boolean[][] mine1, char[][] gameboard, int column1, int row1){
		mine1[column1][row1] = true;
		if(gameboard[column1][row1] == '0')
		{
			for(int i = row1 - 1; i < row1 + 2; i++)
			{
				for(int j = column1 - 1; j < column1 + 2; j++)
				{
					if(!( ( i == -1 ) || ( i == mine1[0].length) || (j == -1 ) || (j == mine1.length) || ((i == row1) && (j == column1)) || (mine1[j][i] == true||gameboard[j][i]=='B')))
						revealCell(mine1, gameboard, j, i);
				}
			}
		}
		return mine1;
	} 
	
	
	
	
	
}
	