package zendesk.core;

import com.google.gson.Gson;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideRetrofitFactory.class */
public final class ZendeskNetworkModule_ProvideRetrofitFactory implements AbstractC10866b<C15300s> {
    public final Provider<ApplicationConfiguration> configurationProvider;
    public final Provider<Gson> gsonProvider;
    public final Provider<OkHttpClient> okHttpClientProvider;

    public ZendeskNetworkModule_ProvideRetrofitFactory(Provider<ApplicationConfiguration> provider, Provider<Gson> provider2, Provider<OkHttpClient> provider3) {
        this.configurationProvider = provider;
        this.gsonProvider = provider2;
        this.okHttpClientProvider = provider3;
    }

    public static ZendeskNetworkModule_ProvideRetrofitFactory create(Provider<ApplicationConfiguration> provider, Provider<Gson> provider2, Provider<OkHttpClient> provider3) {
        return new ZendeskNetworkModule_ProvideRetrofitFactory(provider, provider2, provider3);
    }

    public static C15300s provideRetrofit(ApplicationConfiguration applicationConfiguration, Gson gson, OkHttpClient okHttpClient) {
        C15300s provideRetrofit = ZendeskNetworkModule.provideRetrofit(applicationConfiguration, gson, okHttpClient);
        C10867c.m10383a(provideRetrofit, "Cannot return null from a non-@Nullable @Provides method");
        return provideRetrofit;
    }

    @Override // javax.inject.Provider
    public C15300s get() {
        return provideRetrofit(this.configurationProvider.get(), this.gsonProvider.get(), this.okHttpClientProvider.get());
    }
}
