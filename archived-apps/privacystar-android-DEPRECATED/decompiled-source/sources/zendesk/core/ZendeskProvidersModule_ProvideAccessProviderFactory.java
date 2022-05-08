package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory.class */
public final class ZendeskProvidersModule_ProvideAccessProviderFactory implements Factory<AccessProvider> {
    private final Provider<AccessService> accessServiceProvider;
    private final Provider<IdentityManager> identityManagerProvider;

    public ZendeskProvidersModule_ProvideAccessProviderFactory(Provider<IdentityManager> provider, Provider<AccessService> provider2) {
        this.identityManagerProvider = provider;
        this.accessServiceProvider = provider2;
    }

    public static Factory<AccessProvider> create(Provider<IdentityManager> provider, Provider<AccessService> provider2) {
        return new ZendeskProvidersModule_ProvideAccessProviderFactory(provider, provider2);
    }

    public static AccessProvider proxyProvideAccessProvider(Object obj, Object obj2) {
        return ZendeskProvidersModule.provideAccessProvider((IdentityManager) obj, (AccessService) obj2);
    }

    @Override // javax.inject.Provider
    public AccessProvider get() {
        return (AccessProvider) Preconditions.checkNotNull(ZendeskProvidersModule.provideAccessProvider(this.identityManagerProvider.get(), this.accessServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
