<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Age Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f4f4f4;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
        }
        input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .result {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Enter your Date of Birth</h2>
        <form action="" method="post">
            Date of Birth: <input type="date" name="dob" required>
            <input type="submit" value="Calculate">
        </form>

        <% 
            if(request.getMethod().equals("POST")){
                String dobStr = request.getParameter("dob");
                java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
                java.util.Date dob = null;
                try {
                    dob = sdf.parse(dobStr);
                } catch (java.text.ParseException e) {
                    e.printStackTrace();
                }

                java.util.Calendar currentDate = java.util.Calendar.getInstance();
                java.util.Calendar birthday = java.util.Calendar.getInstance();
                birthday.setTime(dob);
                
                // Calculate age
                int age = currentDate.get(java.util.Calendar.YEAR) - birthday.get(java.util.Calendar.YEAR);
                if (currentDate.get(java.util.Calendar.DAY_OF_YEAR) < birthday.get(java.util.Calendar.DAY_OF_YEAR)) {
                    age--;
                }
                
                // Calculate days left until next birthday
                birthday.set(java.util.Calendar.YEAR, currentDate.get(java.util.Calendar.YEAR));
                if (birthday.before(currentDate) || birthday.equals(currentDate)) {
                    birthday.set(java.util.Calendar.YEAR, currentDate.get(java.util.Calendar.YEAR) + 1);
                }
                int daysLeft = (int)((birthday.getTimeInMillis() - currentDate.getTimeInMillis()) / (1000 * 60 * 60 * 24));
        %>

        <div class="result">
            <h2>Date of Birth: <%= dobStr %></h2>
            <h2>Your Age is: <%= age %></h2>
            <h2>Days Left until Next Birthday: <%= daysLeft %></h2>
        </div>

        <% } %>
    </div>
</body>
</html>