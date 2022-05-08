package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvidePushDeviceIdStorageFactory.class */
public final class ZendeskStorageModule_ProvidePushDeviceIdStorageFactory implements Factory<PushDeviceIdStorage> {
    private final Provider<BaseStorage> additionalSdkStorageProvider;

    public ZendeskStorageModule_ProvidePushDeviceIdStorageFactory(Provider<BaseStorage> provider) {
        this.additionalSdkStorageProvider = provider;
    }

    public static Factory<PushDeviceIdStorage> create(Provider<BaseStorage> provider) {
        return new ZendeskStorageModule_ProvidePushDeviceIdStorageFactory(provider);
    }

    public static PushDeviceIdStorage proxyProvidePushDeviceIdStorage(BaseStorage baseStorage) {
        return ZendeskStorageModule.providePushDeviceIdStorage(baseStorage);
    }

    @Override // javax.inject.Provider
    public PushDeviceIdStorage get() {
        return (PushDeviceIdStorage) Preconditions.checkNotNull(ZendeskStorageModule.providePushDeviceIdStorage(this.additionalSdkStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
