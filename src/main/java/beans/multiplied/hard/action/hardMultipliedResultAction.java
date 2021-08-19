package beans.multiplied.hard.action;

import beans.model.Numbers;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;


@Result(name = "result", location = "/WEB-INF/content/hard/multiplied/resultFinal.jsp")

public class hardMultipliedResultAction extends ActionSupport {

    private Numbers numbers = new Numbers();
    String qualification = " ";

    @Action("resultFinalHCMU")
    @Override
    public String execute() {
        Numbers.correct+=1;

        this.setFinalMessage();

        return "result";
    }

    @Action("resultFinalHIMU")
    public String wrong() {

        this.setFinalMessage();

        return "result";
    }

    public Numbers getNumbers() {
        return numbers;
    }

    public void setNumbers(Numbers numbers) {
        this.numbers = numbers;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    private void setFinalMessage() {

        if (Numbers.correct <= 2) {
            qualification = "Muy Mal, Sigue Practicando";
        } else if (Numbers.correct <= 4) {
            qualification = "Mal, Sigue Practicando";
        } else if (Numbers.correct >= 5 && Numbers.correct <= 7) {
            qualification = "Bien, Sigue Practicando";
        } else if (Numbers.correct >= 8 && Numbers.correct <= 9) {
            qualification = "Muy Bien, Estuviste cerca, sigue practicando";
        } else if (Numbers.correct == 10) {
            qualification = "Enbuenahora, Estas preparado para el nivel intermedio";
        }
    }

}
