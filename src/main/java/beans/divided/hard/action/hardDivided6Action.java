package beans.divided.hard.action;

import beans.model.Numbers;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Random;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Result(name = "six", location = "/WEB-INF/content/hard/divided/6.jsp")
public class hardDivided6Action extends ActionSupport {

    private Numbers numbers = new Numbers();

     @Action("HCDsix")
    @Override
    public String execute() {
        this.setRandomNumbers();
        Numbers.correct+=1;

        return "six";
    }

    @Action("HIDsix")
    public String wrong() {
        this.setRandomNumbers();
        return "six";
    }

    public Numbers getNumbers() {
        return numbers;
    }

    public void setNumbers(Numbers numbers) {
        this.numbers = numbers;
    }

    private void setRandomNumbers() {

        this.setNumbersQuiz();

        this.setDivided();

        while (this.numbers.getNumber() <= 1000 || this.numbers.getNumber() == this.numbers.getNumberTwo()) {

            this.setNumbersQuiz();

            this.setDivided();
        }
    }

    private void setChoiseNumber() {

        this.numbers.setChoiseNumber1(this.numbers.getNumberCorrect() - 5);
        this.numbers.setChoiseNumber2(this.numbers.getNumberCorrect() + 2);
        this.numbers.setChoiseNumber3(this.numbers.getNumberCorrect() - 3);

    }

    private void setDivided() {

        while (this.numbers.getNumber() % this.numbers.getNumberTwo() != 0) {

            this.setNumbersQuiz();

        }

    }

    private void setNumbersQuiz() {

        this.numbers.setNumber(new Random().nextInt(99999) + 1);
        this.numbers.setNumberTwo(new Random().nextInt(998) + 1);
        this.numbers.setNumberCorrect(this.numbers.getNumber() / this.numbers.getNumberTwo());
        this.setChoiseNumber();
    }

}
