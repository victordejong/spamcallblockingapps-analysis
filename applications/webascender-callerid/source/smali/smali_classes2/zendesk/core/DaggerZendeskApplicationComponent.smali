.class final Lzendesk/core/DaggerZendeskApplicationComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/ZendeskApplicationComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/core/DaggerZendeskApplicationComponent$Builder;
    }
.end annotation


# instance fields
.field private actionHandlerRegistryProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private provideAcceptLanguageHeaderInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AcceptLanguageHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskAccessInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AccessProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AccessService;",
            ">;"
        }
    .end annotation
.end field

.field private provideAdditionalSdkBaseStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideApplicationConfigurationProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private provideApplicationContextProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthHeaderInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskAuthHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideBase64SerializerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideBaseOkHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field

.field private provideBlipsServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BlipsService;",
            ">;"
        }
    .end annotation
.end field

.field private provideCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/d;",
            ">;"
        }
    .end annotation
.end field

.field private provideCachingInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/CachingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoreOkHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoreRetrofitProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoreSdkModuleProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/CoreModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoreSettingsStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/CoreSettingsStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceInfoProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private provideExecutorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideExecutorServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideGsonProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field

.field private provideHttpLoggingInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/l0/a;",
            ">;"
        }
    .end annotation
.end field

.field private provideIdentityBaseStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideIdentityManagerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIdentityStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/IdentityStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideLegacyIdentityBaseStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SharedPreferencesStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideLegacyIdentityStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/LegacyIdentityMigrator;",
            ">;"
        }
    .end annotation
.end field

.field private provideLegacyPushBaseStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SharedPreferencesStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideMediaOkHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field

.field private provideMemoryCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/MemoryCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideOkHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field

.field private provideProviderStoreProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ProviderStore;",
            ">;"
        }
    .end annotation
.end field

.field private providePushDeviceIdStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;"
        }
    .end annotation
.end field

.field private providePushInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskPushInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private providePushProviderRetrofitProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private providePushRegistrationProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providePushRegistrationProviderInternalProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProviderInternal;",
            ">;"
        }
    .end annotation
.end field

.field private providePushRegistrationServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationService;",
            ">;"
        }
    .end annotation
.end field

