package DAO;

import Entity.Post;

import java.util.List;

/**
 * Created by zheng on 2017/10/11.
 */
public interface PostDAO {

    List getPosts();

    Post getPost(Integer id);

    void addPost(Post post);

    void updatePost(Post post);

    String deletePost(Integer id);
}
