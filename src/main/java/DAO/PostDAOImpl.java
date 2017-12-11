package DAO;

import Entity.Post;
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
public class PostDAOImpl implements PostDAO{

    @Autowired
    private SessionFactory sessionFactory_PostDAO;

    private Session session;

    public List getPosts() {
        session = this.sessionFactory_PostDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_PostDAO.openSession();
        String hql = "FROM Post";
        Query query = session.createQuery(hql);
        session.flush();
        return query.list();
    }

    public Post getPost(Integer id) {
        session = this.sessionFactory_PostDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_PostDAO.openSession();
        Transaction tran = session.beginTransaction();
        Query query = session.createQuery("from Post post where post.id = " + id);
        List<Post> posts = query.list();
        tran.commit();
        session.flush();
        session.close();
        if(posts.size() == 0) return null;
        else return posts.get(0);
    }

    public void addPost(Post post) {
        session = this.sessionFactory_PostDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_PostDAO.openSession();
        Transaction tran = session.beginTransaction();
        session.save(post);
        tran.commit();
        session.flush();
        session.close();
    }

    public void updatePost(Post post) {
        session = this.sessionFactory_PostDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_PostDAO.openSession();
        Transaction tran = session.beginTransaction();
        session.update(post);
        tran.commit();
        session.flush();
        session.close();
    }

    public String deletePost(Integer id) {
        session = this.sessionFactory_PostDAO.getCurrentSession();
        if (!session.isOpen()) session = sessionFactory_PostDAO.openSession();
        Transaction tran = session.beginTransaction();
        try {
            Query query = session.createQuery("delete Post where id = " + id);
            query.executeUpdate();
            tran.commit();
        }catch (Exception e){
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
