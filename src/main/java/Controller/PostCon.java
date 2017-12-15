package Controller;

import Entity.UserFile;
import Entity.Post;
import Service.PostService;
import Service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.util.Set;

/**
 * Created by zheng on 2017/10/11.
 */

@Controller
@RequestMapping("/trippost")
@EnableWebMvc
public class PostCon {

    @Autowired
    private PostService postService;

    @Autowired
    private UserService userService;

    private JSONObject jsonObject;

    @RequestMapping("/index")
    public ModelAndView Post() {
        return new ModelAndView("redirect:/index");
    }

    @RequestMapping(value = "/Post", method = RequestMethod.GET)
    public ModelAndView getPosts(ModelAndView model) {
        model.addObject("posts", postService.getPosts());
        model.setViewName("JSP/post");
        return model;
    }

    @RequestMapping(value = "/Post/{PostID}", method = RequestMethod.GET)
    public
    @ResponseBody
    Object getPost(@PathVariable("PostID") Integer PostID) {
        Post post = postService.getPost(PostID);
        return post.toJSON();
    }

    @RequestMapping(value = "/Post", method = RequestMethod.PUT)
    public
    @ResponseBody
    Object updatePost(@RequestParam("PostID") Integer PostID) {
        jsonObject = new JSONObject();
        if (postService.getPost(PostID) == null) {
            jsonObject.put("msg", "No post found");
        } else {
            Post post = postService.getPost(PostID);
            Set<UserFile> userFileSet = post.getFile();
            for(UserFile userFile : userFileSet){
                userFile.setFilePath("Post Update Test UserFile Path " + PostID);
            }
            post.setBody("Post Update Test Post Budy " + PostID);
            post.setTitle("Post Update Test Post Title " + PostID);
            postService.updatePost(post);
            jsonObject.put("msg", "Update post success!");
        }
        return jsonObject;
    }

    @RequestMapping(value = "/File", method = RequestMethod.PUT)
    public
    @ResponseBody
    Object addFile(@RequestParam("PostID") Integer PostID, @RequestParam("FilePath") String FilePath) {
        jsonObject = new JSONObject();
        if (postService.getPost(PostID) == null) {
            jsonObject.put("msg", "No post found");
        } else {
            Post post = postService.getPost(PostID);
            Set<UserFile> userFileSet = post.getFile();
            UserFile userFile = new UserFile(FilePath);
            userFileSet.add(userFile);
            post.setFile(userFileSet);
            postService.updatePost(post);
            return post.toJSON();
        }
        return jsonObject;
    }

    @RequestMapping(value = "/Post", method = RequestMethod.DELETE)
    public
    @ResponseBody
    Object deletePost(@RequestParam("PostID") Integer PostID) {
        jsonObject = new JSONObject();
        if (postService.getPost(PostID) == null) {
            jsonObject.put("msg", "No post found");
        } else {
            Post post = postService.getPost(PostID);
            post.getFile().removeAll(post.getFile());
            postService.updatePost(post);
            post.getUser().getPost().remove(post);
            userService.updateUser(post.getUser());
            String result_dP = postService.deletePost(PostID);
            if (result_dP.equals("Success")) {
                jsonObject.put("msg", "Delete post success!");
            } else {
                String[] Exception = new String[1];
                Exception[0] = result_dP;
                jsonObject.put("Exception", Exception);
            }
        }
        return jsonObject;
    }

}
