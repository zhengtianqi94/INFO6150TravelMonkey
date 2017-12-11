package Service;

import Entity.UserFile;

import java.util.List;

/**
 * Created by zheng on 2017/10/11.
 */
public interface FileService {

    List<UserFile> getFiles();

    UserFile getFile(Integer id);

    void addFile(UserFile userFile);

    void updateFile(UserFile userFile);

    String deleteFile(Integer id);

}
