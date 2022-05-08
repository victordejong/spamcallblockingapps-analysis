package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportModule_ProvidesUploadProviderFactory.class */
public final class SupportModule_ProvidesUploadProviderFactory implements Factory<UploadProvider> {
    private final SupportModule module;

    public SupportModule_ProvidesUploadProviderFactory(SupportModule supportModule) {
        this.module = supportModule;
    }

    public static Factory<UploadProvider> create(SupportModule supportModule) {
        return new SupportModule_ProvidesUploadProviderFactory(supportModule);
    }

    public static UploadProvider proxyProvidesUploadProvider(SupportModule supportModule) {
        return supportModule.providesUploadProvider();
    }

    @Override // javax.inject.Provider
    public UploadProvider get() {
        return (UploadProvider) Preconditions.checkNotNull(this.module.providesUploadProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
