<form action="processorder.php" method="POST">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>
    
    <label for="phone">Phone Number:</label>
    <input type="tel" id="phone" name="phone" required>
    
    <label for="language">Preferred Language:</label>
    <select id="language" name="language" required>
        <option value="English">English</option>
        <option value="Spanish">Spanish</option>
        <option value="Mandarin">Mandarin</option>
        <option value="French">French</option>
    </select>
    
    <label for="level">Course Level:</label>
    <select id="level" name="level" required>
        <option value="Beginner">Beginner</option>
        <option value="Intermediate">Intermediate</option>
        <option value="Advanced">Advanced</option>
    </select>
    
    <label for="timeslot">Preferred Time Slot:</label>
    <input type="text" id="timeslot" name="timeslot" placeholder="e.g., 10 AM - 12 PM" required>
    
    <input type="submit" value="Register">
</form>