<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operaciones de Sumas</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/modal.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="jquery-3.3.1.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                setTimeout(function () {
                    $(".loadingP").fadeOut(2000);
                }, 6000);
            });

            $(document).ready(function () {
                setTimeout(function () {
                    $(".loadP").fadeOut(2000);
                }, 0000);
            });

            $(document).ready(function () {
                setTimeout(function () {
                    $(".loadP").fadeIn();
                }, 8000);
            });
           
        </script>
    </head>
    <body>
        <header>
            <div class="jumbotron text-center" >
              <div class="container">
            <div class="row align-items-start">
                <div class="col">
                <img src="${pageContext.request.contextPath}/img/imageExcercise.png"height="200px" width="200px" alt=""/>
                </div>
                  
                <div class="col">
                <h1 style="font-size: 50px"><s:property value="numbers.number"/> + <s:property value="numbers.numberTwo"/> = ?</h1>
                </br></br>
                <h3><i class="bi bi-question-circle" style="color: blue"></i> Pregunta 10/10</h3>
                <h3><i class="bi bi-check-circle" style="color: green"></i> Correctas <s:property value="numbers.correct"/>/10</h3>
            </div>
            
            <div class="col">
                <img src="${pageContext.request.contextPath}/img/imageExcercise.png"height="200px" width="200px" alt=""/>
            </div>
                </div>
            </div>
            </div>
        </header>

        <div class="d-grid gap-2 col-6 mx-auto">
            <a data-toggle="modal" data-target="#modal" data-backdrop="static" data-keyboard="false"><button type="button" class="btn btn-primary btn-block btn-huge" style="font-size: 25px"><s:property value="numbers.choiseNumber1"/></button></a>
            <br/>
            <a data-toggle="modal" data-target="#modal2" data-backdrop="static" data-keyboard="false"><button type="button" class="btn btn-primary btn-block btn-huge" style="font-size: 25px"><s:property value="numbers.numberCorrect"/></button></a>
            <br/>
            <a data-toggle="modal" data-target="#modal" data-backdrop="static" data-keyboard="false"><button class="btn btn-primary btn-block btn-huge" style="font-size: 25px"><s:property value="numbers.choiseNumber3"/></button></a>
            <br/>
            <a data-toggle="modal" data-target="#modal" data-backdrop="static" data-keyboard="false"><button type="button" class="btn btn-primary btn-block btn-huge" style="font-size: 25px"><s:property value="numbers.choiseNumber2"/></button></a>
        </div>
        <footer id="pie-pagina" class="bg-warning text-white mt-5 p-5" style="height: 125px">
            <div class="container">
                <div class="col">
                    <p class="lead text-center" style="color:black" >
                        Copyright &copy; github.com/AleGla
                    </p>
                </div>
            </div>
        </footer>


        <jsp:include page="/WEB-INF/content/medium/plus/correct/correct10.jsp"/>
        <jsp:include page="/WEB-INF/content/medium/plus/incorrect/incorrect10.jsp"/>
    </body>
</html>

