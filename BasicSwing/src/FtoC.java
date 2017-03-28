import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class FtoC extends JFrame{
	JLabel f;
	JLabel c;
	JTextField F;
	JTextField C;
	public FtoC(String title){
		super(title);
		f = new JLabel("Fahrenheit");
		c = new JLabel("Celsius");
		F = new JTextField(5);
		C = new JTextField(5);
		F.setHorizontalAlignment(JTextField.RIGHT);
		C.setHorizontalAlignment(JTextField.RIGHT);
		
		setLayout(new FlowLayout(FlowLayout.LEFT,15,15));
		add(f);
		add(c);
		add(F);
		add(C);
		F.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e){
				float fval = Float.parseFloat(F.getText());
				float cval = (fval-32)*5.0f/9.0f;
				String cstr = String.format("%5.1f", cval);
				C.setText(cstr);
			}
		});
	C.addActionListener(new ActionListener (){
		public void actionPerformed(ActionEvent e){
			float cval = Float.parseFloat(C.getText());
			float fval = 9.0f/5.0f*cval + 32f;
			String fstr = String.format("%5.1f", fval);
			F.setText(fstr);
		}
			
		});
	} 
	public static void main(String[] args){
		FtoC fc = new FtoC("F-C Conversion");
		fc.setSize(200,120);
		fc.setResizable(false);
		fc.setVisible(true);
		fc.setLocationRelativeTo(null);
		fc.setDefaultCloseOperation(EXIT_ON_CLOSE);
	}
}
	

