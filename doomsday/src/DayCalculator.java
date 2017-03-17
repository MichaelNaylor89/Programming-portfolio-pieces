import java.awt.event.*;

//michael naylor
import javax.swing.*;

//import GreeterPanel.MathOperation;

class CalculatorPanel extends JPanel implements ActionListener  
{
	// Out puts the response
	JLabel outLabel;
	
	// Inputs the day value
	JTextField inField;
	JLabel inFieldLabel;

	// Inputs the month value
	JTextField in2Field;
	JLabel in2FieldLabel;
	
	// Inputs the year value
	JTextField in3Field;
	JLabel in3FieldLabel;
	
	// Button to return results
	JButton GetDay;
	
	String actualDay;
		
	CalculatorPanel()
	{
		outLabel = new JLabel("");
		
		inFieldLabel = new JLabel("Day");
		inField = new JTextField(5);
		
		in2FieldLabel = new JLabel("Month");
		in2Field = new JTextField(15);
		
		in3FieldLabel = new JLabel("Year");
		in3Field = new JTextField(5);
		
		GetDay = new JButton("Get Day");
		GetDay.addActionListener(this);
		
		add(inFieldLabel);
		add(inField);
		
		add(in2FieldLabel);
		add(in2Field);
		
		add(in3FieldLabel);
		add(in3Field);
		
		add(GetDay);
		add(outLabel);		
	}// end of Calulator Panel 
	
	boolean IsAlphabetical(String name)
	{
		boolean allAlphabet = true;
		for (int i = 0; i < name.length(); i++)
		{
			char c = name.charAt(i);
			if(!((c == ' ') || (c >= 'a' && c <= 'z') || (c >= 'A' && c <='Z')))
			{
				allAlphabet = false;
				break; // quit the loop early = we have seen enough
			}
		}
		return allAlphabet;
	}// end of IsAlphabetical method
	
	
	public void sort ()
	{
		if (inField.getText().trim().equalsIgnoreCase("")|| in2Field.getText().trim().equalsIgnoreCase("") || in3Field.getText().trim().equalsIgnoreCase(""))
		{
			outLabel.setText("Fields cannot be empty!!");
		}
	} // end of public void sort
	

	// Action Event Method
	public void actionPerformed(ActionEvent event)
	{
		String fieldDay;
		String fieldMonth;
		String fieldYear;
		//String WeekDay = null;
		int day;
		int month;
		int year;
		
		try{
		fieldDay = inField.getText();
		day = Integer.parseInt(fieldDay);
		
		fieldMonth = in2Field.getText();
		month = Integer.parseInt(fieldMonth);
		
		fieldYear = in3Field.getText();
		year = Integer.parseInt(fieldYear);
		
			int dayOfWeek = Doomsday.GetDayOfWeek(day, month, year);
			
			switch (dayOfWeek)
			{
			case(1):
				actualDay = "Monday";
				break;
			case(2):
				actualDay = "Tuesday";
				break;
			case(3):
				actualDay = "Wednesday";
				break;
			case(4):
				actualDay = "Thursday";
				break;
			case(5):
				actualDay = "Friday";
				break;
			case(6):
				actualDay = "Saturday";
				break;
			case(7):
				actualDay = "Sunday";
				break;
			}
		
				outLabel.setText(+day+"/"+month+"/"+year+" is a " +actualDay);	
		}
		catch(Exception ex){
			outLabel.setText("Only numbers can be entered");
		}
		
	} // end of actionPerformed event
} // end of class
public class DayCalculator extends Doomsday
{
	public static void main(String args[])
	{
		JFrame f = new JFrame("Calender");
		f.setSize(600, 110);
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f.add(new CalculatorPanel());
		
		f.setVisible(true);
	}
} // end of DayCalculator