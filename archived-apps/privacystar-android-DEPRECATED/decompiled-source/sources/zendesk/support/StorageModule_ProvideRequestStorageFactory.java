package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.MemoryCache;
import zendesk.core.SessionStorage;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideRequestStorageFactory.class */
public final class StorageModule_ProvideRequestStorageFactory implements Factory<RequestStorage> {
    private final Provider<SessionStorage> baseStorageProvider;
    private final Provider<MemoryCache> memoryCacheProvider;
    private final StorageModule module;
    private final Provider<RequestMigrator> requestMigratorProvider;

    public StorageModule_ProvideRequestStorageFactory(StorageModule storageModule, Provider<SessionStorage> provider, Provider<RequestMigrator> provider2, Provider<MemoryCache> provider3) {
        this.module = storageModule;
        this.baseStorageProvider = provider;
        this.requestMigratorProvider = provider2;
        this.memoryCacheProvider = provider3;
    }

    public static Factory<RequestStorage> create(StorageModule storageModule, Provider<SessionStorage> provider, Provider<RequestMigrator> provider2, Provider<MemoryCache> provider3) {
        return new StorageModule_ProvideRequestStorageFactory(storageModule, provider, provider2, provider3);
    }

    public static RequestStorage proxyProvideRequestStorage(StorageModule storageModule, SessionStorage sessionStorage, Object obj, MemoryCache memoryCache) {
        return storageModule.provideRequestStorage(sessionStorage, (RequestMigrator) obj, memoryCache);
    }

    @Override // javax.inject.Provider
    public RequestStorage get() {
        return (RequestStorage) Preconditions.checkNotNull(this.module.provideRequestStorage(this.baseStorageProvider.get(), this.requestMigratorProvider.get(), this.memoryCacheProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
