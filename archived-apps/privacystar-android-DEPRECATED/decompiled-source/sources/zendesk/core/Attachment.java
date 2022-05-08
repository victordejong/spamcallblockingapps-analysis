package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/core/Attachment.class */
class Attachment {
    private String contentType;
    private String contentUrl;
    private String fileName;

    /* renamed from: id */
    private Long f1828id;
    private String mappedContentUrl;
    private Long size;
    private List<Attachment> thumbnails;
    private String url;

    Attachment() {
    }

    @Nullable
    public String getContentType() {
        return this.contentType;
    }

    @Nullable
    public String getContentUrl() {
        return this.contentUrl;
    }

    @Nullable
    public String getFileName() {
        return this.fileName;
    }

    @Nullable
    public Long getId() {
        return this.f1828id;
    }

    public Long getSize() {
        return this.size;
    }

    @NonNull
    public List<Attachment> getThumbnails() {
        return CollectionUtils.copyOf(this.thumbnails);
    }

    @Nullable
    public String getUrl() {
        return this.url;
    }
}
