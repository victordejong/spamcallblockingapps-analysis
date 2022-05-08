package zendesk.core;

import android.content.Context;
import java.io.IOException;
import java.util.Locale;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p081h.p451q.p455d.C10861c;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AcceptLanguageHeaderInterceptor.class */
public class AcceptLanguageHeaderInterceptor implements Interceptor {
    public Context context;

    public AcceptLanguageHeaderInterceptor(Context context) {
        this.context = context;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Locale currentLocale = DeviceInfo.getCurrentLocale(this.context);
        if (!C10862d.m10389c(request.header("Accept-Language")) || currentLocale == null) {
            return chain.proceed(request);
        }
        Request.Builder newBuilder = request.newBuilder();
        newBuilder.addHeader("Accept-Language", C10861c.m10393a(currentLocale));
        return chain.proceed(newBuilder.build());
    }
}
