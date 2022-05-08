package zendesk.core;

import android.content.Context;
import android.net.ConnectivityManager;
import com.google.gson.Gson;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import javax.inject.Provider;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import p456i.p457c.C10865a;
import p456i.p457c.C10867c;
import p456i.p457c.C10868d;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/DaggerZendeskApplicationComponent.class */
public final class DaggerZendeskApplicationComponent implements ZendeskApplicationComponent {
    public Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    public Provider<AcceptLanguageHeaderInterceptor> provideAcceptLanguageHeaderInterceptorProvider;
    public Provider<ZendeskAccessInterceptor> provideAccessInterceptorProvider;
    public Provider<AccessProvider> provideAccessProvider;
    public Provider<AccessService> provideAccessServiceProvider;
    public Provider<BaseStorage> provideAdditionalSdkBaseStorageProvider;
    public Provider<ApplicationConfiguration> provideApplicationConfigurationProvider;
    public Provider<Context> provideApplicationContextProvider;
    public Provider<ZendeskAuthHeaderInterceptor> provideAuthHeaderInterceptorProvider;
    public Provider<AuthenticationProvider> provideAuthProvider;
    public Provider<Serializer> provideBase64SerializerProvider;
    public Provider<OkHttpClient> provideBaseOkHttpClientProvider;
    public Provider<BlipsService> provideBlipsServiceProvider;
    public Provider<Cache> provideCacheProvider;
    public Provider<CachingInterceptor> provideCachingInterceptorProvider;
    public Provider<OkHttpClient> provideCoreOkHttpClientProvider;
    public Provider<C15300s> provideCoreRetrofitProvider;
    public Provider<CoreModule> provideCoreSdkModuleProvider;
    public Provider<CoreSettingsStorage> provideCoreSettingsStorageProvider;
    public Provider<DeviceInfo> provideDeviceInfoProvider;
    public Provider<ScheduledExecutorService> provideExecutorProvider;
    public Provider<ExecutorService> provideExecutorServiceProvider;
    public Provider<Gson> provideGsonProvider;
    public Provider<HttpLoggingInterceptor> provideHttpLoggingInterceptorProvider;
    public Provider<BaseStorage> provideIdentityBaseStorageProvider;
    public Provider<IdentityManager> provideIdentityManagerProvider;
    public Provider<IdentityStorage> provideIdentityStorageProvider;
    public Provider<SharedPreferencesStorage> provideLegacyIdentityBaseStorageProvider;
    public Provider<LegacyIdentityMigrator> provideLegacyIdentityStorageProvider;
    public Provider<SharedPreferencesStorage> provideLegacyPushBaseStorageProvider;
    public Provider<OkHttpClient> provideMediaOkHttpClientProvider;
    public Provider<MemoryCache> provideMemoryCacheProvider;
    public Provider<OkHttpClient> provideOkHttpClientProvider;
    public Provider<ProviderStore> provideProviderStoreProvider;
    public Provider<PushDeviceIdStorage> providePushDeviceIdStorageProvider;
    public Provider<ZendeskPushInterceptor> providePushInterceptorProvider;
    public Provider<C15300s> providePushProviderRetrofitProvider;
    public Provider<PushRegistrationProvider> providePushRegistrationProvider;
    public Provider<PushRegistrationProviderInternal> providePushRegistrationProviderInternalProvider;
    public Provider<PushRegistrationService> providePushRegistrationServiceProvider;
    public Provider<RestServiceProvider> provideRestServiceProvider;
    public Provider<C15300s> provideRetrofitProvider;
    public Provider<BaseStorage> provideSdkBaseStorageProvider;
    public Provider<SettingsProvider> provideSdkSettingsProvider;
    public Provider<SdkSettingsProviderInternal> provideSdkSettingsProviderInternalProvider;
    public Provider<SdkSettingsService> provideSdkSettingsServiceProvider;
    public Provider<Storage> provideSdkStorageProvider;
    public Provider<Serializer> provideSerializerProvider;
    public Provider<SessionStorage> provideSessionStorageProvider;
    public Provider<BaseStorage> provideSettingsBaseStorageProvider;
    public Provider<ZendeskSettingsInterceptor> provideSettingsInterceptorProvider;
    public Provider<SettingsStorage> provideSettingsStorageProvider;
    public Provider<UserProvider> provideUserProvider;
    public Provider<UserService> provideUserServiceProvider;
    public Provider<ZendeskOauthIdHeaderInterceptor> provideZendeskBasicHeadersInterceptorProvider;
    public Provider<ZendeskLocaleConverter> provideZendeskLocaleConverterProvider;
    public Provider<ZendeskShadow> provideZendeskProvider;
    public Provider<ZendeskSettingsProvider> provideZendeskSdkSettingsProvider;
    public Provider<ZendeskUnauthorizedInterceptor> provideZendeskUnauthorizedInterceptorProvider;
    public Provider<BlipsCoreProvider> providerBlipsCoreProvider;
    public Provider<BlipsProvider> providerBlipsProvider;
    public Provider<ConnectivityManager> providerConnectivityManagerProvider;
    public Provider<NetworkInfoProvider> providerNetworkInfoProvider;
    public Provider<ZendeskBlipsProvider> providerZendeskBlipsProvider;
    public Provider<AcceptHeaderInterceptor> providesAcceptHeaderInterceptorProvider;
    public Provider<File> providesBelvedereDirProvider;
    public Provider<File> providesCacheDirProvider;
    public Provider<File> providesDataDirProvider;
    public Provider<BaseStorage> providesDiskLruStorageProvider;
    public Provider<UserAgentAndClientHeadersInterceptor> providesUserAgentHeaderInterceptorProvider;

