package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory.class */
public final class ZendeskApplicationModule_ProvideApplicationConfigurationFactory implements Factory<ApplicationConfiguration> {
    private final ZendeskApplicationModule module;

    public ZendeskApplicationModule_ProvideApplicationConfigurationFactory(ZendeskApplicationModule zendeskApplicationModule) {
        this.module = zendeskApplicationModule;
    }

    public static Factory<ApplicationConfiguration> create(ZendeskApplicationModule zendeskApplicationModule) {
        return new ZendeskApplicationModule_ProvideApplicationConfigurationFactory(zendeskApplicationModule);
    }

    public static ApplicationConfiguration proxyProvideApplicationConfiguration(ZendeskApplicationModule zendeskApplicationModule) {
        return zendeskApplicationModule.provideApplicationConfiguration();
    }

    @Override // javax.inject.Provider
    public ApplicationConfiguration get() {
        return (ApplicationConfiguration) Preconditions.checkNotNull(this.module.provideApplicationConfiguration(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
