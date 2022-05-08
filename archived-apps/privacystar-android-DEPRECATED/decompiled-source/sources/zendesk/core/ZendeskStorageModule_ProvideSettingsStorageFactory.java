package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSettingsStorageFactory.class */
public final class ZendeskStorageModule_ProvideSettingsStorageFactory implements Factory<SettingsStorage> {
    private final Provider<BaseStorage> baseStorageProvider;

    public ZendeskStorageModule_ProvideSettingsStorageFactory(Provider<BaseStorage> provider) {
        this.baseStorageProvider = provider;
    }

    public static Factory<SettingsStorage> create(Provider<BaseStorage> provider) {
        return new ZendeskStorageModule_ProvideSettingsStorageFactory(provider);
    }

    public static SettingsStorage proxyProvideSettingsStorage(BaseStorage baseStorage) {
        return ZendeskStorageModule.provideSettingsStorage(baseStorage);
    }

    @Override // javax.inject.Provider
    public SettingsStorage get() {
        return (SettingsStorage) Preconditions.checkNotNull(ZendeskStorageModule.provideSettingsStorage(this.baseStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
