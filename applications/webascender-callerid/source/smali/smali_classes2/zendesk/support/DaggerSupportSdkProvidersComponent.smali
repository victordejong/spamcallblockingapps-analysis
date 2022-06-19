.class final Lzendesk/support/DaggerSupportSdkProvidersComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/SupportSdkProvidersComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;
    }
.end annotation


# instance fields
.field private final coreModule:Lzendesk/core/CoreModule;

.field private getApplicationContextProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private getAuthenticationProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getBlipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getMemoryCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/MemoryCache;",
            ">;"
        }
    .end annotation
.end field

.field private getRestServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/RestServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getSessionStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SessionStorage;",
            ">;"
        }
    .end annotation
.end field

.field private getSettingsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideArticleVoteStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ArticleVoteStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideCustomNetworkConfigProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterCachingNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private provideHelpCenterCachingInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterCachingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideHelpCenterProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideHelpCenterSessionCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterSessionCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocaleProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetadataProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportSdkMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private provideProviderStoreProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ProviderStore;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestMigratorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestMigrator;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestSessionCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestSessionCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkSettingsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSupportBlipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSupportModuleProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideUploadProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/UploadProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskHelpCenterServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskHelpCenterService;",
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

.field private provideZendeskRequestServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskRequestService;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskUploadServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskUploadService;",
            ">;"
        }
    .end annotation
.end field

.field private providesHelpCenterServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private providesRequestServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestService;",
            ">;"
        }
    .end annotation
.end field

.field private providesUploadServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/UploadService;",
            ">;"
        }
    .end annotation
.end field

