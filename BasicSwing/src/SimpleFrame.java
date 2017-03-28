import javax.swing.*;
import java.awt.*;
import java.awt.event.*;


public class SimpleFrame extends JFrame {
	private JButton ok;
	private JButton quit;
	public SimpleFrame(){
		ok = new JButton("OK");
		quit = new JButton("QUIT");
		setLayout(new FlowLayout(FlowLayout.LEFT,15,15));
		add(ok);
		add(quit);
		
		quit.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e){
					System.exit(1);
			}
			
		});
		
	}
	public static void main(String[] args){
		SimpleFrame sf = new SimpleFrame();
		sf.setDefaultCloseOperation(DO_NOTHING_ON_CLOSE);
		sf.setSize(200,80);
		sf.setLocationRelativeTo(null);
		sf.setVisible(true);
	}
}
