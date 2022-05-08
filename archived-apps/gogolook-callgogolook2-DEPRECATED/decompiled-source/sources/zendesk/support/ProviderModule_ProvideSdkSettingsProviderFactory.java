package zendesk.support;

import java.util.Locale;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.SettingsProvider;
import zendesk.core.ZendeskLocaleConverter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory.class */
public final class ProviderModule_ProvideSdkSettingsProviderFactory implements AbstractC10866b<SupportSettingsProvider> {
    public final Provider<ZendeskLocaleConverter> helpCenterLocaleConverterProvider;
    public final Provider<Locale> localeProvider;
    public final ProviderModule module;
    public final Provider<SettingsProvider> sdkSettingsProvider;

    public ProviderModule_ProvideSdkSettingsProviderFactory(ProviderModule providerModule, Provider<SettingsProvider> provider, Provider<Locale> provider2, Provider<ZendeskLocaleConverter> provider3) {
        this.module = providerModule;
        this.sdkSettingsProvider = provider;
        this.localeProvider = provider2;
        this.helpCenterLocaleConverterProvider = provider3;
    }

    public static ProviderModule_ProvideSdkSettingsProviderFactory create(ProviderModule providerModule, Provider<SettingsProvider> provider, Provider<Locale> provider2, Provider<ZendeskLocaleConverter> provider3) {
        return new ProviderModule_ProvideSdkSettingsProviderFactory(providerModule, provider, provider2, provider3);
    }

    public static SupportSettingsProvider provideSdkSettingsProvider(ProviderModule providerModule, SettingsProvider settingsProvider, Locale locale, ZendeskLocaleConverter zendeskLocaleConverter) {
        SupportSettingsProvider provideSdkSettingsProvider = providerModule.provideSdkSettingsProvider(settingsProvider, locale, zendeskLocaleConverter);
        C10867c.m10383a(provideSdkSettingsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideSdkSettingsProvider;
    }

    @Override // javax.inject.Provider
    public SupportSettingsProvider get() {
        return provideSdkSettingsProvider(this.module, this.sdkSettingsProvider.get(), this.localeProvider.get(), this.helpCenterLocaleConverterProvider.get());
    }
}
