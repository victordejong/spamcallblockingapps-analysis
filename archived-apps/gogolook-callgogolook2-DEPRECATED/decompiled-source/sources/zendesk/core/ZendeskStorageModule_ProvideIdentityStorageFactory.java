package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory.class */
public final class ZendeskStorageModule_ProvideIdentityStorageFactory implements AbstractC10866b<IdentityStorage> {
    public final Provider<BaseStorage> baseStorageProvider;

    public ZendeskStorageModule_ProvideIdentityStorageFactory(Provider<BaseStorage> provider) {
        this.baseStorageProvider = provider;
    }

    public static ZendeskStorageModule_ProvideIdentityStorageFactory create(Provider<BaseStorage> provider) {
        return new ZendeskStorageModule_ProvideIdentityStorageFactory(provider);
    }

    public static IdentityStorage provideIdentityStorage(BaseStorage baseStorage) {
        IdentityStorage provideIdentityStorage = ZendeskStorageModule.provideIdentityStorage(baseStorage);
        C10867c.m10383a(provideIdentityStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideIdentityStorage;
    }

    @Override // javax.inject.Provider
    public IdentityStorage get() {
        return provideIdentityStorage(this.baseStorageProvider.get());
    }
}
