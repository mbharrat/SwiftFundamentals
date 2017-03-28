import javax.swing.*;

class MyFrame extends JFrame{
	public MyFrame(){
		setTitle("My Empty Frame");
		setSize(300,200);
		setLocation(10,200);
	}
	@SuppressWarnings("deprecation")
	public static void main(String[] args){
		JFrame f = new MyFrame();
		f.setDefaultCloseOperation(EXIT_ON_CLOSE);
		f.show();//can also use f.showvisible(true);
		
	}

}
