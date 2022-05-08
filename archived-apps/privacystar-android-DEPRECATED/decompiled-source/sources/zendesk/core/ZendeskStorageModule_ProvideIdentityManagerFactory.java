package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory.class */
public final class ZendeskStorageModule_ProvideIdentityManagerFactory implements Factory<IdentityManager> {
    private final Provider<IdentityStorage> identityStorageProvider;

    public ZendeskStorageModule_ProvideIdentityManagerFactory(Provider<IdentityStorage> provider) {
        this.identityStorageProvider = provider;
    }

    public static Factory<IdentityManager> create(Provider<IdentityStorage> provider) {
        return new ZendeskStorageModule_ProvideIdentityManagerFactory(provider);
    }

    public static IdentityManager proxyProvideIdentityManager(Object obj) {
        return ZendeskStorageModule.provideIdentityManager((IdentityStorage) obj);
    }

    @Override // javax.inject.Provider
    public IdentityManager get() {
        return (IdentityManager) Preconditions.checkNotNull(ZendeskStorageModule.provideIdentityManager(this.identityStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
