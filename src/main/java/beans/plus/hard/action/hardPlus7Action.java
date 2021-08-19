package beans.plus.hard.action;

import beans.model.Numbers;
import com.opensymphony.xwork2.ActionSupport;
import static java.lang.Math.random;
import java.util.Random;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

@Result(name = "seven", location = "/WEB-INF/content/hard/plus/7.jsp")

public class hardPlus7Action extends ActionSupport {

    private Numbers numbers = new Numbers();
       
    @Action("HCPseven")
    @Override
    public String execute() {
        this.setRandomNumbers();

        Numbers.correct+=1;

        return "seven";
    }
    
    @Action("HIPseven")    
    public String wrong() {
        this.setRandomNumbers();
        return "seven";
    }

    public Numbers getNumbers() {
        return numbers;
    }

    public void setNumbers(Numbers numbers) {
        this.numbers = numbers;
    }

    private void setRandomNumbers() {

        this.setNumbersQuiz();

        while (this.numbers.getNumber() <= 1000 || this.numbers.getNumberTwo() <= 1000) {

            this.setNumbersQuiz();
        }
    }

    private void setChoiseNumber() {

        this.numbers.setChoiseNumber1(this.numbers.getNumberCorrect() - 5);
        this.numbers.setChoiseNumber2(this.numbers.getNumberCorrect() + 2);
        this.numbers.setChoiseNumber3(this.numbers.getNumberCorrect() - 3);

    }

    private void setNumbersQuiz() {

        this.numbers.setNumber(new Random().nextInt(99999) + 1);
        this.numbers.setNumberTwo(new Random().nextInt(99999) + 1);
        this.numbers.setNumberCorrect(this.numbers.getNumber() + this.numbers.getNumberTwo());
        this.setChoiseNumber();
    }

}
