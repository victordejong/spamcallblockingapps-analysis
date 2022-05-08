package zendesk.core;

import androidx.annotation.NonNull;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskPushInterceptor.class */
public class ZendeskPushInterceptor implements Interceptor {
    public final PushDeviceIdStorage pushDeviceIdStorage;
    public final PushRegistrationProviderInternal pushProvider;

    public ZendeskPushInterceptor(PushRegistrationProviderInternal pushRegistrationProviderInternal, PushDeviceIdStorage pushDeviceIdStorage) {
        this.pushProvider = pushRegistrationProviderInternal;
        this.pushDeviceIdStorage = pushDeviceIdStorage;
    }

    @Override // okhttp3.Interceptor
    @NonNull
    public Response intercept(@NonNull Interceptor.Chain chain) throws IOException {
        Response proceed = chain.proceed(chain.request());
        PushRegistrationRequest pushRegistrationRequest = this.pushDeviceIdStorage.getPushRegistrationRequest();
        if (pushRegistrationRequest != null) {
            this.pushProvider.sendPushRegistrationRequest(pushRegistrationRequest);
        }
        return proceed;
    }
}
