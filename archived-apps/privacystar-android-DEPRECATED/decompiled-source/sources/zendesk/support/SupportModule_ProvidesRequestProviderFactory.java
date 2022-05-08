package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportModule_ProvidesRequestProviderFactory.class */
public final class SupportModule_ProvidesRequestProviderFactory implements Factory<RequestProvider> {
    private final SupportModule module;

    public SupportModule_ProvidesRequestProviderFactory(SupportModule supportModule) {
        this.module = supportModule;
    }

    public static Factory<RequestProvider> create(SupportModule supportModule) {
        return new SupportModule_ProvidesRequestProviderFactory(supportModule);
    }

    public static RequestProvider proxyProvidesRequestProvider(SupportModule supportModule) {
        return supportModule.providesRequestProvider();
    }

    @Override // javax.inject.Provider
    public RequestProvider get() {
        return (RequestProvider) Preconditions.checkNotNull(this.module.providesRequestProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
