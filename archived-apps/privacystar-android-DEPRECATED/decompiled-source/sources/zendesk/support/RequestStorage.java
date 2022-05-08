package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestStorage.class */
public interface RequestStorage {
    @NonNull
    List<RequestData> getRequestData();

    boolean isRequestDataExpired();

    void markRequestAsRead(String str, int i);

    void markRequestAsUnread(String str);

    void storeRequestData(@Nullable List<RequestData> list);

    void updateRequestData(List<Request> list);
}
