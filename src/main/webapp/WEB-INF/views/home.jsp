<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/views/loginlayout.jsp" charEncoding="UTF-8">

    <c:param name="title" value="Library" />
    <c:param name="body">
        <div class="container" role="main">
        <!--          <h1>Library TAT Java training project</h1> --!>
            <h1>&nbsp;</h1>
            <h1>&nbsp;</h1>
            <h1>&nbsp;</h1>
            <h1>&nbsp;</h1>
            
            
         <!--  <h3>  Today is ${serverTime} </h3> !-->
           <h1>MOTIVATION</h1>
          <h1>YOU DO NOTHING: <label id="hours">hours 00</label>&nbsp;minutes&nbsp;<label id="minutes">00</label>&nbsp;seconds&nbsp;<label id="seconds">00</label>
    <script type="text/javascript">
        var hoursLaber = document.getElementById("hours")
        var minutesLabel = document.getElementById("minutes");
        var secondsLabel = document.getElementById("seconds");
        var totalSeconds = 0;
        setInterval(setTime, 1000);

        function setTime()
        {
            ++totalSeconds;
            secondsLabel.innerHTML = pad(totalSeconds%60);
            minutesLabel.innerHTML = pad(parseInt(totalSeconds/60));
            hoursLabel.innerHTML = pad(parseInt(totalSeconds/3600));
        }

        function pad(val)
        {
            var valString = val + "";
            if(valString.length < 2)
            {
                return "0" + valString;
            }
            else
            {
                return valString;
            }
        }
    </script></h1>     
        </div>
    </c:param>
</c:import>

