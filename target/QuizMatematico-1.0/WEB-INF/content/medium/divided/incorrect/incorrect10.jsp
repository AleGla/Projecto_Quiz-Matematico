<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 

<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" >
                <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-x-circle" style="color:crimson"></i> Respuesta Incorrecta</h5>
            </div>

            <div class="modal-body" style="font-size: 25px">
                Respuesta Correcta es: <s:property value="numbers.numberCorrect"/>
                </br></br>
                <h3>Cargando Resultados...</h3>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                </div>
            </div>

            <div class="modal-footer">
                <div class="loadingP">
                    <button type="button" disabled="true" class="btn btn-secondary">
                        Espera Por Favor
                    </button>

                </div>                

                <div class="loadP">
                    <a href="resultFinalMID" class="btn btn-success">
                        <i class="bi bi-chevron-double-right"></i> Ver Resultados
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>