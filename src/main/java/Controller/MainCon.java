package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * Created by zheng on 2017/10/7.
 */



@Controller
@EnableWebMvc
public class MainCon {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/user")
    public ModelAndView user(){ return new ModelAndView("redirect:/tripuser/User");}

    @RequestMapping("/post")
    public ModelAndView post(){ return new ModelAndView("redirect:/trippost/Post");}

    @RequestMapping("/file")
    public ModelAndView file(){ return new ModelAndView("redirect:/tripfile/File");}

}
