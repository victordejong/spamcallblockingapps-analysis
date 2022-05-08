package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory.class */
public final class ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory implements Factory<SdkSettingsProviderInternal> {
    private final Provider<ZendeskSettingsProvider> sdkSettingsProvider;

    public ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory(Provider<ZendeskSettingsProvider> provider) {
        this.sdkSettingsProvider = provider;
    }

    public static Factory<SdkSettingsProviderInternal> create(Provider<ZendeskSettingsProvider> provider) {
        return new ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory(provider);
    }

    public static SdkSettingsProviderInternal proxyProvideSdkSettingsProviderInternal(Object obj) {
        return ZendeskProvidersModule.provideSdkSettingsProviderInternal((ZendeskSettingsProvider) obj);
    }

    @Override // javax.inject.Provider
    public SdkSettingsProviderInternal get() {
        return (SdkSettingsProviderInternal) Preconditions.checkNotNull(ZendeskProvidersModule.provideSdkSettingsProviderInternal(this.sdkSettingsProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
