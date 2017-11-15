package Entity;

import net.sf.json.JSONObject;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by zheng on 2017/10/11.
 */

@Entity
@Table(name = "Post")
public class Post {

    @Id
    @GenericGenerator(name = "idGenerator", strategy = "native")
    @GeneratedValue(generator = "idGenerator")
    @Column(length = 11)
    private Integer PostID;

    @Column(name = "Title", nullable = false)
    private String Title;

    @Column(name = "Body")
    private String Body;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "PostID")
    private Set<UserFile> userFileSet;

    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.MERGE, CascadeType.REFRESH})
    @JoinColumn(name = "UID")
    private User user;

    public Post() {
    }

    public Post(String title) {
        Title = title;
    }

    public void setPostID(Integer postID) {
        this.PostID = postID;
    }

    public void setTitle(String title) {
        this.Title = title;
    }

    public void setBody(String body) {
        this.Body = body;
    }

    public void setFile(Set<UserFile> userFileSet) {
        this.userFileSet = userFileSet;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getPostID() {
        return this.PostID;
    }

    public String getTitle() {
        return this.Title;
    }

    public String getBody() {
        return this.Body;
    }

    public Set<UserFile> getFile() {
        return this.userFileSet;
    }

    public User getUser() {
        return user;
    }

    //Convert this object to an JSON object
    public JSONObject toJSON() {
        JSONObject jsonObject = new JSONObject();
        JSONObject json_files = new JSONObject();
        for (UserFile userFile : this.getFile()) {
            JSONObject json_file = new JSONObject();
            json_file.put("FileID", userFile.getFileID());
            json_file.put("FilePath", userFile.getFilePath());
            json_files.put("File" + userFile.getFileID(), json_file);
        }
        jsonObject.put("PostID", this.getPostID());
        jsonObject.put("Title", this.getTitle());
        jsonObject.put("Body", this.getBody());
        jsonObject.put("Files", json_files);
        return jsonObject;
    }

}
