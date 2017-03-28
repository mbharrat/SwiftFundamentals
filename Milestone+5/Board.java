public class Board{
	public MsGUI gui;
	boolean[][] flagged = new boolean[9][9];
	boolean[][] mine1 = new boolean[9][9];
	
	int col;
	int row;
	char[][] gameboard = {{'0','0','0','1','1','1','0','0','0'},{'0','0','0','1','B','1','0','0','0'},{'0','0','0','1','2','2','1','0','0'},{'0','1','1','1','1','B','2','1','0'},{'0','1','B','1','1','2','B','1','0'},{'0','0','1','1','1','2','1','1','0'},{'0','0','1','2','B','1','0','0','0'},{'0','0','1','B','2','2','1','1','0'},{'0','0','1','1','1','1','B','1','0'}};
	
	public static void main(String[]args){
		char[][] gameboard = {{'0','0','0','1','1','1','0','0','0'},{'0','0','0','1','B','1','0','0','0'},{'0','0','0','1','2','2','1','0','0'},{'0','1','1','1','1','B','2','1','0'},{'0','1','B','1','1','2','B','1','0'},{'0','0','1','1','1','2','1','1','0'},{'0','0','1','2','B','1','0','0','0'},{'0','0','1','B','2','2','1','1','0'},{'0','0','1','1','1','1','B','1','0'}};
		Board b = new Board();
		b.gui = new MsGUI(b);
		b.gui.setVisible(true);
	
		
	}
		public Board(){
			
			
				
		
		}
		public void flagCell(int row, int col){
			if(mine1[row][col]==false){
				flagged[row][col]=true;
			}
		}
		public boolean isFlagged(int row, int col){
			if(flagged[row][col]==true){
				return true;
			}
			else{
				return false;
			}
			
		}
		public int getHeight(){
			return mine1.length;
		
		}
		public int getWidth(){
			return mine1[0].length;
		
		}
		public char getValue(int row, int col){
			if(mine1[row][col]==false && flagged[row][col]==false){
				return '~';
			}
			else if(flagged[row][col]==true && mine1[row][col]==false){
				return 'F';
			}
			else if(mine1[row][col]=true){
				return gameboard[row][col];
				
			
			}
			
			return gameboard[row][col];
		}
		public void revealCell(int row, int col){
			int counter=0;
			mine1[row][col] = true;
			if(gameboard[row][col] == '0')
			{
				for(int i = row - 1; i < row + 2; i++)
				{
						for(int j = col - 1; j < col + 2; j++)
						{
							if(!( ( i == -1 ) || ( i == mine1.length) || (j == -1 ) || (j == mine1[0].length) || ((i == row) && (j == col)) || (mine1[i][j] == true|| (gameboard[i][j]=='B'))))
								revealCell(i, j);
						
						}
								
				}
			}else if(gameboard[row][col]=='B'){
				gui.lose("YOU HIT A BOMB");
				for(int i = 0; i < mine1.length; i++)
				{
					for(int j = 0; j < mine1[0].length; j++)
					{
						mine1[i][j]=true;
						
					}
				}
				
			}
			for(int i = 0; i < mine1.length; i++){
				for(int j = 0; j < mine1[0].length; j++){
					if(mine1[i][j]==true && gameboard[row][col]!='B'){
						counter = counter+1;
						if(counter==74){
							gui.win("YOU WIN!");
						}
					}
				}
			}
		}
		public void unflagCell(int row, int col){
			
			if(flagged[row][col]=true){
				flagged[row][col]=false;
			}
		}
	
}	
		