
<!DOCTYPE html>
<html lang="en">
<head>
    <title>মজার দিন</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <script src="js/static_text.js"></script>

</head>
<body>

<div class="jumbotron text-center">
    <h1>আপনি যদি এখন ঘরে বন্ধি থাকেন তাহলে আসুন একটু মনে মনে হাসি।</h1>
    <p>এই পেজ টা নিছক কিছু বিশেষ মুহূর্ত সরণ করানোর জন্য যা আমাদের খুব সুন্দর অতীত কে মনে করিয়ে দিবে। </p>
    <p> এটাকে কেউ গুরুত্ব সহকারে নিবেন না। </p>

</div>

<div class="container">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <form id="test">
            <div class="col-md-12 col-sm-12 col-xs-12" id="body_data">
                <!--<div class="custom-control custom-checkbox col-md-12 col-sm-12 col-xs-12" style="font-size: 20px; margin: 5px">
                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                    <label class="custom-control-label" for="customCheck1">Check this custom checkbox</label>
                </div>
                <div class="custom-control custom-checkbox col-md-12 col-sm-12 col-xs-12">
                    <input type="checkbox" class="custom-control-input" id="customCheck11">
                    <label class="custom-control-label" for="customCheck11">Check this custom checkbox</label>
                </div>
                <div class="custom-control custom-checkbox col-md-12 col-sm-12 col-xs-12">
                    <input type="checkbox" class="custom-control-input" id="customCheck111">
                    <label class="custom-control-label" for="customCheck111">Check this custom checkbox</label>
                </div>
                <div class="custom-control custom-checkbox col-md-12 col-sm-12 col-xs-12">
                    <input type="checkbox" class="custom-control-input" id="customCheck1111">
                    <label class="custom-control-label" for="customCheck1111">Check this custom checkbox</label>
                </div>-->
            </div>
        </form>
    </div>
</div>

<div class=" page-footer font-small blue pt-4" style="height: 100px; margin-top: 10px; background-color: #e9ecef"></div>

</body>
</html>
<script>
    //alert(project_url)
    loadQuestion = function () {
        $.ajax({
            url: project_url+"includes/controller/questionAnswerController.php",
            type:'POST',
            async:false,
            data: "q=getQuestion",
            success: function(data){
                //console.log(data)
                html = ""
                $.each(JSON.parse(data), function (key, datas) {
                    html+='<div class="custom-control custom-checkbox col-md-12 col-sm-12 col-xs-12" style="font-size: 20px; margin: 5px;background-color: aliceblue; padding: 2px">\n' +
                        '    <input name="answer[]" type="checkbox" class="custom-control-input" id="id'+datas["id"]+'" value="'+datas["score"]+'">\n' +
                        '    <label class="custom-control-label" for="id'+datas["id"]+'">'+datas["question"]+'</label>\n' +
                        '  </div>'
                })
                html +='<button class="btn btn-primary" style="text-align: center; margin-top: 10px" onclick="submitAnswer()">উত্তর জমা দিন</button>'
                $('#body_data').html(html);
            }
        });

    }
    loadQuestion()

    submitAnswer = function () {
        event.preventDefault()
        val = 0;
        $(':checkbox:checked').each(function(i){
            val+= parseInt($(this).val());
        });

        alert(val)
    }


</script>

