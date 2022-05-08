package zendesk.core;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AcceptHeaderInterceptor.class */
public class AcceptHeaderInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request.Builder newBuilder = chain.request().newBuilder();
        newBuilder.addHeader("Accept", "application/json");
        return chain.proceed(newBuilder.build());
    }
}
