<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dificultad Facil</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/welcome.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body style="background-image: url('${pageContext.request.contextPath}/img/background.gif')">
        <header>
            <div class="jumbotron text-center" style="height: 180px ; background-image: url('${pageContext.request.contextPath}/img/background.gif')">
                <h1 style="color: white">Dificultad Facil</h1>
                <p style="color: white">Pensa antes de elegir una opcion</p>
            </div>
        </header>

        <h1 style="text-align: center ; color: white">¿Que calculos quieres hacer?</h1> 
        <br/>
        <div class="d-grid gap-2 col-6 mx-auto">
            <a href="easyPlus" style="text-decoration: none"><button type="button" class="btn btn-success btn-lg btn-block btn-huge" style="background: #4E0DD9">Sumas</button></a>
            <br/>
            <a href="easyMinus" style="text-decoration: none"><button type="button" class="btn btn-success btn-lg btn-block btn-huge" style="background: #4E0DD9">Restas</button></a>
            <br/>
            <a href="easyMultiplied" style="text-decoration: none"><button type="button" class="btn btn-success btn-lg btn-block btn-huge" style="background: #4E0DD9">Multiplicaciones</button></a>
            <br/>
            <a href="easyDivided" style="text-decoration: none"><button type="button" class="btn btn-success btn-lg btn-block btn-huge" style="background: #4E0DD9">Divisiones</button></a>
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

