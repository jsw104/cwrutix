<html>

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

    <title>CWRUTix</title>
</head>

<body>

  <script>
      function validate_login(){
          var caseid = document.getElementById('caseid').value;
          var password = document.getElementById('password').value;
          var success = true;
          if (password.length < 6) {
              $('#pword_alert').html("Please enter a valid password.");
              document.loginform.password.focus();
              success = false;
          } else {
              $('#pword_alert').html("");
          }
          if (caseid.length < 3) {
              $('#caseid_alert').html("Please enter a valid Case ID.");
              document.loginform.caseid.focus();
              success = false;
          } else {
              $('#caseid_alert').html("");
          }

          return success;
      }

      function validate_register(){
          var caseid = document.getElementById('register_caseid').value;
          var password = document.getElementById('register_password').value;
          var username = document.getElementById('username').value;
          var success = true;
          if (password.length < 6) {
              $('#reg_pword_alert').html("Password must be between 6-16 characters in length.");
              document.registerform.register_password.focus();
              success = false;
          } else {
              $('#reg_pword_alert').html("");
          }

          if (caseid.length < 3 || caseid.length > 7) {
              $('#reg_caseid_alert').html("Please enter a valid Case ID.");
              document.registerform.register_caseid.focus();
              success = false;
          }else {
              $('#reg_caseid_alert').html("");
          }

          if (username.length < 6) {
              $('#reg_uname_alert').html("Username must be at least 6 characters long.");
              document.registerform.username.focus();
              success = false;
          } else {
              $('#reg_uname_alert').html("");
          }
          return success;
      }
    </script>

    <div id = "main">

        <fieldset>
        <legend>CWRUTix</legend>
        <div id = "login">
            <form name = "loginform" onsubmit = "return validate_login()" action = "home.jsp">

                <input type="text" id="caseid" maxLength="7" placeholder="Case ID">
                    <div id="caseid_alert" class="failure"></div>
                <input type="password" maxLength="16" id="password" placeholder="Password">
                    <div id="pword_alert" class="failure"></div>
                <input type="submit" value="Login" name="submit">
                <br>
            </form>
        </div>

        <div id = "register">
            <form name ="registerform" onsubmit = "return validate_register()" action = "sql_query_handling/register_sql_formatter.jsp">

                <input type="text" id="username" maxLength="16" placeholder="Username">
                    <div id="reg_uname_alert" class="failure"></div>
                <input type="text" id="register_caseid" maxLength="7" placeholder="Case ID">
                    <div id="reg_caseid_alert" class="failure"></div>
                <input type="password" maxLength="16" id="register_password" placeholder="Password">
                    <div id="reg_pword_alert" class="failure"></div>
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
