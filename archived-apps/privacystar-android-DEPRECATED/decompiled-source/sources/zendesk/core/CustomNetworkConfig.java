package zendesk.core;

import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CustomNetworkConfig.class */
public abstract class CustomNetworkConfig {
    public void configureOkHttpClient(OkHttpClient.Builder builder) {
    }

    public void configureRetrofit(Retrofit.Builder builder) {
    }
}
