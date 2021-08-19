package beans.plus.medium.action;

import beans.model.Numbers;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Random;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Result(name = "eight", location = "/WEB-INF/content/medium/plus/8.jsp")
public class mediumPlus8Action extends ActionSupport {

    private Numbers numbers = new Numbers();
   
    @Action("MCMUeight")
    @Override
    public String execute() {
        this.setRandomNumbers();
        Numbers.correct+=1;
        
        return "eight";
    }

    @Action("MIMUeight")    
    public String wrong() {
        this.setRandomNumbers();
        return "eight";
    }

    public Numbers getNumbers() {
        return numbers;
    }

    public void setNumbers(Numbers numbers) {
        this.numbers = numbers;
    }

   private void setRandomNumbers() {

        this.setNumbersQuiz();

        while (this.numbers.getNumber() <= 100 || this.numbers.getNumberTwo() <= 100) {

            this.setNumbersQuiz();
        }
    }

     private void setChoiseNumber() {

        this.numbers.setChoiseNumber1(this.numbers.getNumberCorrect() - 5);
        this.numbers.setChoiseNumber2(this.numbers.getNumberCorrect() + 2);
        this.numbers.setChoiseNumber3(this.numbers.getNumberCorrect() - 8);

    }

    private void setNumbersQuiz() {

        this.numbers.setNumber(new Random().nextInt(998) + 1);
        this.numbers.setNumberTwo(new Random().nextInt(998) + 1);
        this.numbers.setNumberCorrect(this.numbers.getNumber() + this.numbers.getNumberTwo());
        this.setChoiseNumber();
    }
    
}
