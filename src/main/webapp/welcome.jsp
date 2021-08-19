<!DOCTYPE html>
<html>
    <head >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body style="background-image: url('${pageContext.request.contextPath}/img/background.gif')">

        <header>
            <div class="jumbotron text-center" style="height: 180px;background-image: url('${pageContext.request.contextPath}/img/background.gif')">
                <h1 style='color: white'>Quiz Matematico</h1>
                <h3 style='color: white'>Pon a prueba tus habilidades de Matematicas</h3>  
            </div>            
        </header>


        <h1 style="text-align: center ; color: white">Elige la Dificultad</h1> 
        <br/>
        <div class="d-grid gap-2 col-6 mx-auto">
            <a href="easy" style="text-decoration: none"><button type="button" class="btn btn-warning btn-lg btn-block btn-huge" style="border-color: black ; background: #4E0DD9 ; color: white">Facil</button></a>
            <br/> 
            <a href="medium" style="text-decoration: none"><button type="button" class="btn btn-warning btn-lg btn-block btn-huge" style="border-color: black ; background: #4E0DD9 ; color: white">Medio</button></a>
            <br/>
            <a href="hard" style="text-decoration: none"><button type="button" class="btn btn-warning btn-lg btn-block btn-huge" style="border-color: black ; background: #4E0DD9 ; color: white">Dificil</button></a>
        </div>
        <footer id="pie-pagina" class="bg text-white mt-5 p-5" style="height: 125px ; background: #03A60E">
            <div class="container">
                <div class="col">
                    <p class="lead text-center" style="color: black">
                        Copyright &copy; github.com/AleGla
                    </p>
                </div>
            </div>
        </footer>
    </body>
</html>
