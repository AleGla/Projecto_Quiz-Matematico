<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Final</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/resultFinalStyle.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>

        <header>
            <div class="jumbotron text-center" style="height: 210px">
                <div class="container">
                    <div class="row align-items-start">
                        <div class="col">
                            <img src="${pageContext.request.contextPath}/img/iconResult.png" height="140px" width="140px" alt=""/>
                        </div>

                        <div class="col">
                            <h1 style="font-size: 30px; ">Resultado de tu Test</h1>
                            </br>
                            <h4>Nivel Dificil - Multiplicaciones</h4>
                        </div>

                        <div class="col">
                            <img src="${pageContext.request.contextPath}/img/iconResult.png" height="140px" width="140px" alt=""/>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <h1 style="text-align: center">Haz Respondido bien <s:property value="numbers.correct"/> de 10</h1> 
        </br>
        </br>
        <div class="text-center" >
            <div class="container">
                <div class="row align-items-start">
                    <div class="col">
                        <s:if test="%{qualification=='Enbuenahora, Estas preparado para el nivel intermedio'}">
                            <img src="${pageContext.request.contextPath}/img/stars5.png"/>
                            </br></br>
                            <img src="${pageContext.request.contextPath}/img/emoji5.png"/>
                        </s:if>

                        <s:elseif test="%{qualification=='Muy Bien, Estuviste cerca, sigue practicando'}">
                            <img src="${pageContext.request.contextPath}/img/stars4.png"/>
                            </br></br>
                            <img src="${pageContext.request.contextPath}/img/emoji4.png"/>
                        </s:elseif>

                        <s:elseif test="%{qualification=='Bien, Sigue Practicando'}">
                            <img src="${pageContext.request.contextPath}/img/stars3.png"/>
                            </br></br>
                            <img src="${pageContext.request.contextPath}/img/emoji3.png"/>
                        </s:elseif>   

                        <s:elseif test="%{qualification=='Mal, Sigue Practicando'}">
                            <img src="${pageContext.request.contextPath}/img/stars2.png"/>
                            </br></br>
                            <img src="${pageContext.request.contextPath}/img/emoji2.png"/>
                        </s:elseif>  

                        <s:elseif test="%{qualification=='Muy Mal, Sigue Practicando'}">
                            <img src="${pageContext.request.contextPath}/img/stars1.png"/>
                            </br></br>
                            <img src="${pageContext.request.contextPath}/img/emoji1.png"/>
                        </s:elseif>
                    </div>

                    <div class="col">
                        <h1><s:property value="qualification"/></h1>
                        </br></br>
                        <h1> <a href="index.jsp" ><button type="button" class="btn btn-primary btn-lg">Volver al Inicio</button></a></h1>
                    </div>

                </div>
            </div>
        </div>

        <footer id="pie-pagina" class="bg-warning text-white mt-5 p-5" style="height: 125px">
            <div class="container">
                <div class="col">
                    <p class="lead text-center">
                        Copyright &copy; github.com/AleGla
                    </p>
                </div>
            </div>
        </footer>
    </body>
</html>

