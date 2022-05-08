package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetRestServiceProviderFactory.class */
public final class CoreModule_GetRestServiceProviderFactory implements Factory<RestServiceProvider> {
    private final CoreModule module;

    public CoreModule_GetRestServiceProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<RestServiceProvider> create(CoreModule coreModule) {
        return new CoreModule_GetRestServiceProviderFactory(coreModule);
    }

    public static RestServiceProvider proxyGetRestServiceProvider(CoreModule coreModule) {
        return coreModule.getRestServiceProvider();
    }

    @Override // javax.inject.Provider
    public RestServiceProvider get() {
        return (RestServiceProvider) Preconditions.checkNotNull(this.module.getRestServiceProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
