package com.readystatesoftware.chuck;

import android.content.Context;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/readystatesoftware/chuck/ChuckInterceptor.class */
public final class ChuckInterceptor implements Interceptor {

    /* loaded from: classes2-dex2jar.jar:com/readystatesoftware/chuck/ChuckInterceptor$Period.class */
    public enum Period {
        ONE_HOUR,
        ONE_DAY,
        ONE_WEEK,
        FOREVER
    }

    public ChuckInterceptor(Context context) {
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request());
    }

    public ChuckInterceptor maxContentLength(long j) {
        return this;
    }

    public ChuckInterceptor retainDataFor(Period period) {
        return this;
    }

    public ChuckInterceptor showNotification(boolean z) {
        return this;
    }
}
