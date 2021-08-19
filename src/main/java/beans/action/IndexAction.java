package beans.action;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({
    @Result(name = "easy", location = "/WEB-INF/content/welcomeEasy.jsp"),
    @Result(name = "medium", location= "/WEB-INF/content/welcomeMedium.jsp"),
    @Result(name = "hard", location= "/WEB-INF/content/welcomeHard.jsp")
})
public class IndexAction extends ActionSupport {

    
    @Action("easy")
    public String easy(){
        return "easy";
    }
    
    @Action("medium")
    public String medium(){
        return "medium";
    }
    
    @Action("hard")
    public String hard(){
        return "hard";
    }
    
    
    

}
