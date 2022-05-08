package zendesk.support;

import com.google.gson.Gson;
import com.jakewharton.disklrucache.DiskLruCache;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_SupportUIStorageFactory.class */
public final class SupportSdkModule_SupportUIStorageFactory implements Factory<SupportUiStorage> {
    private final Provider<DiskLruCache> diskLruCacheProvider;
    private final Provider<Gson> gsonProvider;
    private final SupportSdkModule module;

    public SupportSdkModule_SupportUIStorageFactory(SupportSdkModule supportSdkModule, Provider<DiskLruCache> provider, Provider<Gson> provider2) {
        this.module = supportSdkModule;
        this.diskLruCacheProvider = provider;
        this.gsonProvider = provider2;
    }

    public static Factory<SupportUiStorage> create(SupportSdkModule supportSdkModule, Provider<DiskLruCache> provider, Provider<Gson> provider2) {
        return new SupportSdkModule_SupportUIStorageFactory(supportSdkModule, provider, provider2);
    }

    public static SupportUiStorage proxySupportUIStorage(SupportSdkModule supportSdkModule, DiskLruCache diskLruCache, Gson gson) {
        return supportSdkModule.supportUIStorage(diskLruCache, gson);
    }

    @Override // javax.inject.Provider
    public SupportUiStorage get() {
        return (SupportUiStorage) Preconditions.checkNotNull(this.module.supportUIStorage(this.diskLruCacheProvider.get(), this.gsonProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
