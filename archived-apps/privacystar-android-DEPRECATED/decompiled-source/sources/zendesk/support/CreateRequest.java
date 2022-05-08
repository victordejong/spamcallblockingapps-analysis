package zendesk.support;

import android.support.annotation.Nullable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/support/CreateRequest.class */
public class CreateRequest {
    private static final transient String METADATA_SDK_KEY = "sdk";
    private Comment comment;
    private List<CustomField> customFields;

    /* renamed from: id */
    private String f1841id;
    private Map<String, Map<String, String>> metadata;
    private String subject;
    private List<String> tags;
    private Long ticketFormId;

    public List<CustomField> getCustomFields() {
        return this.customFields;
    }

    @Nullable
    public String getDescription() {
        return this.comment == null ? null : this.comment.getBody();
    }

    @Nullable
    public String getId() {
        return this.f1841id;
    }

    @Nullable
    public String getSubject() {
        return this.subject;
    }

    @Nullable
    public List<String> getTags() {
        return this.tags;
    }

    public Long getTicketFormId() {
        return this.ticketFormId;
    }

    public void setAttachments(List<String> list) {
        if (this.comment == null) {
            this.comment = new Comment();
        }
        this.comment.setAttachments(list);
    }

    public void setCustomFields(List<CustomField> list) {
        this.customFields = list;
    }

    public void setDescription(String str) {
        if (this.comment == null) {
            this.comment = new Comment();
        }
        this.comment.setBody(str);
    }

    public void setId(String str) {
        this.f1841id = str;
    }

    public void setMetadata(Map<String, String> map) {
        this.metadata = new HashMap();
        this.metadata.put("sdk", map);
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public void setTicketFormId(Long l) {
        this.ticketFormId = l;
    }
}
