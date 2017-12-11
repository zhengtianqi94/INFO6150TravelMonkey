package Service;

import DAO.FileDAO;
import Entity.UserFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zheng on 2017/10/11.
 */

@Service("FileService")
@Transactional
public class FileServiceImpl implements FileService {

    @Autowired
    private FileDAO fileDAO;

    public List<UserFile> getFiles() {
        return fileDAO.getFiles();
    }

    public UserFile getFile(Integer id) {
        return fileDAO.getFile(id);
    }

    public void addFile(UserFile userFile) {
        fileDAO.addFile(userFile);
    }

    public void updateFile(UserFile userFile) {
        fileDAO.updateFile(userFile);
    }

    public String deleteFile(Integer id) {
        if (fileDAO.deleteFile(id).equals("Success")) return "Success";
        else return fileDAO.deleteFile(id);
    }
}
