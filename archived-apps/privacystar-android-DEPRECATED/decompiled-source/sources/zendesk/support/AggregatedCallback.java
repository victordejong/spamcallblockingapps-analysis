package zendesk.support;

import android.support.annotation.RestrictTo;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.SafeZendeskCallback;
import com.zendesk.service.ZendeskCallback;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/AggregatedCallback.class */
public final class AggregatedCallback<T> extends ZendeskCallback<T> {
    private final Set<SafeZendeskCallback<T>> callbackSet = Collections.synchronizedSet(new HashSet());

    public boolean add(ZendeskCallback<T> zendeskCallback) {
        boolean isEmpty = this.callbackSet.isEmpty();
        this.callbackSet.add(SafeZendeskCallback.from(zendeskCallback));
        return isEmpty;
    }

    public void cancel() {
        for (SafeZendeskCallback<T> safeZendeskCallback : this.callbackSet) {
            safeZendeskCallback.cancel();
        }
        this.callbackSet.clear();
    }

    @Override // com.zendesk.service.ZendeskCallback
    public void onError(ErrorResponse errorResponse) {
        for (SafeZendeskCallback<T> safeZendeskCallback : this.callbackSet) {
            safeZendeskCallback.onError(errorResponse);
        }
        this.callbackSet.clear();
    }

    @Override // com.zendesk.service.ZendeskCallback
    public void onSuccess(T t) {
        for (SafeZendeskCallback<T> safeZendeskCallback : this.callbackSet) {
            safeZendeskCallback.onSuccess(t);
        }
        this.callbackSet.clear();
    }
}
