package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSettingsStorageFactory.class */
public final class ZendeskStorageModule_ProvideSettingsStorageFactory implements AbstractC10866b<SettingsStorage> {
    public final Provider<BaseStorage> baseStorageProvider;

    public ZendeskStorageModule_ProvideSettingsStorageFactory(Provider<BaseStorage> provider) {
        this.baseStorageProvider = provider;
    }

    public static ZendeskStorageModule_ProvideSettingsStorageFactory create(Provider<BaseStorage> provider) {
        return new ZendeskStorageModule_ProvideSettingsStorageFactory(provider);
    }

    public static SettingsStorage provideSettingsStorage(BaseStorage baseStorage) {
        SettingsStorage provideSettingsStorage = ZendeskStorageModule.provideSettingsStorage(baseStorage);
        C10867c.m10383a(provideSettingsStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideSettingsStorage;
    }

    @Override // javax.inject.Provider
    public SettingsStorage get() {
        return provideSettingsStorage(this.baseStorageProvider.get());
    }
}
