package Service;

import DAO.PostDAO;
import Entity.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zheng on 2017/10/11.
 */

@Service("PostService")
@Transactional
public class PostServiceImpl implements PostService{

    @Autowired
    private PostDAO postDAO;

    public List<Post> getPosts() {
        return postDAO.getPosts();
    }

    public Post getPost(Integer id) {
        return postDAO.getPost(id);
    }

    public void addPost(Post post) {
        postDAO.addPost(post);
    }

    public void updatePost(Post post) {
        postDAO.updatePost(post);
    }

    public String deletePost(Integer id) {
        if(postDAO.deletePost(id).equals("Success")) return "Success";
        else return postDAO.deletePost(id);
    }
}
