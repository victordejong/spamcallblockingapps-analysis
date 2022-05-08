package zendesk.support;

import android.content.Context;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import dagger.internal.SingleCheck;
import java.util.Locale;
import javax.inject.Provider;
import zendesk.core.ActionHandlerRegistry;
import zendesk.core.AuthenticationProvider;
import zendesk.core.BlipsProvider;
import zendesk.core.CoreModule;
import zendesk.core.CoreModule_ActionHandlerRegistryFactory;
import zendesk.core.CoreModule_GetApplicationContextFactory;
import zendesk.core.CoreModule_GetAuthenticationProviderFactory;
import zendesk.core.CoreModule_GetBlipsProviderFactory;
import zendesk.core.CoreModule_GetMemoryCacheFactory;
import zendesk.core.CoreModule_GetRestServiceProviderFactory;
import zendesk.core.CoreModule_GetSessionStorageFactory;
import zendesk.core.CoreModule_GetSettingsProviderFactory;
import zendesk.core.MemoryCache;
import zendesk.core.RestServiceProvider;
import zendesk.core.SessionStorage;
import zendesk.core.SettingsProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/DaggerSupportSdkProvidersComponent.class */
public final class DaggerSupportSdkProvidersComponent implements SupportSdkProvidersComponent {
    private CoreModule coreModule;
    private Provider<Context> getApplicationContextProvider;
    private Provider<AuthenticationProvider> getAuthenticationProvider;
    private Provider<BlipsProvider> getBlipsProvider;
    private Provider<MemoryCache> getMemoryCacheProvider;
    private Provider<RestServiceProvider> getRestServiceProvider;
    private Provider<SessionStorage> getSessionStorageProvider;
    private Provider<SettingsProvider> getSettingsProvider;
    private Provider<ArticleVoteStorage> provideArticleVoteStorageProvider;
    private Provider<HelpCenterCachingNetworkConfig> provideCustomNetworkConfigProvider;
    private Provider<HelpCenterCachingInterceptor> provideHelpCenterCachingInterceptorProvider;
    private Provider<HelpCenterLocaleConverter> provideHelpCenterLocaleConverterProvider;
    private Provider<HelpCenterProvider> provideHelpCenterProvider;
    private Provider<HelpCenterSessionCache> provideHelpCenterSessionCacheProvider;
    private Provider<Locale> provideLocaleProvider;
    private Provider<SupportSdkMetadata> provideMetadataProvider;
    private Provider<ProviderStore> provideProviderStoreProvider;
    private Provider<RequestMigrator> provideRequestMigratorProvider;
    private Provider<RequestProvider> provideRequestProvider;
    private Provider<RequestSessionCache> provideRequestSessionCacheProvider;
    private Provider<RequestStorage> provideRequestStorageProvider;
    private Provider<SupportSettingsProvider> provideSdkSettingsProvider;
    private Provider<SupportBlipsProvider> provideSupportBlipsProvider;
    private Provider<SupportModule> provideSupportModuleProvider;
    private Provider<UploadProvider> provideUploadProvider;
    private Provider<ZendeskHelpCenterService> provideZendeskHelpCenterServiceProvider;
    private Provider<ZendeskRequestService> provideZendeskRequestServiceProvider;
    private Provider<ZendeskUploadService> provideZendeskUploadServiceProvider;
    private Provider<HelpCenterService> providesHelpCenterServiceProvider;
    private Provider<RequestService> providesRequestServiceProvider;
    private Provider<UploadService> providesUploadServiceProvider;
    private Provider<ZendeskTracker> providesZendeskTrackerProvider;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/DaggerSupportSdkProvidersComponent$Builder.class */
    public static final class Builder {
        private CoreModule coreModule;
        private ProviderModule providerModule;
        private StorageModule storageModule;
        private SupportApplicationModule supportApplicationModule;

        private Builder() {
        }

        public SupportSdkProvidersComponent build() {
            if (this.coreModule == null) {
                throw new IllegalStateException(CoreModule.class.getCanonicalName() + " must be set");
            } else if (this.supportApplicationModule == null) {
                throw new IllegalStateException(SupportApplicationModule.class.getCanonicalName() + " must be set");
            } else {
                if (this.providerModule == null) {
                    this.providerModule = new ProviderModule();
                }
                if (this.storageModule == null) {
                    this.storageModule = new StorageModule();
                }
                return new DaggerSupportSdkProvidersComponent(this);
            }
        }

