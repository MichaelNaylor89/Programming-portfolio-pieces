package calculator;

import java.awt.event.*;
import javax.swing.*;

public class CalcPanel extends JPanel implements ActionListener {

	JLabel outLabel;
    
    JTextField inField;
    JLabel inFieldLabel;
    JTextField inField2;
    JLabel inFieldLabel2;
    
    JButton plusButton;
    JButton minusButton;
    JButton multiplyButton;
    JButton divideButton;

    enum MathOperation {
    	PLUS, MINUS, MULTIPLY, DIVIDE
    }
    
    CalcPanel()
    {
        outLabel = new JLabel("");
        inFieldLabel = new JLabel("1st Nummber: ");
        inField = new JTextField(20);
        inFieldLabel2 = new JLabel("2nd Number: ");
        inField2 = new JTextField(20);

        plusButton = new JButton("+");
        plusButton.addActionListener(this);
        minusButton = new JButton("-");
        minusButton.addActionListener(this);
        multiplyButton = new JButton("*");
        multiplyButton.addActionListener(this);
        divideButton = new JButton("/");
        divideButton.addActionListener(this);


        add(inFieldLabel);
        add(inField);
        add(inFieldLabel2);
        add(inField2);
        add(plusButton);
        add(minusButton);
        add(multiplyButton);
        add(divideButton);
        add(outLabel);
    }
    
    public void calc (MathOperation operation)
    {
    	if (inField.getText().trim().equalsIgnoreCase("") || inField2.getText().trim().equalsIgnoreCase(""))
    	{
    		outLabel.setText("Input cannot be empty");
    	
    	}
    	else
    	{
	    	try {
	    		
	    	
		    	float number1 = Float.parseFloat(inField.getText());
		    	float number2 = Float.parseFloat(inField2.getText());
		    	float result = 0.0f;
		    	
		    	switch (operation)
		    	{
		    	case PLUS:
		    		result = number1 + number2;
		    		break;
		    	case MINUS: 
		    		result = number1 - number2;
		    		break;
		    	case MULTIPLY:
		    		result = number1 * number2;
		    		break;
		    	case DIVIDE:
		    		result = number1 / number2;
		    		break;
		    	default:	
		    	}
		    	
		    	outLabel.setText("The answer is: " + result);
		    	}catch (Exception ex)
	    	{
	    		outLabel.setText("Only numbers are allowed");
	    	}
	    	
	    }
    }
    
    public void actionPerformed(ActionEvent event)
    {
        if (event.getSource() == plusButton)
        {
        	
        	calc(MathOperation.PLUS);
        	
        }
        else if ( event.getSource() == minusButton )
        {
        	
        	calc(MathOperation.MINUS);
        }
        else if ( event.getSource() == multiplyButton )
        {
        	calc(MathOperation.MULTIPLY);
        
        }
        else if ( event.getSource() == divideButton )
        {
        	calc(MathOperation.DIVIDE);
        }
       
    }
}
