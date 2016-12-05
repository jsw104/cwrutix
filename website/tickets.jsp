<%@ include file="header.jsp" %>

<head>

<style>

.ticket{
    padding:10px;
    text-align:center;
    width: 100px;
    height: 110px;
    margin:20px;
    outline:2px solid var(--link-hover-lightblue);
    display: inline-block;
    font-family: 'Raleway', sans-serif;
    color: black;
    vertical-align:bottom;
}

.ticket:hover{
    background-color: var(--link-hover-lightblue);
    outline:1px solid #333;
    color: black;
    font-size:17px;
    box-shadow: 3px 3px 7px -3px #000;
}

#tickets_held{
    width: 100%;
}

#tickets_selling{
    width: 100%;
}

#tickets_held a, #tickets_selling a{
    color: #333;
    font-size: 20px;
    padding: 10px;
    font-weight: bold;
}

#tickets_held a:hover, #tickets_selling a:hover{
    color: var(--link-color-blue);
}

</style>
</head>

<center>
    <h1> Manage Tickets </h1>
</center><br>



<div id = "tickets_held">
    <b>Your tickets:</b><br>


</div>


<br>

<div id = "tickets_selling">
<b>Currently selling:</b><br>

</div>

<br><br>


    <script>


    window.addEventListener("load", function () {
        var tix = 'Ticket1, Ticket2, Ticket3, Ticket4, Ticket5, Ticket6'.split(',');
        for (var i in tix) {
            (function(){
                var newElement = document.createElement('div');
                let ticInfo = tix[i];
                newElement.id = ticInfo;
                newElement.className = "ticket";
                let text = '<h3>' + ticInfo + '</h3><h4>' + 'Location here' + '</h4><h5>' + '1/17/2017' + '</h5>';
                newElement.innerHTML = text;

                newElement.onmouseover = function(){
                    newElement.innerHTML='<br><a href="">View</a>'+ '<br><br><a href="">' +'Sell</a>';
                };
                newElement.onmouseout = function(){
                    var e = event.toElement || event.relatedTarget;
                    if (e.parentNode == this || e == this) {
                       return;
                    }
                    newElement.innerHTML = text;
                };
                //newElement.onclick = function(){newElement.innerHTML = '...transfer to sell...'};
                document.getElementById("tickets_held").appendChild(newElement);
            }());
        }
    });



    window.addEventListener("load", function () {
        var tix = 'TicketA, TicketB'.split(',');
        for (var i in tix) {
            (function(){
            var newElement = document.createElement('div');
            let ticInfo = '<h3>' + tix[i] + '</h3><h4>' + '$20.75' + '</h4><h5>' + '2/02/2017' + '</h5>';
            newElement.id = ticInfo;
            newElement.className = "ticket";
            newElement.innerHTML = ticInfo;
            newElement.onmouseover = function(){newElement.innerHTML='<br><a href="">Edit</a>'+ '<br><br><a href="">' +'Remove</a>';};
            newElement.onmouseout = function(){
                var e = event.toElement || event.relatedTarget;
                if (e.parentNode == this || e == this) {
                   return;
                }
                newElement.innerHTML = ticInfo;
            };
            //newElement.onclick = function(){newElement.innerHTML = '...transfer to hold...';};
            document.getElementById("tickets_selling").appendChild(newElement);
        }());
        }
    });

    </script>


<%@ include file="footer.jsp" %>
