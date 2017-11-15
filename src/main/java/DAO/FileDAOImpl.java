package DAO;

import Entity.UserFile;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zheng on 2017/10/11.
 */

@Repository
public class FileDAOImpl implements FileDAO {

    @Autowired
    private SessionFactory sessionFactory_FileDAO;

    private Session session;

    public List getFiles() {
        session = this.sessionFactory_FileDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_FileDAO.openSession();
        String hql = "FROM UserFile";
        Query query = session.createQuery(hql);
        session.flush();
        return query.list();
    }

    public UserFile getFile(Integer id) {
        session = this.sessionFactory_FileDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_FileDAO.openSession();
        Transaction tran = session.beginTransaction();
        Query query = session.createQuery("from UserFile file where file.id = " + id);
        List<UserFile> userFiles = query.list();
        tran.commit();
        session.flush();
        session.close();
        if (userFiles.size() == 0) return null;
        else return userFiles.get(0);
    }

    public void addFile(UserFile userFile) {
        session = this.sessionFactory_FileDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_FileDAO.openSession();
        Transaction tran = session.beginTransaction();
        session.save(userFile);
        tran.commit();
        session.flush();
        session.close();
    }

    public void updateFile(UserFile userFile) {
        session = this.sessionFactory_FileDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_FileDAO.openSession();
        Transaction tran = session.beginTransaction();
        session.update(userFile);
        tran.commit();
        session.flush();
        session.close();
    }

    public String deleteFile(Integer id) {
        session = this.sessionFactory_FileDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_FileDAO.openSession();
        Transaction tran = session.beginTransaction();
        try {
            Query query = session.createQuery("delete UserFile where id = " + id);
            query.executeUpdate();
            tran.commit();
        } catch (Exception e) {
            System.out.println("Post delete exception catched: " + e.getStackTrace());
            session.flush();
            session.close();
            return e.getCause().getMessage();
        }
        session.flush();
        session.close();
        return "Success";
    }

}
