package Controller;

import Entity.UserFile;
import Entity.Post;
import Entity.User;
import Service.FileService;
import Service.PostService;
import Service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created by zheng on 2017/10/7.
 */

@Controller
@RequestMapping("/tripuser")
@EnableWebMvc
public class UserCon {

    @Autowired
    private UserService userService;

    @Autowired
    private PostService postService;

    @Autowired
    private FileService fileService;

    private JSONObject jsonObject;


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> home(@RequestBody User person) {

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("username", person.getUserName());
        model.put("password", person.getPassWord());
        return model;
    }

    @RequestMapping("/index")
    public ModelAndView user() {
        return new ModelAndView("redirect:/index");
    }

    @RequestMapping(value = "/User", method = RequestMethod.GET)
    public ModelAndView getUsers(ModelAndView model) {
        model.addObject("users", userService.getUsers());
        model.setViewName("user");
        return model;
    }

    @RequestMapping(value = "/User/{UID}", method = RequestMethod.GET)
    public
    @ResponseBody
    Object getUser(@PathVariable("UID") Integer UID) {
        User user = userService.getUser(UID);
        return user.toJSON();
    }

    @RequestMapping(value = "/User", method = RequestMethod.POST)
    public
    @ResponseBody
    Object addUser(@RequestParam("UserName") String UserName, @RequestParam("PassWord") String PassWord,
                   @RequestParam("Email") String Email) {
        try {
            jsonObject = new JSONObject();
            Set<Post> postSet = new HashSet<Post>();
            Set<UserFile> userFileSet = new HashSet<UserFile>();
            User user = new User(UserName, PassWord, Email);
            UserFile userFile = new UserFile("User add Test UserFile path");
            Post post = new Post("User add Test Post");
            postSet.add(post);
            userFileSet.add(userFile);
            post.setFile(userFileSet);
            user.setPost(postSet);
            userService.addUser(user);
            return user.toJSON();
        } catch (Exception e) {
            jsonObject.put("Exception", e.getCause().getMessage());
        }
        return jsonObject;
    }

    @RequestMapping(value = "/User", method = RequestMethod.PUT)
    public
    @ResponseBody
    Object updateUser(@RequestParam("UID") Integer UID) {
        jsonObject = new JSONObject();
        if (userService.getUser(UID) == null) {
            jsonObject.put("msg", "No user found");
        } else {
            User user = userService.getUser(UID);
            Set<Post> postSet = user.getPost();
            for (Post post : postSet) {
                post.setBody("User Update Test Post Budy " + UID);
                post.setTitle("User Update Test Post Title " + UID);
                Set<UserFile> userFileSet = post.getFile();
                for (UserFile userFile : userFileSet) {
                    userFile.setFilePath("User Update Test UserFile Path " + UID);
                }
            }
            user.setUserName("User Update Test User Name" + UID);
            user.setEmail("UserUpdateTestEmail" + UID + "@mail.com");
            userService.updateUser(user);
            jsonObject.put("msg", "Update user success!");
        }
        return jsonObject;
    }

    @RequestMapping(value = "/Post", method = RequestMethod.PUT)
    public
    @ResponseBody
    Object addPost(@RequestParam("UID") Integer UID, @RequestParam("Title") String Title,
                   @RequestParam("Body") String Body) {
        jsonObject = new JSONObject();
        if (userService.getUser(UID) == null) {
            jsonObject.put("msg", "No user found");
        } else {
            User user = userService.getUser(UID);
            Post post = new Post(Title);
            Set<Post> postSet = user.getPost();
            Set<UserFile> userFileSet = new HashSet<UserFile>();
            UserFile userFile = new UserFile("Post add to User " + UID + " Test UserFile path");
            userFileSet.add(userFile);
            post.setBody(Body);
            post.setFile(userFileSet);
            postSet.add(post);
            userService.updateUser(user);
            return user.toJSON();
        }
        return jsonObject;
    }

    @RequestMapping(value = "/User", method = RequestMethod.DELETE)
    public
    @ResponseBody
    Object deleteUser(@RequestParam("UID") Integer UID) {
        jsonObject = new JSONObject();
        if (userService.getUser(UID) == null) {
            jsonObject.put("msg", "No user found");
        } else {
            User user = userService.getUser(UID);
            for (Post post : user.getPost()) {
                post.getFile().removeAll(post.getFile());
                postService.updatePost(post);
            }
            user.getPost().removeAll(user.getPost());
            userService.updateUser(user);
            String result_dU = userService.deleteUser(UID);
            if (result_dU.equals("Success")) {
                jsonObject.put("msg", "Delete user success!");
            } else {
                String[] Exception = new String[1];
                Exception[0] = result_dU;
                jsonObject.put("Exception", Exception);
            }
        }
        return jsonObject;
    }

}