    /* loaded from: classes3-dex2jar.jar:zendesk/core/DaggerZendeskApplicationComponent$Builder.class */
    public static final class Builder {
        public ZendeskApplicationModule zendeskApplicationModule;
        public ZendeskNetworkModule zendeskNetworkModule;

        public Builder() {
        }

        public ZendeskApplicationComponent build() {
            C10867c.m10384a(this.zendeskApplicationModule, ZendeskApplicationModule.class);
            if (this.zendeskNetworkModule == null) {
                this.zendeskNetworkModule = new ZendeskNetworkModule();
            }
            return new DaggerZendeskApplicationComponent(this.zendeskApplicationModule, this.zendeskNetworkModule);
        }

        public Builder zendeskApplicationModule(ZendeskApplicationModule zendeskApplicationModule) {
            C10867c.m10385a(zendeskApplicationModule);
            this.zendeskApplicationModule = zendeskApplicationModule;
            return this;
        }
    }

    public DaggerZendeskApplicationComponent(ZendeskApplicationModule zendeskApplicationModule, ZendeskNetworkModule zendeskNetworkModule) {
        initialize(zendeskApplicationModule, zendeskNetworkModule);
    }

    public static Builder builder() {
        return new Builder();
    }

    public final void initialize(ZendeskApplicationModule zendeskApplicationModule, ZendeskNetworkModule zendeskNetworkModule) {
        this.provideApplicationContextProvider = C10865a.m10386a(ZendeskApplicationModule_ProvideApplicationContextFactory.create(zendeskApplicationModule));
        this.provideGsonProvider = C10868d.m10382a(ZendeskApplicationModule_ProvideGsonFactory.create());
        this.provideSerializerProvider = C10865a.m10386a(ZendeskStorageModule_ProvideSerializerFactory.create(this.provideGsonProvider));
        this.provideSettingsBaseStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideSettingsBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideSettingsStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideSettingsStorageFactory.create(this.provideSettingsBaseStorageProvider));
        this.provideIdentityBaseStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideIdentityBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideIdentityStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideIdentityStorageFactory.create(this.provideIdentityBaseStorageProvider));
        this.provideAdditionalSdkBaseStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.providesCacheDirProvider = C10865a.m10386a(ZendeskStorageModule_ProvidesCacheDirFactory.create(this.provideApplicationContextProvider));
        this.providesDiskLruStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvidesDiskLruStorageFactory.create(this.providesCacheDirProvider, this.provideSerializerProvider));
        this.provideCacheProvider = C10865a.m10386a(ZendeskStorageModule_ProvideCacheFactory.create(this.providesCacheDirProvider));
        this.providesDataDirProvider = C10865a.m10386a(ZendeskStorageModule_ProvidesDataDirFactory.create(this.provideApplicationContextProvider));
        this.providesBelvedereDirProvider = C10865a.m10386a(ZendeskStorageModule_ProvidesBelvedereDirFactory.create(this.provideApplicationContextProvider));
        this.provideSessionStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideSessionStorageFactory.create(this.provideIdentityStorageProvider, this.provideAdditionalSdkBaseStorageProvider, this.providesDiskLruStorageProvider, this.provideCacheProvider, this.providesCacheDirProvider, this.providesDataDirProvider, this.providesBelvedereDirProvider));
        this.provideSdkBaseStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideSdkBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideMemoryCacheProvider = C10865a.m10386a(ZendeskStorageModule_ProvideMemoryCacheFactory.create());
        this.provideSdkStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideSdkStorageFactory.create(this.provideSettingsStorageProvider, this.provideSessionStorageProvider, this.provideSdkBaseStorageProvider, this.provideMemoryCacheProvider));
        this.provideLegacyIdentityBaseStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideLegacyPushBaseStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideIdentityManagerProvider = C10865a.m10386a(ZendeskStorageModule_ProvideIdentityManagerFactory.create(this.provideIdentityStorageProvider));
        this.providePushDeviceIdStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvidePushDeviceIdStorageFactory.create(this.provideAdditionalSdkBaseStorageProvider));
        this.provideLegacyIdentityStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideLegacyIdentityStorageFactory.create(this.provideLegacyIdentityBaseStorageProvider, this.provideLegacyPushBaseStorageProvider, this.provideIdentityStorageProvider, this.provideIdentityManagerProvider, this.providePushDeviceIdStorageProvider));
        this.provideApplicationConfigurationProvider = C10865a.m10386a(ZendeskApplicationModule_ProvideApplicationConfigurationFactory.create(zendeskApplicationModule));
        this.provideHttpLoggingInterceptorProvider = C10868d.m10382a(ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory.create());
        this.provideZendeskBasicHeadersInterceptorProvider = C10868d.m10382a(C15456x2dd20439.create(zendeskNetworkModule, this.provideApplicationConfigurationProvider));
        this.providesUserAgentHeaderInterceptorProvider = C10868d.m10382a(ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory.create(zendeskNetworkModule));
        this.provideExecutorProvider = C10865a.m10386a(ZendeskApplicationModule_ProvideExecutorFactory.create());
        this.provideExecutorServiceProvider = C10865a.m10386a(ZendeskApplicationModule_ProvideExecutorServiceFactory.create(this.provideExecutorProvider));
        this.provideBaseOkHttpClientProvider = C10865a.m10386a(ZendeskNetworkModule_ProvideBaseOkHttpClientFactory.create(zendeskNetworkModule, this.provideHttpLoggingInterceptorProvider, this.provideZendeskBasicHeadersInterceptorProvider, this.providesUserAgentHeaderInterceptorProvider, this.provideExecutorServiceProvider));
        this.provideAcceptLanguageHeaderInterceptorProvider = C10868d.m10382a(C15455x23150492.create(this.provideApplicationContextProvider));
        this.providesAcceptHeaderInterceptorProvider = C10868d.m10382a(ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory.create());
        this.provideCoreOkHttpClientProvider = C10865a.m10386a(ZendeskNetworkModule_ProvideCoreOkHttpClientFactory.create(zendeskNetworkModule, this.provideBaseOkHttpClientProvider, this.provideAcceptLanguageHeaderInterceptorProvider, this.providesAcceptHeaderInterceptorProvider));
        this.provideCoreRetrofitProvider = C10865a.m10386a(ZendeskNetworkModule_ProvideCoreRetrofitFactory.create(this.provideApplicationConfigurationProvider, this.provideGsonProvider, this.provideCoreOkHttpClientProvider));
        this.provideBlipsServiceProvider = C10865a.m10386a(ZendeskProvidersModule_ProvideBlipsServiceFactory.create(this.provideCoreRetrofitProvider));
        this.provideDeviceInfoProvider = C10865a.m10386a(ZendeskApplicationModule_ProvideDeviceInfoFactory.create(this.provideApplicationContextProvider));
        this.provideBase64SerializerProvider = C10868d.m10382a(ZendeskApplicationModule_ProvideBase64SerializerFactory.create(zendeskApplicationModule, this.provideSerializerProvider));
        this.provideCoreSettingsStorageProvider = C10865a.m10386a(ZendeskStorageModule_ProvideCoreSettingsStorageFactory.create(this.provideSettingsStorageProvider));
        this.providerZendeskBlipsProvider = C10865a.m10386a(ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory.create(this.provideBlipsServiceProvider, this.provideDeviceInfoProvider, this.provideBase64SerializerProvider, this.provideIdentityManagerProvider, this.provideApplicationConfigurationProvider, this.provideCoreSettingsStorageProvider, this.provideExecutorServiceProvider));
        this.providerBlipsCoreProvider = C10865a.m10386a(ZendeskProvidersModule_ProviderBlipsCoreProviderFactory.create(this.providerZendeskBlipsProvider));
        this.provideAuthHeaderInterceptorProvider = C10868d.m10382a(ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory.create(this.provideIdentityManagerProvider));
        this.providePushProviderRetrofitProvider = C10865a.m10386a(ZendeskNetworkModule_ProvidePushProviderRetrofitFactory.create(this.provideApplicationConfigurationProvider, this.provideGsonProvider, this.provideCoreOkHttpClientProvider, this.provideAuthHeaderInterceptorProvider));
        this.providePushRegistrationServiceProvider = C10868d.m10382a(ZendeskProvidersModule_ProvidePushRegistrationServiceFactory.create(this.providePushProviderRetrofitProvider));
        this.provideSdkSettingsServiceProvider = C10868d.m10382a(ZendeskProvidersModule_ProvideSdkSettingsServiceFactory.create(this.provideCoreRetrofitProvider));
        this.actionHandlerRegistryProvider = C10865a.m10386a(ZendeskProvidersModule_ActionHandlerRegistryFactory.create());
        this.provideZendeskLocaleConverterProvider = C10865a.m10386a(ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory.create(zendeskApplicationModule));
        this.provideZendeskSdkSettingsProvider = C10865a.m10386a(ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory.create(this.provideSdkSettingsServiceProvider, this.provideSettingsStorageProvider, this.provideCoreSettingsStorageProvider, this.actionHandlerRegistryProvider, this.provideSerializerProvider, this.provideZendeskLocaleConverterProvider, this.provideApplicationConfigurationProvider, this.provideApplicationContextProvider));
        this.provideSdkSettingsProvider = C10865a.m10386a(ZendeskProvidersModule_ProvideSdkSettingsProviderFactory.create(this.provideZendeskSdkSettingsProvider));
        this.providePushRegistrationProvider = C10865a.m10386a(ZendeskProvidersModule_ProvidePushRegistrationProviderFactory.create(this.providePushRegistrationServiceProvider, this.provideIdentityManagerProvider, this.provideSdkSettingsProvider, this.providerBlipsCoreProvider, this.providePushDeviceIdStorageProvider, this.provideApplicationContextProvider));
        this.provideAccessServiceProvider = C10868d.m10382a(ZendeskProvidersModule_ProvideAccessServiceFactory.create(this.provideCoreRetrofitProvider));
        this.provideAccessProvider = C10865a.m10386a(ZendeskProvidersModule_ProvideAccessProviderFactory.create(this.provideIdentityManagerProvider, this.provideAccessServiceProvider));
        this.provideAccessInterceptorProvider = C10868d.m10382a(ZendeskNetworkModule_ProvideAccessInterceptorFactory.create(this.provideIdentityManagerProvider, this.provideAccessProvider, this.provideSdkStorageProvider, this.provideCoreSettingsStorageProvider));
        this.provideZendeskUnauthorizedInterceptorProvider = C10868d.m10382a(C15457x5893b2b5.create(this.provideSessionStorageProvider));
        this.provideSdkSettingsProviderInternalProvider = C10865a.m10386a(ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory.create(this.provideZendeskSdkSettingsProvider));
        this.provideSettingsInterceptorProvider = C10868d.m10382a(ZendeskNetworkModule_ProvideSettingsInterceptorFactory.create(this.provideSdkSettingsProviderInternalProvider, this.provideSettingsStorageProvider));
        this.providePushRegistrationProviderInternalProvider = C10865a.m10386a(C15458xb2419e95.create(this.providePushRegistrationProvider));
        this.providePushInterceptorProvider = C10868d.m10382a(ZendeskNetworkModule_ProvidePushInterceptorFactory.create(this.providePushRegistrationProviderInternalProvider, this.providePushDeviceIdStorageProvider));
        this.provideOkHttpClientProvider = C10865a.m10386a(ZendeskNetworkModule_ProvideOkHttpClientFactory.create(zendeskNetworkModule, this.provideBaseOkHttpClientProvider, this.provideAccessInterceptorProvider, this.provideZendeskUnauthorizedInterceptorProvider, this.provideAuthHeaderInterceptorProvider, this.provideSettingsInterceptorProvider, this.providesAcceptHeaderInterceptorProvider, this.providePushInterceptorProvider, this.provideCacheProvider));
        this.provideRetrofitProvider = C10865a.m10386a(ZendeskNetworkModule_ProvideRetrofitFactory.create(this.provideApplicationConfigurationProvider, this.provideGsonProvider, this.provideOkHttpClientProvider));
        this.provideCachingInterceptorProvider = C10868d.m10382a(ZendeskNetworkModule_ProvideCachingInterceptorFactory.create(this.providesDiskLruStorageProvider));
        this.provideMediaOkHttpClientProvider = C10865a.m10386a(ZendeskNetworkModule_ProvideMediaOkHttpClientFactory.create(zendeskNetworkModule, this.provideBaseOkHttpClientProvider, this.provideAccessInterceptorProvider, this.provideAuthHeaderInterceptorProvider, this.provideSettingsInterceptorProvider, this.provideCachingInterceptorProvider, this.provideZendeskUnauthorizedInterceptorProvider));
        this.provideRestServiceProvider = C10865a.m10386a(ZendeskNetworkModule_ProvideRestServiceProviderFactory.create(zendeskNetworkModule, this.provideRetrofitProvider, this.provideMediaOkHttpClientProvider, this.provideOkHttpClientProvider, this.provideCoreOkHttpClientProvider));
        this.providerBlipsProvider = C10865a.m10386a(ZendeskProvidersModule_ProviderBlipsProviderFactory.create(this.providerZendeskBlipsProvider));
        this.providerConnectivityManagerProvider = C10865a.m10386a(ZendeskProvidersModule_ProviderConnectivityManagerFactory.create(this.provideApplicationContextProvider));
        this.providerNetworkInfoProvider = C10865a.m10386a(ZendeskProvidersModule_ProviderNetworkInfoProviderFactory.create(this.provideApplicationContextProvider, this.providerConnectivityManagerProvider));
        this.provideAuthProvider = C10865a.m10386a(ZendeskStorageModule_ProvideAuthProviderFactory.create(this.provideIdentityManagerProvider));
        this.provideCoreSdkModuleProvider = C10868d.m10382a(ZendeskProvidersModule_ProvideCoreSdkModuleFactory.create(this.provideSdkSettingsProvider, this.provideRestServiceProvider, this.providerBlipsProvider, this.provideSessionStorageProvider, this.providerNetworkInfoProvider, this.provideMemoryCacheProvider, this.actionHandlerRegistryProvider, this.provideExecutorProvider, this.provideApplicationContextProvider, this.provideAuthProvider, this.provideApplicationConfigurationProvider, this.providePushRegistrationProvider));
        this.provideUserServiceProvider = C10868d.m10382a(ZendeskProvidersModule_ProvideUserServiceFactory.create(this.provideRetrofitProvider));
        this.provideUserProvider = C10865a.m10386a(ZendeskProvidersModule_ProvideUserProviderFactory.create(this.provideUserServiceProvider));
        this.provideProviderStoreProvider = C10865a.m10386a(ZendeskProvidersModule_ProvideProviderStoreFactory.create(this.provideUserProvider, this.providePushRegistrationProvider));
        this.provideZendeskProvider = C10865a.m10386a(ZendeskApplicationModule_ProvideZendeskFactory.create(this.provideSdkStorageProvider, this.provideLegacyIdentityStorageProvider, this.provideIdentityManagerProvider, this.providerBlipsCoreProvider, this.providePushRegistrationProvider, this.provideCoreSdkModuleProvider, this.provideProviderStoreProvider));
    }

    @Override // zendesk.core.ZendeskApplicationComponent
    public ZendeskShadow zendeskShadow() {
        return this.provideZendeskProvider.get();
    }
}
