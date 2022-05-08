package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetMemoryCacheFactory.class */
public final class CoreModule_GetMemoryCacheFactory implements Factory<MemoryCache> {
    private final CoreModule module;

    public CoreModule_GetMemoryCacheFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<MemoryCache> create(CoreModule coreModule) {
        return new CoreModule_GetMemoryCacheFactory(coreModule);
    }

    public static MemoryCache proxyGetMemoryCache(CoreModule coreModule) {
        return coreModule.getMemoryCache();
    }

    @Override // javax.inject.Provider
    public MemoryCache get() {
        return (MemoryCache) Preconditions.checkNotNull(this.module.getMemoryCache(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
