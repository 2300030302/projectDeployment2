<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Mail Service</title>
</head>
<body>
    <h1>Send Mail</h1>
    <form action="/sendMail" method="post">
        <label for="to">To:</label>
        <input type="email" id="to" name="to" required><br><br>
        <label for="subject">Subject:</label>
        <input type="text" id="subject" name="subject" required><br><br>
        <label for="message">Message:</label><br>
        <textarea id="message" name="message" rows="5" cols="30" required></textarea><br><br>
        <button type="submit">Send</button>
    </form>
</body>
</html>
