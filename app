import java.awt.*;
import javax.swing.*;

public class Main {

	public static void main(String[] args) {
		
		JFrame frame = new JFrame("Celsius to Fahrenheit Converter");
		JPanel panel = new JPanel();
		//k stopni C = f stopni F 
		//gdzie k zmienia się od -70 do +60.
		// (30°C x 1.8) + 32
		
	AbstractListModel grades = new AbstractListModel() {

	      public Object getElementAt(int i) { return (-70 + i) + " stopni C" + " = " + ( ((-70 + i) * 1.8) + 32 ) + " stopni F"; }
	      public int getSize() { return 131; }
	     };
	
	     JList list = new JList(grades);
	     
	     JScrollPane skrol = new JScrollPane(list);
		 skrol.setPreferredSize(new Dimension(700, 700));
	     

	     panel.add(skrol);
	     frame.add(panel); 

	        //frame.setSize(500,500); 
	     frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  
	     frame.pack();   
	     frame.show(); 
	   
	}
}
