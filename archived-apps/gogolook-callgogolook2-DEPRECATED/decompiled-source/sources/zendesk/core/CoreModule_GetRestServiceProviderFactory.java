package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetRestServiceProviderFactory.class */
public final class CoreModule_GetRestServiceProviderFactory implements AbstractC10866b<RestServiceProvider> {
    public final CoreModule module;

    public CoreModule_GetRestServiceProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static CoreModule_GetRestServiceProviderFactory create(CoreModule coreModule) {
        return new CoreModule_GetRestServiceProviderFactory(coreModule);
    }

    public static RestServiceProvider getRestServiceProvider(CoreModule coreModule) {
        RestServiceProvider restServiceProvider = coreModule.getRestServiceProvider();
        C10867c.m10383a(restServiceProvider, "Cannot return null from a non-@Nullable @Provides method");
        return restServiceProvider;
    }

    @Override // javax.inject.Provider
    public RestServiceProvider get() {
        return getRestServiceProvider(this.module);
    }
}
