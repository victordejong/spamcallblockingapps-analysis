package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Attachment.class */
public class Attachment {
    private String contentType;
    private String contentUrl;
    private String fileName;
    private Long height;

    /* renamed from: id */
    private Long f1836id;
    private String mappedContentUrl;
    private Long size;
    private List<Attachment> thumbnails;
    private String url;
    private Long width;

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
    public Long getHeight() {
        return this.height;
    }

    @Nullable
    public Long getId() {
        return this.f1836id;
    }

    @Nullable
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

    @Nullable
    public Long getWidth() {
        return this.width;
    }
}
