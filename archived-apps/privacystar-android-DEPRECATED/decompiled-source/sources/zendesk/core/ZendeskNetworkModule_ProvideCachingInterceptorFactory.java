package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideCachingInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvideCachingInterceptorFactory implements Factory<CachingInterceptor> {
    private final Provider<BaseStorage> mediaCacheProvider;

    public ZendeskNetworkModule_ProvideCachingInterceptorFactory(Provider<BaseStorage> provider) {
        this.mediaCacheProvider = provider;
    }

    public static Factory<CachingInterceptor> create(Provider<BaseStorage> provider) {
        return new ZendeskNetworkModule_ProvideCachingInterceptorFactory(provider);
    }

    public static CachingInterceptor proxyProvideCachingInterceptor(BaseStorage baseStorage) {
        return ZendeskNetworkModule.provideCachingInterceptor(baseStorage);
    }

    @Override // javax.inject.Provider
    public CachingInterceptor get() {
        return (CachingInterceptor) Preconditions.checkNotNull(ZendeskNetworkModule.provideCachingInterceptor(this.mediaCacheProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
