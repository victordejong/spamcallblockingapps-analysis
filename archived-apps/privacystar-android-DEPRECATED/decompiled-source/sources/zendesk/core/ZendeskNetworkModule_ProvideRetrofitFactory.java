package zendesk.core;

import com.google.gson.Gson;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideRetrofitFactory.class */
public final class ZendeskNetworkModule_ProvideRetrofitFactory implements Factory<Retrofit> {
    private final Provider<ApplicationConfiguration> configurationProvider;
    private final Provider<Gson> gsonProvider;
    private final Provider<OkHttpClient> okHttpClientProvider;

    public ZendeskNetworkModule_ProvideRetrofitFactory(Provider<ApplicationConfiguration> provider, Provider<Gson> provider2, Provider<OkHttpClient> provider3) {
        this.configurationProvider = provider;
        this.gsonProvider = provider2;
        this.okHttpClientProvider = provider3;
    }

    public static Factory<Retrofit> create(Provider<ApplicationConfiguration> provider, Provider<Gson> provider2, Provider<OkHttpClient> provider3) {
        return new ZendeskNetworkModule_ProvideRetrofitFactory(provider, provider2, provider3);
    }

    public static Retrofit proxyProvideRetrofit(ApplicationConfiguration applicationConfiguration, Gson gson, OkHttpClient okHttpClient) {
        return ZendeskNetworkModule.provideRetrofit(applicationConfiguration, gson, okHttpClient);
    }

    @Override // javax.inject.Provider
    public Retrofit get() {
        return (Retrofit) Preconditions.checkNotNull(ZendeskNetworkModule.provideRetrofit(this.configurationProvider.get(), this.gsonProvider.get(), this.okHttpClientProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
