package zendesk.core;

import android.content.Context;
import com.zendesk.util.LocaleUtil;
import com.zendesk.util.StringUtils;
import java.io.IOException;
import java.util.Locale;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/AcceptLanguageHeaderInterceptor.class */
public class AcceptLanguageHeaderInterceptor implements Interceptor {
    private Context context;

    public AcceptLanguageHeaderInterceptor(Context context) {
        this.context = context;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Locale currentLocale = DeviceInfo.getCurrentLocale(this.context);
        return (!StringUtils.isEmpty(request.header(Constants.ACCEPT_LANGUAGE)) || currentLocale == null) ? chain.proceed(request) : chain.proceed(request.newBuilder().addHeader(Constants.ACCEPT_LANGUAGE, LocaleUtil.toLanguageTag(currentLocale)).build());
    }
}
