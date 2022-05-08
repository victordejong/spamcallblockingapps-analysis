package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory.class */
public final class ZendeskProvidersModule_ProvideAccessProviderFactory implements AbstractC10866b<AccessProvider> {
    public final Provider<AccessService> accessServiceProvider;
    public final Provider<IdentityManager> identityManagerProvider;

    public ZendeskProvidersModule_ProvideAccessProviderFactory(Provider<IdentityManager> provider, Provider<AccessService> provider2) {
        this.identityManagerProvider = provider;
        this.accessServiceProvider = provider2;
    }

    public static ZendeskProvidersModule_ProvideAccessProviderFactory create(Provider<IdentityManager> provider, Provider<AccessService> provider2) {
        return new ZendeskProvidersModule_ProvideAccessProviderFactory(provider, provider2);
    }

    public static AccessProvider provideAccessProvider(Object obj, Object obj2) {
        AccessProvider provideAccessProvider = ZendeskProvidersModule.provideAccessProvider((IdentityManager) obj, (AccessService) obj2);
        C10867c.m10383a(provideAccessProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideAccessProvider;
    }

    @Override // javax.inject.Provider
    public AccessProvider get() {
        return provideAccessProvider(this.identityManagerProvider.get(), this.accessServiceProvider.get());
    }
}
