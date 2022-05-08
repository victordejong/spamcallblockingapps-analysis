package zendesk.core;

import javax.inject.Provider;
import okhttp3.OkHttpClient;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideMediaOkHttpClientFactory.class */
public final class ZendeskNetworkModule_ProvideMediaOkHttpClientFactory implements AbstractC10866b<OkHttpClient> {
    public final Provider<ZendeskAccessInterceptor> accessInterceptorProvider;
    public final Provider<ZendeskAuthHeaderInterceptor> authHeaderInterceptorProvider;
    public final Provider<CachingInterceptor> cachingInterceptorProvider;
    public final ZendeskNetworkModule module;
    public final Provider<OkHttpClient> okHttpClientProvider;
    public final Provider<ZendeskSettingsInterceptor> settingsInterceptorProvider;
    public final Provider<ZendeskUnauthorizedInterceptor> unauthorizedInterceptorProvider;

    public ZendeskNetworkModule_ProvideMediaOkHttpClientFactory(ZendeskNetworkModule zendeskNetworkModule, Provider<OkHttpClient> provider, Provider<ZendeskAccessInterceptor> provider2, Provider<ZendeskAuthHeaderInterceptor> provider3, Provider<ZendeskSettingsInterceptor> provider4, Provider<CachingInterceptor> provider5, Provider<ZendeskUnauthorizedInterceptor> provider6) {
        this.module = zendeskNetworkModule;
        this.okHttpClientProvider = provider;
        this.accessInterceptorProvider = provider2;
        this.authHeaderInterceptorProvider = provider3;
        this.settingsInterceptorProvider = provider4;
        this.cachingInterceptorProvider = provider5;
        this.unauthorizedInterceptorProvider = provider6;
    }

    public static ZendeskNetworkModule_ProvideMediaOkHttpClientFactory create(ZendeskNetworkModule zendeskNetworkModule, Provider<OkHttpClient> provider, Provider<ZendeskAccessInterceptor> provider2, Provider<ZendeskAuthHeaderInterceptor> provider3, Provider<ZendeskSettingsInterceptor> provider4, Provider<CachingInterceptor> provider5, Provider<ZendeskUnauthorizedInterceptor> provider6) {
        return new ZendeskNetworkModule_ProvideMediaOkHttpClientFactory(zendeskNetworkModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static OkHttpClient provideMediaOkHttpClient(ZendeskNetworkModule zendeskNetworkModule, OkHttpClient okHttpClient, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        OkHttpClient provideMediaOkHttpClient = zendeskNetworkModule.provideMediaOkHttpClient(okHttpClient, (ZendeskAccessInterceptor) obj, (ZendeskAuthHeaderInterceptor) obj2, (ZendeskSettingsInterceptor) obj3, (CachingInterceptor) obj4, (ZendeskUnauthorizedInterceptor) obj5);
        C10867c.m10383a(provideMediaOkHttpClient, "Cannot return null from a non-@Nullable @Provides method");
        return provideMediaOkHttpClient;
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return provideMediaOkHttpClient(this.module, this.okHttpClientProvider.get(), this.accessInterceptorProvider.get(), this.authHeaderInterceptorProvider.get(), this.settingsInterceptorProvider.get(), this.cachingInterceptorProvider.get(), this.unauthorizedInterceptorProvider.get());
    }
}
