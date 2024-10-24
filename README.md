# Age_Calculator
The Age Calculator is a JSP-based web application that allows users to input their date of birth (DOB) and calculates their current age, displays the date of birth, and shows the number of days remaining until their next birthday. The system uses basic date manipulation to perform these calculations and displays the results dynamically on a web page.
 Features:
1. User Input for DOB:
   - Users can enter their date of birth in a web form.
   - Input validation ensures the entered date is in the correct format (e.g., YYYY-MM-DD).

2. Age Calculation:
   - The application calculates the user’s current age by subtracting the entered DOB from the current date.
   - The result is displayed in years, months, and days (or just years if preferred).

3. Days Until Next Birthday:
   - The application determines the user’s next birthday based on the current date.
   - It calculates and displays the number of days remaining until the next birthday.

4. Display of Results:
   - The DOB, calculated age, and days until the next birthday are shown on the same page after form submission.

5. Dynamic and Real-Time Response:
   - Results are displayed dynamically using JSP with embedded Java code for calculations.

Technical Details:

- Technology Stack:
  - Frontend: HTML5, CSS for form design.
  - Backend: JSP (JavaServer Pages) with embedded Java code for processing the user input and performing the calculations.
  - Server: Apache Tomcat for hosting the JSP application.
  - Date Manipulation: Java LocalDate and Period classes from java.time package for age and birthday calculations.




https://github.com/user-attachments/assets/9a872003-5266-42ca-b395-5f711a048f70


