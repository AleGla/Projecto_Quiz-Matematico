<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
                        
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" >
          <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-x-circle" style="color:crimson"></i> Respuesta Incorrecta</h5>
      </div>
      <div class="modal-body">
          <p>Respuesta Correcta es: <h1><s:property value="numbers.numberCorrect"/></h1></p>
      </div>
      <div class="modal-footer">
        <a href="MIDten" class="btn btn-primary">
            <i class="bi bi-chevron-double-right"></i> Proxima Pregunta
        </a>
      </div>
    </div>
  </div>
</div>