.field private providesZendeskTrackerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/StorageModule;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->coreModule:Lzendesk/core/CoreModule;

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/support/DaggerSupportSdkProvidersComponent;->initialize(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/StorageModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/StorageModule;Lzendesk/support/DaggerSupportSdkProvidersComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/support/DaggerSupportSdkProvidersComponent;-><init>(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/StorageModule;)V

    return-void
.end method

.method public static builder()Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;-><init>(Lzendesk/support/DaggerSupportSdkProvidersComponent$1;)V

    return-object v0
.end method

.method private initialize(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/StorageModule;)V
    .locals 9

    .line 1
    invoke-static {p2}, Lzendesk/core/CoreModule_GetSettingsProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSettingsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getSettingsProvider:Lj/a/a;

    .line 2
    invoke-static {p1}, Lzendesk/support/SupportApplicationModule_ProvideLocaleFactory;->create(Lzendesk/support/SupportApplicationModule;)Lzendesk/support/SupportApplicationModule_ProvideLocaleFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideLocaleProvider:Lj/a/a;

    .line 3
    invoke-static {p3}, Lzendesk/support/ProviderModule_ProvideZendeskLocaleConverterFactory;->create(Lzendesk/support/ProviderModule;)Lzendesk/support/ProviderModule_ProvideZendeskLocaleConverterFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideZendeskLocaleConverterProvider:Lj/a/a;

    .line 4
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getSettingsProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideLocaleProvider:Lj/a/a;

    invoke-static {p3, v1, v2, v0}, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSdkSettingsProvider:Lj/a/a;

    .line 5
    invoke-static {p2}, Lzendesk/core/CoreModule_GetBlipsProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetBlipsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getBlipsProvider:Lj/a/a;

    .line 6
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideLocaleProvider:Lj/a/a;

    invoke-static {p3, v0, v1}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSupportBlipsProvider:Lj/a/a;

    .line 7
    invoke-static {p2}, Lzendesk/core/CoreModule_GetRestServiceProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetRestServiceProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getRestServiceProvider:Lj/a/a;

    .line 8
    invoke-static {}, Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;->create()Lzendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideHelpCenterCachingInterceptorProvider:Lj/a/a;

    .line 9
    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;->create(Lj/a/a;)Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideCustomNetworkConfigProvider:Lj/a/a;

    .line 10
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getRestServiceProvider:Lj/a/a;

    invoke-static {v1, v0}, Lzendesk/support/ServiceModule_ProvidesHelpCenterServiceFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/support/ServiceModule_ProvidesHelpCenterServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->providesHelpCenterServiceProvider:Lj/a/a;

    .line 11
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideZendeskLocaleConverterProvider:Lj/a/a;

    invoke-static {v0, v1}, Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideZendeskHelpCenterServiceProvider:Lj/a/a;

    .line 12
    invoke-static {p4}, Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;->create(Lzendesk/support/StorageModule;)Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideHelpCenterSessionCacheProvider:Lj/a/a;

    .line 13
    invoke-static {p1}, Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;->create(Lzendesk/support/SupportApplicationModule;)Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v6

    iput-object v6, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->providesZendeskTrackerProvider:Lj/a/a;

    .line 14
    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSdkSettingsProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSupportBlipsProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideZendeskHelpCenterServiceProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideHelpCenterSessionCacheProvider:Lj/a/a;

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideHelpCenterProvider:Lj/a/a;

    .line 15
    invoke-static {p2}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getAuthenticationProvider:Lj/a/a;

    .line 16
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getRestServiceProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvidesRequestServiceFactory;->create(Lj/a/a;)Lzendesk/support/ServiceModule_ProvidesRequestServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->providesRequestServiceProvider:Lj/a/a;

    .line 17
    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->create(Lj/a/a;)Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideZendeskRequestServiceProvider:Lj/a/a;

    .line 18
    invoke-static {p2}, Lzendesk/core/CoreModule_GetSessionStorageFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSessionStorageFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getSessionStorageProvider:Lj/a/a;

    .line 19
    invoke-static {p2}, Lzendesk/core/CoreModule_GetApplicationContextFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetApplicationContextFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getApplicationContextProvider:Lj/a/a;

    .line 20
    invoke-static {p4, v0}, Lzendesk/support/StorageModule_ProvideRequestMigratorFactory;->create(Lzendesk/support/StorageModule;Lj/a/a;)Lzendesk/support/StorageModule_ProvideRequestMigratorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestMigratorProvider:Lj/a/a;

    .line 21
    invoke-static {p2}, Lzendesk/core/CoreModule_GetMemoryCacheFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetMemoryCacheFactory;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getMemoryCacheProvider:Lj/a/a;

    .line 22
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getSessionStorageProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestMigratorProvider:Lj/a/a;

    invoke-static {p4, v0, v1, p2}, Lzendesk/support/StorageModule_ProvideRequestStorageFactory;->create(Lzendesk/support/StorageModule;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/StorageModule_ProvideRequestStorageFactory;

    move-result-object p2

    invoke-static {p2}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestStorageProvider:Lj/a/a;

    .line 23
    invoke-static {p4}, Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;->create(Lzendesk/support/StorageModule;)Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;

    move-result-object p2

    invoke-static {p2}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestSessionCacheProvider:Lj/a/a;

    .line 24
    iget-object p2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getApplicationContextProvider:Lj/a/a;

    invoke-static {p1, p2}, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;->create(Lzendesk/support/SupportApplicationModule;Lj/a/a;)Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v7

    iput-object v7, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideMetadataProvider:Lj/a/a;

    .line 25
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSdkSettingsProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getAuthenticationProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideZendeskRequestServiceProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestStorageProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestSessionCacheProvider:Lj/a/a;

    iget-object v6, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->providesZendeskTrackerProvider:Lj/a/a;

    iget-object v8, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSupportBlipsProvider:Lj/a/a;

    move-object v0, p3

    invoke-static/range {v0 .. v8}, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestProvider:Lj/a/a;

    .line 26
    iget-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getRestServiceProvider:Lj/a/a;

    invoke-static {p1}, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->create(Lj/a/a;)Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->providesUploadServiceProvider:Lj/a/a;

    .line 27
    invoke-static {p1}, Lzendesk/support/ServiceModule_ProvideZendeskUploadServiceFactory;->create(Lj/a/a;)Lzendesk/support/ServiceModule_ProvideZendeskUploadServiceFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideZendeskUploadServiceProvider:Lj/a/a;

    .line 28
    invoke-static {p3, p1}, Lzendesk/support/ProviderModule_ProvideUploadProviderFactory;->create(Lzendesk/support/ProviderModule;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideUploadProviderFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideUploadProvider:Lj/a/a;

    .line 29
    iget-object p2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideHelpCenterProvider:Lj/a/a;

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestProvider:Lj/a/a;

    invoke-static {p3, p2, v0, p1}, Lzendesk/support/ProviderModule_ProvideProviderStoreFactory;->create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideProviderStoreFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideProviderStoreProvider:Lj/a/a;

    .line 30
    iget-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getSessionStorageProvider:Lj/a/a;

    invoke-static {p4, p1}, Lzendesk/support/StorageModule_ProvideArticleVoteStorageFactory;->create(Lzendesk/support/StorageModule;Lj/a/a;)Lzendesk/support/StorageModule_ProvideArticleVoteStorageFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v8

    iput-object v8, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideArticleVoteStorageProvider:Lj/a/a;

    .line 31
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideUploadProvider:Lj/a/a;

    iget-object v3, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideHelpCenterProvider:Lj/a/a;

    iget-object v4, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSdkSettingsProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->getRestServiceProvider:Lj/a/a;

    iget-object v6, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSupportBlipsProvider:Lj/a/a;

    iget-object v7, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->providesZendeskTrackerProvider:Lj/a/a;

    move-object v0, p3

    invoke-static/range {v0 .. v8}, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSupportModuleProvider:Lj/a/a;

    return-void
.end method

.method private injectSupport(Lzendesk/support/Support;)Lzendesk/support/Support;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideProviderStoreProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/ProviderStore;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectProviderStore(Lzendesk/support/Support;Lzendesk/support/ProviderStore;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSupportModuleProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/SupportModule;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectSupportModule(Lzendesk/support/Support;Lzendesk/support/SupportModule;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestMigratorProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectRequestMigrator(Lzendesk/support/Support;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideSupportBlipsProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/SupportBlipsProvider;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectBlipsProvider(Lzendesk/support/Support;Lzendesk/support/SupportBlipsProvider;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectActionHandlerRegistry(Lzendesk/support/Support;Lzendesk/core/ActionHandlerRegistry;)V

    .line 6
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->provideRequestProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/RequestProvider;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectRequestProvider(Lzendesk/support/Support;Lzendesk/support/RequestProvider;)V

    .line 7
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->getAuthenticationProvider(Lzendesk/core/CoreModule;)Lzendesk/core/AuthenticationProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectAuthenticationProvider(Lzendesk/support/Support;Lzendesk/core/AuthenticationProvider;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lzendesk/support/Support;)Lzendesk/support/Support;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkProvidersComponent;->injectSupport(Lzendesk/support/Support;)Lzendesk/support/Support;

    return-object p1
.end method
