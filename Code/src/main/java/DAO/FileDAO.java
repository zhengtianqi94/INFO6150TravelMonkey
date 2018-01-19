package DAO;

import Entity.UserFile;

import java.util.List;

/**
 * Created by zheng on 2017/10/11.
 */
public interface FileDAO {

    List getFiles();

    UserFile getFile(Integer id);

    void addFile(UserFile userFile);

    void updateFile(UserFile userFile);

    String deleteFile(Integer id);

}
