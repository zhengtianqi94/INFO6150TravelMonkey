package Entity;

import net.sf.json.JSONObject;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by zheng on 2017/10/7.
 */

@Entity
@Table(name = "User")
public class User {

    @Id
    @GenericGenerator(name = "idGenerator", strategy = "native")
    @GeneratedValue(generator = "idGenerator")
    @Column(length = 11)
    private Integer UID;

    //TODO Name

    @Column(name = "UserName", nullable = false)
    private String UserName;

    @Column(name = "PassWord", nullable = false)
    private String PassWord;

    @Column(name = "Email", nullable = false)
    private String Email;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "UID")
    private Set<Post> postSet;

    public User() {

    }

    public User(String UN, String PW) {
        this.UserName = UN;
        this.PassWord = PW;
    }

    public User(String UN, String PW, String E) {
        this.UserName = UN;
        this.PassWord = PW;
        this.Email = E;
    }

    public void setPost(Set<Post> postSet) {
        this.postSet = postSet;
    }

    public void setUID(Integer UID) {
        this.UID = UID;
    }

    public void setUserName(String userName) {
        this.UserName = userName;
    }

    public void setPassWord(String passWord) {
        this.PassWord = passWord;
    }

    public void setEmail(String email) {
        this.Email = email;
    }

    public Integer getUID() {
        return this.UID;
    }

    public String getUserName() {
        return this.UserName;
    }

    public String getPassWord() {
        return this.PassWord;
    }

    public String getEmail() {
        return this.Email;
    }

    public Set<Post> getPost() {
        return postSet;
    }

    //Convert this object to an JSON object
    public JSONObject toJSON() {
        JSONObject jsonObject = new JSONObject();
        JSONObject json_posts = new JSONObject();
        for (Post post : this.getPost()) {
            JSONObject json_post = new JSONObject();
            JSONObject json_files = new JSONObject();
            for (UserFile userFile : post.getFile()) {
                JSONObject json_file = new JSONObject();
                json_file.put("FileID", userFile.getFileID());
                json_file.put("FilePath", userFile.getFilePath());
                json_files.put("File" + userFile.getFileID(), json_file);
            }
            json_post.put("PostID", post.getPostID());
            json_post.put("Title", post.getTitle());
            json_post.put("Body", post.getBody());
            json_post.put("Files", json_files);
            json_posts.put("Post" + post.getPostID(), json_post);
        }
        jsonObject.put("UID", this.getUID());
        jsonObject.put("UserName", this.getUserName());
        jsonObject.put("PassWord", this.getPassWord());
        jsonObject.put("Email", this.getEmail());
        jsonObject.put("Posts", json_posts);
        return jsonObject;
    }

}
