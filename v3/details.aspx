<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Basic ASPX Test Page</title>
    <script type="text/javascript">
        // JavaScript to pop up an alert when the page loads
        window.onload = function() {
            alert("Hello! This is an initial alert.");
            
            // Try to read cookies if available
            let cookieValue = document.cookie;
            if (cookieValue) {
                alert("Cookie found: " + cookieValue);
            } else {
                alert("No cookies found.");
            }
        };

        // Function to communicate with the parent page
        function communicateWithParent() {
            if (window.parent) {
                window.parent.postMessage("Message from iframe to parent", "*");
            }
        }
    </script>
</head>
<body>
    <h1>Basic ASPX Page with JavaScript</h1>
    <button onclick="communicateWithParent()">Communicate with Parent Page</button>
</body>
</html>
