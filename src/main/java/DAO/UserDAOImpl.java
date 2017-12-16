package DAO;

import Entity.Post;
import Entity.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zheng on 2017/10/7.
 */

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory_UserDAO;

    private Session session;

    public List<User> getUsers() {
        session = this.sessionFactory_UserDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_UserDAO.openSession();
        String hql = "FROM User";
        Query query = session.createQuery(hql);
        session.flush();
        return query.list();
    }

    public User getUser(Integer id) {
        session = this.sessionFactory_UserDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_UserDAO.openSession();
        Transaction tran = session.beginTransaction();
        Query query = session.createQuery("from User user where user.id = " + id);
        List<User> users = query.list();
        tran.commit();
        session.flush();
        session.close();
        if (users.size() == 0) return null;
        else return users.get(0);
    }

    public User getUser(String UserName, String PassWord) {
        session = this.sessionFactory_UserDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_UserDAO.openSession();
        Transaction tran = session.beginTransaction();
        Query query = session.createQuery("from User user where user.UserName = '" + UserName + "' " +
                "and user.PassWord = '" + PassWord + "'");
        System.out.println("User select: " + query.toString());
        List<User> users = query.list();
        tran.commit();
        session.flush();
        session.close();
        if (users.size() == 0) return null;
        else return users.get(0);
    }

    public void addUser(User user) {
        session = this.sessionFactory_UserDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_UserDAO.openSession();
        Transaction tran = session.beginTransaction();
        session.save(user);
        tran.commit();
        session.flush();
        session.close();
    }

    public void updateUser(User user) {
        session = this.sessionFactory_UserDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_UserDAO.openSession();
        Transaction tran = session.beginTransaction();
        session.update(user);
        tran.commit();
        session.flush();
        session.close();
    }

    public String deleteUser(Integer id) {
        session = this.sessionFactory_UserDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_UserDAO.openSession();
        Transaction tran = session.beginTransaction();
        try {
            Query query = session.createQuery("delete User where id = " + id);
            query.executeUpdate();
            tran.commit();
        } catch (Exception e) {
            System.out.println("User delete exception catched: " + e.getStackTrace());
            session.flush();
            session.close();
            return e.getCause().getMessage();
        }
        session.flush();
        session.close();
        return "Success";
    }

}
