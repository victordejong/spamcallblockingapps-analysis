package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestUpdates.class */
public final class RequestUpdates {
    @NonNull
    private final Map<String, Integer> requestIds;

    public RequestUpdates(@Nullable Map<String, Integer> map) {
        if (map == null) {
            this.requestIds = Collections.emptyMap();
        } else {
            this.requestIds = map;
        }
    }

    @NonNull
    public Map<String, Integer> getRequestUpdates() {
        return CollectionUtils.copyOf(this.requestIds);
    }

    public boolean hasUpdatedRequests() {
        return !this.requestIds.isEmpty();
    }

    public boolean isRequestUnread(String str) {
        return this.requestIds.containsKey(str) && this.requestIds.get(str).intValue() > 0;
    }

    public int totalUpdates() {
        int i = 0;
        for (Integer num : this.requestIds.values()) {
            i += num.intValue();
        }
        return i;
    }
}
