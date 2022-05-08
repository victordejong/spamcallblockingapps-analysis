package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.zendesk.util.CollectionUtils;
import java.util.Date;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Request.class */
public class Request {
    private List<Long> collaboratorIds;
    private EndUserComment comment;
    private Integer commentCount;
    private Date createdAt;
    private String description;
    private Date dueAt;
    private Comment firstComment;

    /* renamed from: id */
    private String f1849id;
    private Comment lastComment;
    private List<User> lastCommentingAgents;
    private List<Long> lastCommentingAgentsIds;
    private Long organizationId;
    private String priority;
    private Date publicUpdatedAt;
    private Long requesterId;
    private RequestStatus status;
    private String subject;
    private String type;
    private Date updatedAt;
    private String url;

    public Request() {
    }

    @VisibleForTesting
    Request(String str, RequestStatus requestStatus) {
        this.f1849id = str;
        this.status = requestStatus;
    }

    @NonNull
    public List<Long> getCollaboratorIds() {
        return CollectionUtils.copyOf(this.collaboratorIds);
    }

    @Nullable
    public Integer getCommentCount() {
        return this.commentCount;
    }

    @Nullable
    public Date getCreatedAt() {
        return this.createdAt == null ? null : new Date(this.createdAt.getTime());
    }

    @Nullable
    public String getDescription() {
        return this.description;
    }

    @Nullable
    public Date getDueAt() {
        return this.dueAt == null ? null : new Date(this.dueAt.getTime());
    }

    @Nullable
    public Comment getFirstComment() {
        return this.firstComment;
    }

    @Nullable
    public String getId() {
        return this.f1849id;
    }

    @Nullable
    public Comment getLastComment() {
        return this.lastComment;
    }

    public List<User> getLastCommentingAgents() {
        return CollectionUtils.copyOf(this.lastCommentingAgents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Long> getLastCommentingAgentsIds() {
        return CollectionUtils.copyOf(this.lastCommentingAgentsIds);
    }

    @Nullable
    public Long getOrganizationId() {
        return this.organizationId;
    }

    @Nullable
    public String getPriority() {
        return this.priority;
    }

    @Nullable
    public Date getPublicUpdatedAt() {
        return this.publicUpdatedAt == null ? getUpdatedAt() : new Date(this.publicUpdatedAt.getTime());
    }

    @Nullable
    public Long getRequesterId() {
        return this.requesterId;
    }

    @Nullable
    public RequestStatus getStatus() {
        return this.status;
    }

    @Nullable
    public String getSubject() {
        return this.subject;
    }

    @Nullable
    public String getType() {
        return this.type;
    }

    @Nullable
    public Date getUpdatedAt() {
        return this.updatedAt == null ? null : new Date(this.updatedAt.getTime());
    }

    @Nullable
    public String getUrl() {
        return this.url;
    }

    public void setComment(EndUserComment endUserComment) {
        this.comment = endUserComment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLastCommentingAgents(List<User> list) {
        this.lastCommentingAgents = list;
    }
}
