<html>
    <body>
    <script type="text/javascript">
        function mathFunctions(){
            var num1 = document.getElementById("numFirst").value;
            var num2 = document.getElementById("numSecond").value;
            // alert(document.querySelector('input[name="operators"]:checked').value);
            var operator = document.querySelector('input[name="operators"]:checked').value;
            var numAnswer = 0;
            switch(operator) {
                case '+':
                    numAnswer = parseInt(num1) + parseInt(num2);
                    break;
                case '-':
                    numAnswer = parseInt(num1) - parseInt(num2);
                    break;
                case 'x':
                    numAnswer = parseInt(num1) * parseInt(num2);
                    break;
                case '/':
                    numAnswer = parseFloat(num1) / parseFloat(num2);
                    break;
                default:
            }
            document.getElementById("numAnswer").innerHTML = numAnswer.toString();
        }

        var varTimer = setInterval(myBootcampTimer, 1000);
        function myBootcampTimer() {
            var dtNow = new Date();
            document.getElementById("timer").innerHTML = "Current Time: " + dtNow.toLocaleTimeString();
        }
    </script>
        <h1>Hello World!</h1>
        <p id="timer"></p>
        <form name="frmFirst">
            <table>
            <tr>
                <td><input type="number" id="numFirst"> </td>
                <td><input type="radio" id="plus" name="operators" value="+" checked>+<br>
                    <input type="radio" id="minus" name="operators" value="-">-<br>
                    <input type="radio" id="mulitply" name="operators" value="x">x<br>
                    <input type="radio" id="mulitply" name="operators" value="/">/</td>
                <td><input type="number" id="numSecond"></td>
                <td><button type="button" onclick="mathFunctions()">=</button></td>
                <td><p id="numAnswer"></p></td>
            </tr>
            </table>
        </form>
    </body>
</html>