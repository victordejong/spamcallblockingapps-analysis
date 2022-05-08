package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import com.zendesk.util.CollectionUtils;
import java.util.Date;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/core/UserField.class */
public class UserField {
    private Boolean active;
    private Date createdAt;
    private List<UserFieldOption> customFieldOptions;
    private String description;

    /* renamed from: id */
    private Long f1830id;
    private String key;
    private Long position;
    private String rawDescription;
    private String rawTitle;
    private String regexpForValidation;
    private Boolean system;
    private String title;
    private Date updatedAt;
    private String url;
    @SerializedName("type")
    private UserFieldType userFieldType;

    /* loaded from: classes3-dex2jar.jar:zendesk/core/UserField$UserFieldType.class */
    public enum UserFieldType {
        Integer,
        Decimal,
        Checkbox,
        Date,
        Text,
        Textarea,
        Dropdown,
        Regexp
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
    public Long getId() {
        return this.f1830id;
    }

    @Nullable
    public String getKey() {
        return this.key;
    }

    @Nullable
    public Long getPosition() {
        return this.position;
    }

    @Nullable
    public String getRawDescription() {
        return this.rawDescription;
    }

    @Nullable
    public String getRawTitle() {
        return this.rawTitle;
    }

    @Nullable
    public String getRegexpForValidation() {
        return this.regexpForValidation;
    }

    @Nullable
    public String getTitle() {
        return this.title;
    }

    @Nullable
    public Date getUpdatedAt() {
        return this.updatedAt == null ? null : new Date(this.updatedAt.getTime());
    }

    @Nullable
    public String getUrl() {
        return this.url;
    }

    @NonNull
    public List<UserFieldOption> getUserFieldOptions() {
        return CollectionUtils.copyOf(this.customFieldOptions);
    }

    @Nullable
    public UserFieldType getUserFieldType() {
        return this.userFieldType;
    }

    public boolean isActive() {
        return this.active != null && this.active.booleanValue();
    }

    public boolean isSystem() {
        return this.system != null && this.system.booleanValue();
    }
}
