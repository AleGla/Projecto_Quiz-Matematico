package beans.multiplied.easy.action;

import beans.model.Numbers;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Random;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Result(name = "ten", location = "/WEB-INF/content/easy/multiplied/10.jsp")
public class easyMultiplied10Action extends ActionSupport {

    private Numbers numbers = new Numbers();

    @Action("CMUten")
    @Override
    public String execute() {
        this.setRandomNumbers();

        Numbers.correct+=1;

        return "ten";
    }

    @Action("IMUten")
    public String incorrect() {
        this.setRandomNumbers();
        return "ten";
    }

    public Numbers getNumbers() {
        return numbers;
    }

    public void setNumbers(Numbers numbers) {
        this.numbers = numbers;
    }

    private void setRandomNumbers() {

        this.setNumbersQuiz();

        while (this.numbers.getNumber() <= this.numbers.getNumberTwo() || this.numbers.getNumber() == this.numbers.getNumberCorrect()
                || this.numbers.getNumberTwo() == this.numbers.getNumberCorrect()) {

            this.setNumbersQuiz();
        }
    }

    private void setChoiseNumber() {

        this.numbers.setChoiseNumber1(this.numbers.getNumberCorrect() - 1);
        this.numbers.setChoiseNumber2(this.numbers.getNumberCorrect() + 2);
        this.numbers.setChoiseNumber3(this.numbers.getNumberCorrect() + 1);

    }

    private void setNumbersQuiz() {

        this.numbers.setNumber(new Random().nextInt(9) + 1);
        this.numbers.setNumberTwo(new Random().nextInt(9) + 1);
        this.numbers.setNumberCorrect(this.numbers.getNumber() * this.numbers.getNumberTwo());
        this.setChoiseNumber();
    }

}
