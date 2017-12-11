package Entity;

import net.sf.json.JSONObject;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by zheng on 2017/10/11.
 */

@Entity
@Table(name = "UserFile")
public class UserFile {

    @Id
    @GenericGenerator(name = "idGenerator", strategy = "native")
    @GeneratedValue(generator = "idGenerator")
    @Column(length = 11)
    private Integer FileID;

    @Column(name = "FilePath")
    private String FilePath;

    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.MERGE, CascadeType.REFRESH})
    @JoinColumn(name = "PostID")
    private Post post;

    public UserFile() {
    }

    public UserFile(String filePath) {
        this.FilePath = filePath;
    }

    public void setFileID(Integer fileID) {
        this.FileID = fileID;
    }

    public void setFilePath(String filePath) {
        this.FilePath = filePath;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public Integer getFileID() {
        return this.FileID;
    }

    public String getFilePath() {
        return this.FilePath;
    }

    public Post getPost() {
        return post;
    }

    //Convert this object to an JSON object
    public JSONObject toJSON() {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("FileID",this.getFileID());
        jsonObject.put("FilePath",this.getFilePath());
        return jsonObject;
    }
}