.field private provideRestServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/RestServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideRetrofitProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkBaseStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkSettingsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkSettingsProviderInternalProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SdkSettingsProviderInternal;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkSettingsServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SdkSettingsService;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/Storage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSerializerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideSessionStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SessionStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsBaseStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskSettingsInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SettingsStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/UserProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/UserService;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskBasicHeadersInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskOauthIdHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskLocaleConverterProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskShadow;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskSdkSettingsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskUnauthorizedInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskUnauthorizedInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private providerBlipsCoreProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BlipsCoreProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providerBlipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providerConnectivityManagerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private providerNetworkInfoProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/NetworkInfoProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providerZendeskBlipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesAcceptHeaderInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AcceptHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private providesBelvedereDirProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private providesCacheDirProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private providesDataDirProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private providesDiskLruStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private providesUserAgentHeaderInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/UserAgentAndClientHeadersInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2}, Lzendesk/core/DaggerZendeskApplicationComponent;->initialize(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;Lzendesk/core/DaggerZendeskApplicationComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/core/DaggerZendeskApplicationComponent;-><init>(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;)V

    return-void
.end method

.method public static builder()Lzendesk/core/DaggerZendeskApplicationComponent$Builder;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/core/DaggerZendeskApplicationComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/core/DaggerZendeskApplicationComponent$Builder;-><init>(Lzendesk/core/DaggerZendeskApplicationComponent$1;)V

    return-object v0
.end method

.method private initialize(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;)V
    .locals 12

    .line 1
    invoke-static {p1}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;->create(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    .line 2
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;->create()Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideGsonProvider:Lj/a/a;

    .line 3
    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideSerializerFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideSerializerFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSerializerProvider:Lj/a/a;

    .line 4
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static {v1, v0}, Lzendesk/core/ZendeskStorageModule_ProvideSettingsBaseStorageFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideSettingsBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSettingsBaseStorageProvider:Lj/a/a;

    .line 5
    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideSettingsStorageFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideSettingsStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSettingsStorageProvider:Lj/a/a;

    .line 6
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSerializerProvider:Lj/a/a;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityBaseStorageFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideIdentityBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityBaseStorageProvider:Lj/a/a;

    .line 7
    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityStorageProvider:Lj/a/a;

    .line 8
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSerializerProvider:Lj/a/a;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAdditionalSdkBaseStorageProvider:Lj/a/a;

    .line 9
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvidesCacheDirFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvidesCacheDirFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesCacheDirProvider:Lj/a/a;

    .line 10
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSerializerProvider:Lj/a/a;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesDiskLruStorageProvider:Lj/a/a;

    .line 11
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesCacheDirProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCacheProvider:Lj/a/a;

    .line 12
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvidesDataDirFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvidesDataDirFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesDataDirProvider:Lj/a/a;

    .line 13
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvidesBelvedereDirFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvidesBelvedereDirFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v7

    iput-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesBelvedereDirProvider:Lj/a/a;

    .line 14
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityStorageProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAdditionalSdkBaseStorageProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesDiskLruStorageProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCacheProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesCacheDirProvider:Lj/a/a;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesDataDirProvider:Lj/a/a;

    invoke-static/range {v1 .. v7}, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSessionStorageProvider:Lj/a/a;

    .line 15
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSerializerProvider:Lj/a/a;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideSdkBaseStorageFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideSdkBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkBaseStorageProvider:Lj/a/a;

    .line 16
    invoke-static {}, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;->create()Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideMemoryCacheProvider:Lj/a/a;

    .line 17
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSettingsStorageProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSessionStorageProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkBaseStorageProvider:Lj/a/a;

    invoke-static {v1, v2, v3, v0}, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkStorageProvider:Lj/a/a;

    .line 18
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSerializerProvider:Lj/a/a;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideLegacyIdentityBaseStorageProvider:Lj/a/a;

    .line 19
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSerializerProvider:Lj/a/a;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideLegacyPushBaseStorageProvider:Lj/a/a;

    .line 20
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityStorageProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityManagerProvider:Lj/a/a;

    .line 21
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAdditionalSdkBaseStorageProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvidePushDeviceIdStorageFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvidePushDeviceIdStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushDeviceIdStorageProvider:Lj/a/a;

    .line 22
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideLegacyIdentityBaseStorageProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideLegacyPushBaseStorageProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityStorageProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityManagerProvider:Lj/a/a;

    invoke-static {v1, v2, v3, v4, v0}, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityStorageFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideLegacyIdentityStorageProvider:Lj/a/a;

    .line 23
    invoke-static {p1}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;->create(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationConfigurationProvider:Lj/a/a;

    .line 24
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;->create()Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideHttpLoggingInterceptorProvider:Lj/a/a;

    .line 25
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationConfigurationProvider:Lj/a/a;

    invoke-static {p2, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;->create(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskBasicHeadersInterceptorProvider:Lj/a/a;

    .line 26
    invoke-static {p2}, Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;->create(Lzendesk/core/ZendeskNetworkModule;)Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesUserAgentHeaderInterceptorProvider:Lj/a/a;

    .line 27
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;->create()Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideExecutorProvider:Lj/a/a;

    .line 28
    invoke-static {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideExecutorServiceFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskApplicationModule_ProvideExecutorServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideExecutorServiceProvider:Lj/a/a;

    .line 29
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideHttpLoggingInterceptorProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskBasicHeadersInterceptorProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesUserAgentHeaderInterceptorProvider:Lj/a/a;

    invoke-static {p2, v1, v2, v3, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideBaseOkHttpClientFactory;->create(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideBaseOkHttpClientFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideBaseOkHttpClientProvider:Lj/a/a;

    .line 30
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskNetworkModule_ProvideAcceptLanguageHeaderInterceptorFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideAcceptLanguageHeaderInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAcceptLanguageHeaderInterceptorProvider:Lj/a/a;

    .line 31
    invoke-static {}, Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;->create()Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesAcceptHeaderInterceptorProvider:Lj/a/a;

    .line 32
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideBaseOkHttpClientProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAcceptLanguageHeaderInterceptorProvider:Lj/a/a;

    invoke-static {p2, v1, v2, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->create(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreOkHttpClientProvider:Lj/a/a;

    .line 33
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationConfigurationProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideGsonProvider:Lj/a/a;

    invoke-static {v1, v2, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreRetrofitProvider:Lj/a/a;

    .line 34
    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProvideBlipsServiceFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideBlipsServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideBlipsServiceProvider:Lj/a/a;

    .line 35
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideDeviceInfoProvider:Lj/a/a;

    .line 36
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSerializerProvider:Lj/a/a;

    invoke-static {p1, v0}, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;->create(Lzendesk/core/ZendeskApplicationModule;Lj/a/a;)Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideBase64SerializerProvider:Lj/a/a;

    .line 37
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSettingsStorageProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideCoreSettingsStorageFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideCoreSettingsStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v6

    iput-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreSettingsStorageProvider:Lj/a/a;

    .line 38
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideBlipsServiceProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideDeviceInfoProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideBase64SerializerProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityManagerProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationConfigurationProvider:Lj/a/a;

    iget-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideExecutorServiceProvider:Lj/a/a;

    invoke-static/range {v1 .. v7}, Lzendesk/core/ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerZendeskBlipsProvider:Lj/a/a;

    .line 39
    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerBlipsCoreProvider:Lj/a/a;

    .line 40
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityManagerProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAuthHeaderInterceptorProvider:Lj/a/a;

    .line 41
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationConfigurationProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideGsonProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreOkHttpClientProvider:Lj/a/a;

    invoke-static {v1, v2, v3, v0}, Lzendesk/core/ZendeskNetworkModule_ProvidePushProviderRetrofitFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvidePushProviderRetrofitFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushProviderRetrofitProvider:Lj/a/a;

    .line 42
    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushRegistrationServiceProvider:Lj/a/a;

    .line 43
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreRetrofitProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsServiceFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkSettingsServiceProvider:Lj/a/a;

    .line 44
    invoke-static {}, Lzendesk/core/ZendeskProvidersModule_ActionHandlerRegistryFactory;->create()Lzendesk/core/ZendeskProvidersModule_ActionHandlerRegistryFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->actionHandlerRegistryProvider:Lj/a/a;

    .line 45
    invoke-static {p1}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;->create(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v5

    iput-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskLocaleConverterProvider:Lj/a/a;

    .line 46
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkSettingsServiceProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSettingsStorageProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreSettingsStorageProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->actionHandlerRegistryProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSerializerProvider:Lj/a/a;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationConfigurationProvider:Lj/a/a;

    iget-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static/range {v0 .. v7}, Lzendesk/core/ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskSdkSettingsProvider:Lj/a/a;

    .line 47
    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v2

    iput-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkSettingsProvider:Lj/a/a;

    .line 48
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushRegistrationServiceProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityManagerProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerBlipsCoreProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushDeviceIdStorageProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static/range {v0 .. v5}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushRegistrationProvider:Lj/a/a;

    .line 49
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreRetrofitProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideAccessServiceFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideAccessServiceFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAccessServiceProvider:Lj/a/a;

    .line 50
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityManagerProvider:Lj/a/a;

    invoke-static {v0, p1}, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAccessProvider:Lj/a/a;

    .line 51
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityManagerProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkStorageProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreSettingsStorageProvider:Lj/a/a;

    invoke-static {v0, p1, v1, v2}, Lzendesk/core/ZendeskNetworkModule_ProvideAccessInterceptorFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideAccessInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAccessInterceptorProvider:Lj/a/a;

    .line 52
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSessionStorageProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskUnauthorizedInterceptorProvider:Lj/a/a;

    .line 53
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskSdkSettingsProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkSettingsProviderInternalProvider:Lj/a/a;

    .line 54
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSettingsStorageProvider:Lj/a/a;

    invoke-static {p1, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSettingsInterceptorProvider:Lj/a/a;

    .line 55
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushRegistrationProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderInternalFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderInternalFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushRegistrationProviderInternalProvider:Lj/a/a;

    .line 56
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushDeviceIdStorageProvider:Lj/a/a;

    invoke-static {p1, v0}, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v7

    iput-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushInterceptorProvider:Lj/a/a;

    .line 57
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideBaseOkHttpClientProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAccessInterceptorProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskUnauthorizedInterceptorProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAuthHeaderInterceptorProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSettingsInterceptorProvider:Lj/a/a;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesAcceptHeaderInterceptorProvider:Lj/a/a;

    iget-object v8, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCacheProvider:Lj/a/a;

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->create(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideOkHttpClientProvider:Lj/a/a;

    .line 58
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationConfigurationProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideGsonProvider:Lj/a/a;

    invoke-static {v0, v1, p1}, Lzendesk/core/ZendeskNetworkModule_ProvideRetrofitFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideRetrofitFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideRetrofitProvider:Lj/a/a;

    .line 59
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providesDiskLruStorageProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/core/ZendeskNetworkModule_ProvideCachingInterceptorFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideCachingInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v5

    iput-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCachingInterceptorProvider:Lj/a/a;

    .line 60
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideBaseOkHttpClientProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAccessInterceptorProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAuthHeaderInterceptorProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSettingsInterceptorProvider:Lj/a/a;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskUnauthorizedInterceptorProvider:Lj/a/a;

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lzendesk/core/ZendeskNetworkModule_ProvideMediaOkHttpClientFactory;->create(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideMediaOkHttpClientFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideMediaOkHttpClientProvider:Lj/a/a;

    .line 61
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideRetrofitProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideOkHttpClientProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreOkHttpClientProvider:Lj/a/a;

    invoke-static {p2, v0, p1, v1, v2}, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->create(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideRestServiceProvider:Lj/a/a;

    .line 62
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerZendeskBlipsProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsProviderFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProviderBlipsProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerBlipsProvider:Lj/a/a;

    .line 63
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProviderConnectivityManagerFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProviderConnectivityManagerFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerConnectivityManagerProvider:Lj/a/a;

    .line 64
    iget-object p2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    invoke-static {p2, p1}, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerNetworkInfoProvider:Lj/a/a;

    .line 65
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityManagerProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/core/ZendeskStorageModule_ProvideAuthProviderFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideAuthProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v9

    iput-object v9, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideAuthProvider:Lj/a/a;

    .line 66
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkSettingsProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideRestServiceProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerBlipsProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSessionStorageProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerNetworkInfoProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideMemoryCacheProvider:Lj/a/a;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->actionHandlerRegistryProvider:Lj/a/a;

    iget-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideExecutorProvider:Lj/a/a;

    iget-object v8, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationContextProvider:Lj/a/a;

    iget-object v10, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideApplicationConfigurationProvider:Lj/a/a;

    iget-object v11, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushRegistrationProvider:Lj/a/a;

    invoke-static/range {v0 .. v11}, Lzendesk/core/ZendeskProvidersModule_ProvideCoreSdkModuleFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideCoreSdkModuleFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreSdkModuleProvider:Lj/a/a;

    .line 67
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideRetrofitProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideUserServiceFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideUserServiceFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideUserServiceProvider:Lj/a/a;

    .line 68
    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideUserProviderFactory;->create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideUserProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideUserProvider:Lj/a/a;

    .line 69
    iget-object p2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushRegistrationProvider:Lj/a/a;

    invoke-static {p1, p2}, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v6

    iput-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideProviderStoreProvider:Lj/a/a;

    .line 70
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideSdkStorageProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideLegacyIdentityStorageProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideIdentityManagerProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providerBlipsCoreProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->providePushRegistrationProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideCoreSdkModuleProvider:Lj/a/a;

    invoke-static/range {v0 .. v6}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskProvider:Lj/a/a;

    return-void
.end method


# virtual methods
.method public zendeskShadow()Lzendesk/core/ZendeskShadow;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent;->provideZendeskProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/ZendeskShadow;

    return-object v0
.end method
