import java.util.ArrayList;

import javax.swing.*;

public class BasicSwing extends JFrame{
	
		JPanel p = new JPanel();
		JButton b = new JButton("Hello");
		JTextField t = new JTextField("Hi",10);
		JTextArea ta = new JTextArea("How\nare\nyou",15,10);
		JLabel l = new JLabel("What's up");
		//ArrayList<String> choices = new ArrayList<String>();
		//choices.add("hola");
		//choices.add("herro");
		//choices.add("bonjour");
		
		String[] choices = {"hola", "herro", "bonjour"};
		
		
		@SuppressWarnings("unchecked")
		JComboBox cb = new JComboBox(choices);
	public static void main(String[] args){
		new BasicSwing();
		
	}
	public BasicSwing(){
		super("Basic Swing App");//constructor; title
		setSize(400,300); //400 wide by 300 high
		setResizable(true);
		p.add(b);
		p.add(t);
		p.add(ta);
		p.add(l);
		p.add(cb);
		add(p);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setVisible(true); //do this very last same as show()
		
	}
}
