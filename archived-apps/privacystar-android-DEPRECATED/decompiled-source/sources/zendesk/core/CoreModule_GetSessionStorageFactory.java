package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetSessionStorageFactory.class */
public final class CoreModule_GetSessionStorageFactory implements Factory<SessionStorage> {
    private final CoreModule module;

    public CoreModule_GetSessionStorageFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<SessionStorage> create(CoreModule coreModule) {
        return new CoreModule_GetSessionStorageFactory(coreModule);
    }

    public static SessionStorage proxyGetSessionStorage(CoreModule coreModule) {
        return coreModule.getSessionStorage();
    }

    @Override // javax.inject.Provider
    public SessionStorage get() {
        return (SessionStorage) Preconditions.checkNotNull(this.module.getSessionStorage(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
