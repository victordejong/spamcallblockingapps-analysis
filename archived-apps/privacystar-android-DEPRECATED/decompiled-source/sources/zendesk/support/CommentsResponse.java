package zendesk.support;

import android.support.annotation.NonNull;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/CommentsResponse.class */
public class CommentsResponse extends ResponseWrapper {
    private List<CommentResponse> comments;
    private List<Organization> organizations;
    private List<User> users;

    @NonNull
    public List<CommentResponse> getComments() {
        return CollectionUtils.copyOf(this.comments);
    }

    @NonNull
    public List<Organization> getOrganizations() {
        return CollectionUtils.copyOf(this.organizations);
    }

    @NonNull
    public List<User> getUsers() {
        return CollectionUtils.copyOf(this.users);
    }
}
