package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory.class */
public final class ZendeskStorageModule_ProvideIdentityManagerFactory implements AbstractC10866b<IdentityManager> {
    public final Provider<IdentityStorage> identityStorageProvider;

    public ZendeskStorageModule_ProvideIdentityManagerFactory(Provider<IdentityStorage> provider) {
        this.identityStorageProvider = provider;
    }

    public static ZendeskStorageModule_ProvideIdentityManagerFactory create(Provider<IdentityStorage> provider) {
        return new ZendeskStorageModule_ProvideIdentityManagerFactory(provider);
    }

    public static IdentityManager provideIdentityManager(Object obj) {
        IdentityManager provideIdentityManager = ZendeskStorageModule.provideIdentityManager((IdentityStorage) obj);
        C10867c.m10383a(provideIdentityManager, "Cannot return null from a non-@Nullable @Provides method");
        return provideIdentityManager;
    }

    @Override // javax.inject.Provider
    public IdentityManager get() {
        return provideIdentityManager(this.identityStorageProvider.get());
    }
}
