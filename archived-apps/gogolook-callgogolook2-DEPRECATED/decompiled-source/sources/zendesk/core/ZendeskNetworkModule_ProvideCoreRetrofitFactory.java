package zendesk.core;

import com.google.gson.Gson;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory.class */
public final class ZendeskNetworkModule_ProvideCoreRetrofitFactory implements AbstractC10866b<C15300s> {
    public final Provider<ApplicationConfiguration> configurationProvider;
    public final Provider<Gson> gsonProvider;
    public final Provider<OkHttpClient> okHttpClientProvider;

    public ZendeskNetworkModule_ProvideCoreRetrofitFactory(Provider<ApplicationConfiguration> provider, Provider<Gson> provider2, Provider<OkHttpClient> provider3) {
        this.configurationProvider = provider;
        this.gsonProvider = provider2;
        this.okHttpClientProvider = provider3;
    }

    public static ZendeskNetworkModule_ProvideCoreRetrofitFactory create(Provider<ApplicationConfiguration> provider, Provider<Gson> provider2, Provider<OkHttpClient> provider3) {
        return new ZendeskNetworkModule_ProvideCoreRetrofitFactory(provider, provider2, provider3);
    }

    public static C15300s provideCoreRetrofit(ApplicationConfiguration applicationConfiguration, Gson gson, OkHttpClient okHttpClient) {
        C15300s provideCoreRetrofit = ZendeskNetworkModule.provideCoreRetrofit(applicationConfiguration, gson, okHttpClient);
        C10867c.m10383a(provideCoreRetrofit, "Cannot return null from a non-@Nullable @Provides method");
        return provideCoreRetrofit;
    }

    @Override // javax.inject.Provider
    public C15300s get() {
        return provideCoreRetrofit(this.configurationProvider.get(), this.gsonProvider.get(), this.okHttpClientProvider.get());
    }
}
