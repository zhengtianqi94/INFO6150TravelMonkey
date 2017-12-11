package Controller;

import Entity.UserFile;

import java.io.File;

import Service.FileService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;

/**
 * Created by zheng on 2017/10/11.
 */

@Controller
@RequestMapping("/tripfile")
@EnableWebMvc
public class FileCon {

    @Autowired
    private FileService fileService;

    private JSONObject jsonObject;

    final private String ServerPath = "/Users/zheng/IntellJProjects/TravelMonkey/src/main/webapp/static/IMG/";

    final private String AccessPath = "../static/IMG/";

    @RequestMapping("/index")
    public ModelAndView File() {
        return new ModelAndView("redirect:/index");
    }

    @RequestMapping(value = "/File", method = RequestMethod.GET)
    public ModelAndView getFiles(ModelAndView model) {
        model.addObject("files", fileService.getFiles());
        model.setViewName("file");
        return model;
    }

    @RequestMapping(value = "/File/{FileID}", method = RequestMethod.GET)
    public
    @ResponseBody
    Object getFile(@PathVariable("FileID") Integer FileID) {
        UserFile userFile = fileService.getFile(FileID);
        return userFile.toJSON();
    }

    @RequestMapping(value = "/File", method = RequestMethod.PUT)
    public
    @ResponseBody
    Object updateFile(@RequestParam("FileID") Integer FileID) {
        jsonObject = new JSONObject();
        if (fileService.getFile(FileID) == null) {
            jsonObject.put("msg", "No file found");
        } else {
            UserFile userFile = fileService.getFile(FileID);
            userFile.setFilePath("UserFile Update Test UserFile Path " + FileID);
            fileService.updateFile(userFile);
            jsonObject.put("msg", "Update post success!");
        }
        return jsonObject;
    }

    @RequestMapping(value = "/File", method = RequestMethod.DELETE)
    public
    @ResponseBody
    Object deleteFile(@RequestParam("FileID") Integer FileID) {
        jsonObject = new JSONObject();
        if (fileService.getFile(FileID) == null) {
            jsonObject.put("msg", "No file found");
        } else {
            String name = fileService.getFile(FileID).getFilePath();
            String result_dF = fileService.deleteFile(FileID);
            name = name.substring(AccessPath.length(),name.length());
            String path = ServerPath + name;
            File file = new File(path);
            System.out.println(path);
            if (result_dF.equals("Success") && file.delete()) {
                jsonObject.put("msg", "Delete file success!");
            } else {
                String[] Exception = new String[1];
                Exception[0] = result_dF;
                jsonObject.put("Exception", Exception);
            }
        }
        return jsonObject;
    }

    //The upload method works good. Need logic change.
    @RequestMapping(value = "/Upload/{FileID}", method = RequestMethod.POST)
    public
    @ResponseBody
    Object springUpload(MultipartHttpServletRequest request, @PathVariable("FileID") Integer FileID) throws IllegalStateException, IOException {
        long startTime = System.currentTimeMillis();
        jsonObject = new JSONObject();

        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());

        if (multipartResolver.isMultipart(request)) {
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Iterator<String> iter = multiRequest.getFileNames();
            String fileName = "";
            String path = "";
            while (iter.hasNext()) {
                MultipartFile file = multiRequest.getFile((String) iter.next());
                if (file != null) {
                    try {
                        fileName += new Date().getTime() + file.getOriginalFilename();
                        path += ServerPath + fileName;
                        File uploadUserFile = new File(path);

                        file.transferTo(uploadUserFile);

                    } catch (Exception e) {
                        return jsonObject.put("Error", e.getCause().getMessage());
                    }
                }
            }
            String accessPath = AccessPath + fileName;
            UserFile ufile = fileService.getFile(FileID);
            ufile.setFilePath(accessPath);
            fileService.updateFile(ufile);

            jsonObject.put("Path", path);
        }
        long endTime = System.currentTimeMillis();
        jsonObject.put("Running Time", String.valueOf(endTime - startTime) + "ms");
        return jsonObject;
    }
}
