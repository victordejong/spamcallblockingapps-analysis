package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.RestServiceProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideSupportModuleFactory.class */
public final class ProviderModule_ProvideSupportModuleFactory implements AbstractC10866b<SupportModule> {
    public final Provider<ArticleVoteStorage> articleVoteStorageProvider;
    public final Provider<SupportBlipsProvider> blipsProvider;
    public final Provider<HelpCenterProvider> helpCenterProvider;
    public final ProviderModule module;
    public final Provider<RequestProvider> requestProvider;
    public final Provider<RestServiceProvider> restServiceProvider;
    public final Provider<SupportSettingsProvider> settingsProvider;
    public final Provider<UploadProvider> uploadProvider;
    public final Provider<ZendeskTracker> zendeskTrackerProvider;

    public ProviderModule_ProvideSupportModuleFactory(ProviderModule providerModule, Provider<RequestProvider> provider, Provider<UploadProvider> provider2, Provider<HelpCenterProvider> provider3, Provider<SupportSettingsProvider> provider4, Provider<RestServiceProvider> provider5, Provider<SupportBlipsProvider> provider6, Provider<ZendeskTracker> provider7, Provider<ArticleVoteStorage> provider8) {
        this.module = providerModule;
        this.requestProvider = provider;
        this.uploadProvider = provider2;
        this.helpCenterProvider = provider3;
        this.settingsProvider = provider4;
        this.restServiceProvider = provider5;
        this.blipsProvider = provider6;
        this.zendeskTrackerProvider = provider7;
        this.articleVoteStorageProvider = provider8;
    }

    public static ProviderModule_ProvideSupportModuleFactory create(ProviderModule providerModule, Provider<RequestProvider> provider, Provider<UploadProvider> provider2, Provider<HelpCenterProvider> provider3, Provider<SupportSettingsProvider> provider4, Provider<RestServiceProvider> provider5, Provider<SupportBlipsProvider> provider6, Provider<ZendeskTracker> provider7, Provider<ArticleVoteStorage> provider8) {
        return new ProviderModule_ProvideSupportModuleFactory(providerModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public static SupportModule provideSupportModule(ProviderModule providerModule, RequestProvider requestProvider, UploadProvider uploadProvider, HelpCenterProvider helpCenterProvider, SupportSettingsProvider supportSettingsProvider, RestServiceProvider restServiceProvider, SupportBlipsProvider supportBlipsProvider, Object obj, ArticleVoteStorage articleVoteStorage) {
        SupportModule provideSupportModule = providerModule.provideSupportModule(requestProvider, uploadProvider, helpCenterProvider, supportSettingsProvider, restServiceProvider, supportBlipsProvider, (ZendeskTracker) obj, articleVoteStorage);
        C10867c.m10383a(provideSupportModule, "Cannot return null from a non-@Nullable @Provides method");
        return provideSupportModule;
    }

    @Override // javax.inject.Provider
    public SupportModule get() {
        return provideSupportModule(this.module, this.requestProvider.get(), this.uploadProvider.get(), this.helpCenterProvider.get(), this.settingsProvider.get(), this.restServiceProvider.get(), this.blipsProvider.get(), this.zendeskTrackerProvider.get(), this.articleVoteStorageProvider.get());
    }
}
