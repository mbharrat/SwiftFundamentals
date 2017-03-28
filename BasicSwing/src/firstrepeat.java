//import java.Util.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.lang.*;



public class firstrepeat extends JFrame{
		private JLabel texti;
		private JLabel texto;
		private JTextField textio;
		private JTextField textoo;
		
		public firstrepeat(String t){
			super(t);
			texti = new JLabel("Enter input text");
			texto = new JLabel("first repeated character");
			textio = new JTextField(25);
			textoo = new JTextField(25);
			textio.setHorizontalAlignment(JTextField.LEFT);
			textoo.setHorizontalAlignment(JTextField.LEFT);
			
			setLayout(new FlowLayout(FlowLayout.LEFT,50,50));
			add(texti);
			add(textio);
			add(texto);
			add(textoo);
			
			
			textio.addActionListener(new ActionListener(){
				public void actionPerformed(ActionEvent e){
					String ana = (textio.getText());
					String uno = repeathelper(ana);
					textoo.setText(uno);	
				}
			});
			textoo.setEditable(false);
		}
		public static String repeathelper(String s){
			int arrL=0;
			char[] counter;
			counter = new char[s.length()];
			
			for(int i=0;i<s.length();i++){
				for(int z=0;z<arrL+1;z++){
					if(Character.isWhitespace(s.charAt(i))){
						break;
					}
					if(Character.toLowerCase(s.charAt(i)) == counter[z] ){
						return Character.toString(counter[z]);
					}
				}
				if(counter[0]==0){
					counter[0] = s.charAt(0);
				}
				if(Character.isWhitespace(s.charAt(i))!=true){
				counter[arrL+1]=Character.toLowerCase(s.charAt(i));
				arrL++;
				}
			}
		
		String bad = "No repeats in string";
		return bad;
		}
public static void main(String[] args){
	firstrepeat re = new firstrepeat("First char repeat finder");
	re.setSize(500,400);
	re.setResizable(false);
	re.setVisible(true);
	re.setLocationRelativeTo(null);
	re.setDefaultCloseOperation(EXIT_ON_CLOSE);
}
}