package calculator;

import javax.swing.JFrame;

public class CalcMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        // create an instance of JFrame - a swing window
        JFrame f = new JFrame("Calculator");
        f.setSize( 300, 200 );
        f.setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
        // add an instance of MyPanel
        f.add( new CalcPanel() );

        f.setVisible( true );
	}

}
