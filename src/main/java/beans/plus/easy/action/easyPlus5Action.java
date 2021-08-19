package beans.plus.easy.action;

import beans.model.Numbers;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Random;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Result(name = "five", location = "/WEB-INF/content/easy/plus/5.jsp")
public class easyPlus5Action extends ActionSupport {

    private Numbers numbers = new Numbers();

    @Action("Cfive")
    @Override
    public String execute() {
        this.setRandomNumbers();
        Numbers.correct+=1;

        return "five";
    }

    @Action("Ifive")
    public String wrong() {
        this.setRandomNumbers();
        return "five";
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

        this.numbers.setNumber(new Random().nextInt(50));
        this.numbers.setNumberTwo(new Random().nextInt(49) + 1);
        this.numbers.setNumberCorrect(this.numbers.getNumber() + this.numbers.getNumberTwo());
        this.setChoiseNumber();
    }

}
