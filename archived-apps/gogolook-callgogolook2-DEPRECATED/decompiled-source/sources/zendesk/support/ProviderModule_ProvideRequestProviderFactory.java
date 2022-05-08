package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.AuthenticationProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideRequestProviderFactory.class */
public final class ProviderModule_ProvideRequestProviderFactory implements AbstractC10866b<RequestProvider> {
    public final Provider<AuthenticationProvider> authenticationProvider;
    public final Provider<SupportBlipsProvider> blipsProvider;
    public final ProviderModule module;
    public final Provider<ZendeskRequestService> requestServiceProvider;
    public final Provider<RequestSessionCache> requestSessionCacheProvider;
    public final Provider<RequestStorage> requestStorageProvider;
    public final Provider<SupportSettingsProvider> settingsProvider;
    public final Provider<SupportSdkMetadata> supportSdkMetadataProvider;
    public final Provider<ZendeskTracker> zendeskTrackerProvider;

    public ProviderModule_ProvideRequestProviderFactory(ProviderModule providerModule, Provider<SupportSettingsProvider> provider, Provider<AuthenticationProvider> provider2, Provider<ZendeskRequestService> provider3, Provider<RequestStorage> provider4, Provider<RequestSessionCache> provider5, Provider<ZendeskTracker> provider6, Provider<SupportSdkMetadata> provider7, Provider<SupportBlipsProvider> provider8) {
        this.module = providerModule;
        this.settingsProvider = provider;
        this.authenticationProvider = provider2;
        this.requestServiceProvider = provider3;
        this.requestStorageProvider = provider4;
        this.requestSessionCacheProvider = provider5;
        this.zendeskTrackerProvider = provider6;
        this.supportSdkMetadataProvider = provider7;
        this.blipsProvider = provider8;
    }

    public static ProviderModule_ProvideRequestProviderFactory create(ProviderModule providerModule, Provider<SupportSettingsProvider> provider, Provider<AuthenticationProvider> provider2, Provider<ZendeskRequestService> provider3, Provider<RequestStorage> provider4, Provider<RequestSessionCache> provider5, Provider<ZendeskTracker> provider6, Provider<SupportSdkMetadata> provider7, Provider<SupportBlipsProvider> provider8) {
        return new ProviderModule_ProvideRequestProviderFactory(providerModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public static RequestProvider provideRequestProvider(ProviderModule providerModule, SupportSettingsProvider supportSettingsProvider, AuthenticationProvider authenticationProvider, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, SupportBlipsProvider supportBlipsProvider) {
        RequestProvider provideRequestProvider = providerModule.provideRequestProvider(supportSettingsProvider, authenticationProvider, (ZendeskRequestService) obj, (RequestStorage) obj2, (RequestSessionCache) obj3, (ZendeskTracker) obj4, (SupportSdkMetadata) obj5, supportBlipsProvider);
        C10867c.m10383a(provideRequestProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideRequestProvider;
    }

    @Override // javax.inject.Provider
    public RequestProvider get() {
        return provideRequestProvider(this.module, this.settingsProvider.get(), this.authenticationProvider.get(), this.requestServiceProvider.get(), this.requestStorageProvider.get(), this.requestSessionCacheProvider.get(), this.zendeskTrackerProvider.get(), this.supportSdkMetadataProvider.get(), this.blipsProvider.get());
    }
}
