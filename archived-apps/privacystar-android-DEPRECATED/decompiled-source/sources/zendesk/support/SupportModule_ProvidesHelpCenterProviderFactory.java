package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportModule_ProvidesHelpCenterProviderFactory.class */
public final class SupportModule_ProvidesHelpCenterProviderFactory implements Factory<HelpCenterProvider> {
    private final SupportModule module;

    public SupportModule_ProvidesHelpCenterProviderFactory(SupportModule supportModule) {
        this.module = supportModule;
    }

    public static Factory<HelpCenterProvider> create(SupportModule supportModule) {
        return new SupportModule_ProvidesHelpCenterProviderFactory(supportModule);
    }

    public static HelpCenterProvider proxyProvidesHelpCenterProvider(SupportModule supportModule) {
        return supportModule.providesHelpCenterProvider();
    }

    @Override // javax.inject.Provider
    public HelpCenterProvider get() {
        return (HelpCenterProvider) Preconditions.checkNotNull(this.module.providesHelpCenterProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
