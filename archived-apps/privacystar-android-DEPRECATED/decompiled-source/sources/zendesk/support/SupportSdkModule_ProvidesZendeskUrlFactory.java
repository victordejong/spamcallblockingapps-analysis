package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.ApplicationConfiguration;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory.class */
public final class SupportSdkModule_ProvidesZendeskUrlFactory implements Factory<String> {
    private final Provider<ApplicationConfiguration> applicationConfigurationProvider;
    private final SupportSdkModule module;

    public SupportSdkModule_ProvidesZendeskUrlFactory(SupportSdkModule supportSdkModule, Provider<ApplicationConfiguration> provider) {
        this.module = supportSdkModule;
        this.applicationConfigurationProvider = provider;
    }

    public static Factory<String> create(SupportSdkModule supportSdkModule, Provider<ApplicationConfiguration> provider) {
        return new SupportSdkModule_ProvidesZendeskUrlFactory(supportSdkModule, provider);
    }

    public static String proxyProvidesZendeskUrl(SupportSdkModule supportSdkModule, ApplicationConfiguration applicationConfiguration) {
        return supportSdkModule.providesZendeskUrl(applicationConfiguration);
    }

    @Override // javax.inject.Provider
    public String get() {
        return (String) Preconditions.checkNotNull(this.module.providesZendeskUrl(this.applicationConfigurationProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
