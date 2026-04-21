<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- ❌ Missing alt usage later will trigger issue -->
    <title>SonarQube Demo App</title>

    <!-- ❌ Inline CSS (code smell) -->
    <style>
        body { font-family: Arial; }
    </style>
</head>

<body>

    <!-- ❌ Duplicate IDs (Bug) -->
    <div id="duplicate"></div>
    <div id="duplicate"></div>

    <!-- ❌ Missing alt attribute (Accessibility issue) -->
    <img src="logo.png">

    <h1>SonarQube Testing Page</h1>

    <!-- ❌ Input for XSS -->
    <input type="text" class="search-box" placeholder="Enter something">
    <button onclick="showUserInput()">Submit</button>

    <!-- ❌ Invalid attribute -->
    <video src="sample.mp4" mute loop></video>

    <div id="output"></div>

    <script>
        // ❌ 1. Hardcoded secret (Security issue)
        const PASSWORD = "admin123";

        // ❌ 2. XSS vulnerability
        function showUserInput() {
            let input = document.querySelector(".search-box").value;

            // Dangerous: directly injecting user input
            document.getElementById("output").innerHTML = "<p>" + input + "</p>";
        }

        // ❌ 3. eval usage (Critical vulnerability)
        function runCode() {
            let code = "console.log('running')";
            eval(code);
        }

        // ❌ 4. Unused variable (Code smell)
        let unusedVariable = 42;

        // ❌ 5. Duplicate function (Code smell)
        function test() {
            console.log("test1");
        }
        function test() {
            console.log("test2");
        }

        // ❌ 6. Null pointer bug
        function crash() {
            let el = document.getElementById("not-present");
            el.innerHTML = "Crash!"; // will throw error
        }

        // ❌ 7. Weak random generator
        function generateToken() {
            return Math.random().toString(36);
        }

        // ❌ 8. Missing error handling
        function fetchData() {
            fetch("https://api.example.com")
                .then(res => res.json())
                .then(data => console.log(data));
        }

        // ❌ 9. Closure bug (var instead of let)
        for (var i = 0; i < 5; i++) {
            setTimeout(function () {
                console.log("Value:", i); // incorrect output
            }, 100);
        }

        // ❌ 10. Infinite loop risk
        function infiniteLoop() {
            while (true) {
                console.log("running...");
            }
        }

        // ❌ 11. Inline JS event (bad practice)
        document.querySelector(".search-box")
            .setAttribute("onchange", "showUserInput()");

    </script>

</body>

</html>
