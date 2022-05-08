package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderFactory.class */
public final class ZendeskProvidersModule_ProvideSdkSettingsProviderFactory implements Factory<SettingsProvider> {
    private final Provider<ZendeskSettingsProvider> sdkSettingsProvider;

    public ZendeskProvidersModule_ProvideSdkSettingsProviderFactory(Provider<ZendeskSettingsProvider> provider) {
        this.sdkSettingsProvider = provider;
    }

    public static Factory<SettingsProvider> create(Provider<ZendeskSettingsProvider> provider) {
        return new ZendeskProvidersModule_ProvideSdkSettingsProviderFactory(provider);
    }

    public static SettingsProvider proxyProvideSdkSettingsProvider(Object obj) {
        return ZendeskProvidersModule.provideSdkSettingsProvider((ZendeskSettingsProvider) obj);
    }

    @Override // javax.inject.Provider
    public SettingsProvider get() {
        return (SettingsProvider) Preconditions.checkNotNull(ZendeskProvidersModule.provideSdkSettingsProvider(this.sdkSettingsProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