        public Builder coreModule(CoreModule coreModule) {
            this.coreModule = (CoreModule) Preconditions.checkNotNull(coreModule);
            return this;
        }

        public Builder providerModule(ProviderModule providerModule) {
            this.providerModule = (ProviderModule) Preconditions.checkNotNull(providerModule);
            return this;
        }

        @Deprecated
        public Builder serviceModule(ServiceModule serviceModule) {
            Preconditions.checkNotNull(serviceModule);
            return this;
        }

        public Builder storageModule(StorageModule storageModule) {
            this.storageModule = (StorageModule) Preconditions.checkNotNull(storageModule);
            return this;
        }

        public Builder supportApplicationModule(SupportApplicationModule supportApplicationModule) {
            this.supportApplicationModule = (SupportApplicationModule) Preconditions.checkNotNull(supportApplicationModule);
            return this;
        }
    }

    private DaggerSupportSdkProvidersComponent(Builder builder) {
        initialize(builder);
    }

    public static Builder builder() {
        return new Builder();
    }

    private void initialize(Builder builder) {
        this.getSettingsProvider = CoreModule_GetSettingsProviderFactory.create(builder.coreModule);
        this.provideLocaleProvider = DoubleCheck.provider(SupportApplicationModule_ProvideLocaleFactory.create(builder.supportApplicationModule));
        this.provideHelpCenterLocaleConverterProvider = DoubleCheck.provider(ProviderModule_ProvideHelpCenterLocaleConverterFactory.create(builder.providerModule));
        this.provideSdkSettingsProvider = DoubleCheck.provider(ProviderModule_ProvideSdkSettingsProviderFactory.create(builder.providerModule, this.getSettingsProvider, this.provideLocaleProvider, this.provideHelpCenterLocaleConverterProvider));
        this.getBlipsProvider = CoreModule_GetBlipsProviderFactory.create(builder.coreModule);
        this.provideSupportBlipsProvider = DoubleCheck.provider(ProviderModule_ProvideSupportBlipsProviderFactory.create(builder.providerModule, this.getBlipsProvider, this.provideLocaleProvider));
        this.getRestServiceProvider = CoreModule_GetRestServiceProviderFactory.create(builder.coreModule);
        this.provideHelpCenterCachingInterceptorProvider = SingleCheck.provider(ServiceModule_ProvideHelpCenterCachingInterceptorFactory.create());
        this.provideCustomNetworkConfigProvider = SingleCheck.provider(ServiceModule_ProvideCustomNetworkConfigFactory.create(this.provideHelpCenterCachingInterceptorProvider));
        this.providesHelpCenterServiceProvider = DoubleCheck.provider(ServiceModule_ProvidesHelpCenterServiceFactory.create(this.getRestServiceProvider, this.provideCustomNetworkConfigProvider));
        this.provideZendeskHelpCenterServiceProvider = DoubleCheck.provider(ServiceModule_ProvideZendeskHelpCenterServiceFactory.create(this.providesHelpCenterServiceProvider, this.provideHelpCenterLocaleConverterProvider));
        this.provideHelpCenterSessionCacheProvider = DoubleCheck.provider(StorageModule_ProvideHelpCenterSessionCacheFactory.create(builder.storageModule));
        this.providesZendeskTrackerProvider = DoubleCheck.provider(SupportApplicationModule_ProvidesZendeskTrackerFactory.create(builder.supportApplicationModule));
        this.provideHelpCenterProvider = DoubleCheck.provider(ProviderModule_ProvideHelpCenterProviderFactory.create(builder.providerModule, this.provideSdkSettingsProvider, this.provideSupportBlipsProvider, this.provideZendeskHelpCenterServiceProvider, this.provideHelpCenterSessionCacheProvider, this.providesZendeskTrackerProvider));
        this.getAuthenticationProvider = CoreModule_GetAuthenticationProviderFactory.create(builder.coreModule);
        this.providesRequestServiceProvider = DoubleCheck.provider(ServiceModule_ProvidesRequestServiceFactory.create(this.getRestServiceProvider));
        this.provideZendeskRequestServiceProvider = DoubleCheck.provider(ServiceModule_ProvideZendeskRequestServiceFactory.create(this.providesRequestServiceProvider));
        this.getSessionStorageProvider = CoreModule_GetSessionStorageFactory.create(builder.coreModule);
        this.getApplicationContextProvider = CoreModule_GetApplicationContextFactory.create(builder.coreModule);
        this.provideRequestMigratorProvider = DoubleCheck.provider(StorageModule_ProvideRequestMigratorFactory.create(builder.storageModule, this.getApplicationContextProvider));
        this.getMemoryCacheProvider = CoreModule_GetMemoryCacheFactory.create(builder.coreModule);
        this.provideRequestStorageProvider = DoubleCheck.provider(StorageModule_ProvideRequestStorageFactory.create(builder.storageModule, this.getSessionStorageProvider, this.provideRequestMigratorProvider, this.getMemoryCacheProvider));
        this.provideRequestSessionCacheProvider = DoubleCheck.provider(StorageModule_ProvideRequestSessionCacheFactory.create(builder.storageModule));
        this.provideMetadataProvider = DoubleCheck.provider(SupportApplicationModule_ProvideMetadataFactory.create(builder.supportApplicationModule, this.getApplicationContextProvider));
        this.provideRequestProvider = DoubleCheck.provider(ProviderModule_ProvideRequestProviderFactory.create(builder.providerModule, this.provideSdkSettingsProvider, this.getAuthenticationProvider, this.provideZendeskRequestServiceProvider, this.provideRequestStorageProvider, this.provideRequestSessionCacheProvider, this.providesZendeskTrackerProvider, this.provideMetadataProvider, this.provideSupportBlipsProvider));
        this.providesUploadServiceProvider = DoubleCheck.provider(ServiceModule_ProvidesUploadServiceFactory.create(this.getRestServiceProvider));
        this.provideZendeskUploadServiceProvider = DoubleCheck.provider(ServiceModule_ProvideZendeskUploadServiceFactory.create(this.providesUploadServiceProvider));
        this.provideUploadProvider = DoubleCheck.provider(ProviderModule_ProvideUploadProviderFactory.create(builder.providerModule, this.provideZendeskUploadServiceProvider));
        this.provideProviderStoreProvider = DoubleCheck.provider(ProviderModule_ProvideProviderStoreFactory.create(builder.providerModule, this.provideHelpCenterProvider, this.provideRequestProvider, this.provideUploadProvider));
        this.provideArticleVoteStorageProvider = DoubleCheck.provider(StorageModule_ProvideArticleVoteStorageFactory.create(builder.storageModule, this.getSessionStorageProvider));
        this.provideSupportModuleProvider = DoubleCheck.provider(ProviderModule_ProvideSupportModuleFactory.create(builder.providerModule, this.provideRequestProvider, this.provideUploadProvider, this.provideHelpCenterProvider, this.provideSdkSettingsProvider, this.getRestServiceProvider, this.provideSupportBlipsProvider, this.providesZendeskTrackerProvider, this.provideArticleVoteStorageProvider));
        this.coreModule = builder.coreModule;
    }

    private Support injectSupport(Support support) {
        Support_MembersInjector.injectProviderStore(support, this.provideProviderStoreProvider.get());
        Support_MembersInjector.injectSupportModule(support, this.provideSupportModuleProvider.get());
        Support_MembersInjector.injectRequestMigrator(support, this.provideRequestMigratorProvider.get());
        Support_MembersInjector.injectBlipsProvider(support, this.provideSupportBlipsProvider.get());
        Support_MembersInjector.injectActionHandlerRegistry(support, (ActionHandlerRegistry) Preconditions.checkNotNull(CoreModule_ActionHandlerRegistryFactory.proxyActionHandlerRegistry(this.coreModule), "Cannot return null from a non-@Nullable @Provides method"));
        Support_MembersInjector.injectRequestProvider(support, this.provideRequestProvider.get());
        Support_MembersInjector.injectAuthenticationProvider(support, (AuthenticationProvider) Preconditions.checkNotNull(CoreModule_GetAuthenticationProviderFactory.proxyGetAuthenticationProvider(this.coreModule), "Cannot return null from a non-@Nullable @Provides method"));
        return support;
    }

    @Override // zendesk.support.SupportSdkProvidersComponent
    public Support inject(Support support) {
        return injectSupport(support);
    }
}
