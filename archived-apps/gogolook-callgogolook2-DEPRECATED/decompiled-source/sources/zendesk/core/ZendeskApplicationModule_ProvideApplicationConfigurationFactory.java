package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory.class */
public final class ZendeskApplicationModule_ProvideApplicationConfigurationFactory implements AbstractC10866b<ApplicationConfiguration> {
    public final ZendeskApplicationModule module;

    public ZendeskApplicationModule_ProvideApplicationConfigurationFactory(ZendeskApplicationModule zendeskApplicationModule) {
        this.module = zendeskApplicationModule;
    }

    public static ZendeskApplicationModule_ProvideApplicationConfigurationFactory create(ZendeskApplicationModule zendeskApplicationModule) {
        return new ZendeskApplicationModule_ProvideApplicationConfigurationFactory(zendeskApplicationModule);
    }

    public static ApplicationConfiguration provideApplicationConfiguration(ZendeskApplicationModule zendeskApplicationModule) {
        ApplicationConfiguration provideApplicationConfiguration = zendeskApplicationModule.provideApplicationConfiguration();
        C10867c.m10383a(provideApplicationConfiguration, "Cannot return null from a non-@Nullable @Provides method");
        return provideApplicationConfiguration;
    }

    @Override // javax.inject.Provider
    public ApplicationConfiguration get() {
        return provideApplicationConfiguration(this.module);
    }
}
