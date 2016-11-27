<html>

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="layout.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

    <title>CWRUTix</title>
</head>

<body>

  <script>
      function validate_login(){
          var caseid = document.getElementById('caseid').value
          var password = document.getElementById('password').value
          if (caseid.length == 0) {
              alert('please enter a Case ID');
              return false;
          }
          if (password.length == 0) {
              alert('please enter a password');
              return false;
          }
      }

      function validate_register(){
          var caseid = document.getElementById('register_caseid').value
          var password = document.getElementById('register_password').value
          var username = document.getElementById('username').value
          if (username.length < 6) {
              alert('username must be atleast 6 characters');
              return false;
          }
          if (caseid.length < 3 || caseid.length > 7) {
              alert('Case ID must have length between 3-7 characters');
              return false;
          }
          if (password.length < 6) {
              alert('password must be between 6-16 characters');
              return false;
          }
      }
    </script>

    <div id = "main">

        <fieldset>
        <legend>CWRUTix</legend>
        <div id = "login">
            <form onsubmit = "return validate_login()">
                <br>
                <input type="text" id="caseid" maxLength="7" placeholder="Case ID"><br>
                <input type="password" maxLength="16" id="password" placeholder="Password"><br>
                <input type="submit" value="Login" name="submit">
                <br>
            </form>
        </div>

        <div id = "register">
            <form onsubmit = "return validate_register()">
                <br>
                <input type="text" id="username" maxLength="16" placeholder="Username"><br>
                <input type="text" id="register_caseid" maxLength="7" placeholder="Case ID"><br>
                <input type="password" maxLength="16" id="register_password" placeholder="Password"><br>
                <input type="submit" value="Register" name="submit">
                <br>
            </form>
        </div>
        <button class = "login_register">New user?</button>
        <!--<a href="">New user?</a>-->
         </fieldset>

    </div>

    <script>
        $(".login_register").on("click", function () {
            $("#login, #register").toggle();
            $(this).text(function(i, text){
             return text === "Sign in" ? "New User?" : "Sign in";
         });
     });
    </script>

</body>
</html>
