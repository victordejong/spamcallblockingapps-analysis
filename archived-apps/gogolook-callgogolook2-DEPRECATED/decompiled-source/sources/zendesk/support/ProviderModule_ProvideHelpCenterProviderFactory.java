package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideHelpCenterProviderFactory.class */
public final class ProviderModule_ProvideHelpCenterProviderFactory implements AbstractC10866b<HelpCenterProvider> {
    public final Provider<ZendeskHelpCenterService> helpCenterServiceProvider;
    public final Provider<HelpCenterSessionCache> helpCenterSessionCacheProvider;
    public final ProviderModule module;
    public final Provider<SupportSettingsProvider> settingsProvider;
    public final Provider<SupportBlipsProvider> supportBlipsProvider;
    public final Provider<ZendeskTracker> zendeskTrackerProvider;

    public ProviderModule_ProvideHelpCenterProviderFactory(ProviderModule providerModule, Provider<SupportSettingsProvider> provider, Provider<SupportBlipsProvider> provider2, Provider<ZendeskHelpCenterService> provider3, Provider<HelpCenterSessionCache> provider4, Provider<ZendeskTracker> provider5) {
        this.module = providerModule;
        this.settingsProvider = provider;
        this.supportBlipsProvider = provider2;
        this.helpCenterServiceProvider = provider3;
        this.helpCenterSessionCacheProvider = provider4;
        this.zendeskTrackerProvider = provider5;
    }

    public static ProviderModule_ProvideHelpCenterProviderFactory create(ProviderModule providerModule, Provider<SupportSettingsProvider> provider, Provider<SupportBlipsProvider> provider2, Provider<ZendeskHelpCenterService> provider3, Provider<HelpCenterSessionCache> provider4, Provider<ZendeskTracker> provider5) {
        return new ProviderModule_ProvideHelpCenterProviderFactory(providerModule, provider, provider2, provider3, provider4, provider5);
    }

    public static HelpCenterProvider provideHelpCenterProvider(ProviderModule providerModule, SupportSettingsProvider supportSettingsProvider, SupportBlipsProvider supportBlipsProvider, Object obj, Object obj2, Object obj3) {
        HelpCenterProvider provideHelpCenterProvider = providerModule.provideHelpCenterProvider(supportSettingsProvider, supportBlipsProvider, (ZendeskHelpCenterService) obj, (HelpCenterSessionCache) obj2, (ZendeskTracker) obj3);
        C10867c.m10383a(provideHelpCenterProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideHelpCenterProvider;
    }

    @Override // javax.inject.Provider
    public HelpCenterProvider get() {
        return provideHelpCenterProvider(this.module, this.settingsProvider.get(), this.supportBlipsProvider.get(), this.helpCenterServiceProvider.get(), this.helpCenterSessionCacheProvider.get(), this.zendeskTrackerProvider.get());
    }
}
