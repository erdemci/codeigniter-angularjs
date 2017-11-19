<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <div id="reader" style="width:100%;height:500px">
    </div>

    <div id="message"></div>

    <script src="content/js/jquery.min.js"></script>
    <script src="content/js/angular.min.js"></script>
    <script src="content/js/bootstrap.min.js"></script>
    <script src="content/js/jsqrcode-combined.min.js"></script>
    <script src="content/js/html5_qrcode.min.js"></script>
    <script>
        $('#reader').html5_qrcode(function (data) {
                alert(JSON.stringify(data))
            },
            function (error) {
                $("#message").text(error.message);

            },
            function (videoError) {
                $("#message").text(videoError.message);
            });
    </script>
</body>

</html>