package beans.divided.medium.action;

import beans.model.Numbers;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Random;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Result(name = "eight", location = "/WEB-INF/content/medium/divided/8.jsp")
public class mediumDivided8Action extends ActionSupport {

    private Numbers numbers = new Numbers();

    @Action("MCDeight")
    @Override
    public String execute() {
        this.setRandomNumbers();

        Numbers.correct+=1;

        return "eight";
    }

    @Action("MIDeight")
    public String incorrect() {
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

        this.setDivided();

        while (this.numbers.getNumber() <= this.numbers.getNumberTwo()) {

            this.setNumbersQuiz();

            this.setDivided();

        }

    }

    private void setChoiseNumber() {

        this.numbers.setChoiseNumber1(this.numbers.getNumberCorrect() - 1);
        this.numbers.setChoiseNumber2(this.numbers.getNumberCorrect() + 2);
        this.numbers.setChoiseNumber3(this.numbers.getNumberCorrect() + 1);

    }

    private void setDivided() {

        while (this.numbers.getNumber() % this.numbers.getNumberTwo() != 0 || this.numbers.getNumberTwo() == 1 || 
                this.numbers.getNumber() == this.numbers.getNumberTwo()) {
            this.setNumbersQuiz();

        }

    }

    private void setNumbersQuiz() {
        this.numbers.setNumber(new Random().nextInt(998) + 1);
        this.numbers.setNumberTwo(new Random().nextInt(8) + 1);
        this.numbers.setNumberCorrect(this.numbers.getNumber() / this.numbers.getNumberTwo());
        this.setChoiseNumber();
    }

}
