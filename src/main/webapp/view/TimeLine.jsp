<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #countdown #tiles>span {
            font: bold 25px 'Droid Sans', Arial, sans-serif;
            text-align: center;
            color: #FFFFFF;
            border-radius: 3px;
            margin: 0 7px;
            padding:  0;
            display: inline-block;
            position: relative;
        }
    </style>
</head>

<body>
    <div id="countdown">
        <div id='tiles'></div>
        <div class="labels">

        </div>
    </div>
</body>

</html>
<script>
    var target_date = new Date().getTime() + (3600 * 48 * 1000); // set the countdown date
    console.log("target_date", new Date().getTime())
    var hours, minutes, seconds; // variables for time units

    var countdown = document.getElementById("tiles"); // get tag element

    getCountdown();

    setInterval(function () { getCountdown(); }, 1000);

    function getCountdown() {

        // find the amount of "seconds" between now and target
        var current_date = new Date().getTime();
        // console.log("current_date", current_date)
        var seconds_left = (target_date - current_date) / 1000;
        //    console.log("seconds_left", seconds_left)
        seconds_left = seconds_left % 86400;

        hours = pad(parseInt(seconds_left / (3600 * 24)));
        seconds_left = seconds_left % 3600;

        minutes = pad(parseInt(seconds_left / 60));
        seconds = pad(parseInt(seconds_left % 60));

        // format countdown string + set tag value
        countdown.innerHTML = "<span>" + hours + " : </span><span>" + minutes + " : </span><span>" + seconds + "</span>";
    }

    function pad(n) {
        return (n < 10 ? '0' : '') + n;
    }


</script>