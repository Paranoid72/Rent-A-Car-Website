function validate()
{
    var username=document.getElementById("username").value;
    var password=document.getElementById("password").value;
    if(username=="root" && password=="admin123")
    {
        alert("Login Succesful");
        window.open("table.php");
        return false;
    }
    else
    {
        alert("Λυπούμαστε δεν είστε διαχειριστής της διαδικτυακής εφαρμογής.");
    }
}