package zendesk.support;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/support/User.class */
public class User {
    public boolean agent;

    /* renamed from: id */
    public Long f33482id;
    public String name;
    public Long organizationId;
    public Attachment photo;
    public List<String> tags;
    public Map<String, String> userFields;

    public User() {
        this.f33482id = -1L;
        this.name = "";
        this.photo = null;
        this.agent = false;
        this.organizationId = -1L;
        this.tags = new ArrayList();
        this.userFields = new HashMap();
    }

    public User(Long l, String str, Attachment attachment, boolean z, Long l2, List<String> list, Map<String, String> map) {
        this.f33482id = l;
        this.name = str;
        this.photo = attachment;
        this.agent = z;
        this.organizationId = l2;
        this.tags = list;
        this.userFields = map;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || User.class != obj.getClass()) {
            return false;
        }
        User user = (User) obj;
        if (this.agent != user.agent) {
            return false;
        }
        Long l = this.f33482id;
        if (l != null) {
            if (!l.equals(user.f33482id)) {
                return false;
            }
        } else if (user.f33482id != null) {
            return false;
        }
        Attachment attachment = this.photo;
        if (attachment != null) {
            if (!attachment.equals(user.photo)) {
                return false;
            }
        } else if (user.photo != null) {
            return false;
        }
        Long l2 = this.organizationId;
        if (l2 != null) {
            if (!l2.equals(user.organizationId)) {
                return false;
            }
        } else if (user.organizationId != null) {
            return false;
        }
        List<String> list = this.tags;
        if (list != null) {
            if (!list.equals(user.tags)) {
                return false;
            }
        } else if (user.tags != null) {
            return false;
        }
        Map<String, String> map = this.userFields;
        Map<String, String> map2 = user.userFields;
        if (map != null) {
            z = map.equals(map2);
        } else if (map2 != null) {
            z = false;
        }
        return z;
    }

    @Nullable
    public Long getId() {
        return this.f33482id;
    }

    @Nullable
    public String getName() {
        return this.name;
    }

    @Nullable
    public Attachment getPhoto() {
        return this.photo;
    }

    public int hashCode() {
        Long l = this.f33482id;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        Attachment attachment = this.photo;
        int hashCode2 = attachment != null ? attachment.hashCode() : 0;
        boolean z = this.agent;
        Long l2 = this.organizationId;
        int hashCode3 = l2 != null ? l2.hashCode() : 0;
        List<String> list = this.tags;
        int hashCode4 = list != null ? list.hashCode() : 0;
        Map<String, String> map = this.userFields;
        if (map != null) {
            i = map.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + (z ? 1 : 0)) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }
}
