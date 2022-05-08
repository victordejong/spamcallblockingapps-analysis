package zendesk.support;

import android.support.annotation.Nullable;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskCallbackSuccess.class */
abstract class ZendeskCallbackSuccess<E> extends ZendeskCallback<E> {
    private final ZendeskCallback callback;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskCallbackSuccess(@Nullable ZendeskCallback zendeskCallback) {
        this.callback = zendeskCallback;
    }

    @Override // com.zendesk.service.ZendeskCallback
    public void onError(ErrorResponse errorResponse) {
        if (this.callback != null) {
            this.callback.onError(errorResponse);
        }
    }

    @Override // com.zendesk.service.ZendeskCallback
    public abstract void onSuccess(E e);
}
