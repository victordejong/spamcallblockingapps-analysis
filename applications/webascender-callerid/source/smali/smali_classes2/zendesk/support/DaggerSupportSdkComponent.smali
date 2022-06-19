.class public final Lzendesk/support/DaggerSupportSdkComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/SupportSdkComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;,
        Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;,
        Lzendesk/support/DaggerSupportSdkComponent$Builder;
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

.field private final coreModule:Lzendesk/core/CoreModule;

.field private getApplicationConfigurationProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;"
        }
    .end annotation
.end field

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

.field private getExecutorServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
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

.field private getSessionStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SessionStorage;",
            ">;"
        }
    .end annotation
.end field

.field private mainThreadExecutorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private providesActionHandlersProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/List<",
            "Lzendesk/core/ActionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesBlipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesDeepLinkHelperProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskDeepLinkHelper;",
            ">;"
        }
    .end annotation
.end field

.field private providesDeepLinkParserProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskDeepLinkParser;",
            ">;"
        }
    .end annotation
.end field

.field private providesOkHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field

.field private providesParserModuleProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/List<",
            "Lzendesk/support/ZendeskDeepLinkParser$Module;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesPicassoProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/i/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field

.field private providesRequestDiskLruCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/h/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private providesRequestProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesSettingsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesUploadProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/UploadProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesZendeskUrlProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestInfoDataSourceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final supportModule:Lzendesk/support/SupportModule;

.field private supportUiStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportUiStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportModule:Lzendesk/support/SupportModule;

    .line 4
    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent;->coreModule:Lzendesk/core/CoreModule;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/DaggerSupportSdkComponent;->initialize(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/DaggerSupportSdkComponent;-><init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;)V

    return-void
.end method

.method static synthetic access$1000(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->mainThreadExecutorProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$1100(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->getAuthenticationProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$1200(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesBlipsProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$1300(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesOkHttpClientProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$1400(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->actionHandlerRegistryProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$1500(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->requestInfoDataSourceProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$1600(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesPicassoProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$1700(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesDeepLinkHelperProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$1800(Lzendesk/support/DaggerSupportSdkComponent;)Lzendesk/core/CoreModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->coreModule:Lzendesk/core/CoreModule;

    return-object p0
.end method

.method static synthetic access$1900(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->getMemoryCacheProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->getApplicationContextProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesRequestProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesSettingsProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$700(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesUploadProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$800(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportUiStorageProvider:Lj/a/a;

    return-object p0
.end method

.method static synthetic access$900(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent;->getExecutorServiceProvider:Lj/a/a;

    return-object p0
.end method

.method public static builder()Lzendesk/support/DaggerSupportSdkComponent$Builder;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/DaggerSupportSdkComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/DaggerSupportSdkComponent$Builder;-><init>(Lzendesk/support/DaggerSupportSdkComponent$1;)V

    return-object v0
.end method

.method private initialize(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->actionHandlerRegistryProvider:Lj/a/a;

    .line 2
    invoke-static {p1}, Lzendesk/core/CoreModule_GetApplicationConfigurationFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetApplicationConfigurationFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->getApplicationConfigurationProvider:Lj/a/a;

    .line 3
    invoke-static {p3, v0}, Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;->create(Lzendesk/support/SupportSdkModule;Lj/a/a;)Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesZendeskUrlProvider:Lj/a/a;

    .line 4
    invoke-static {p3}, Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;->create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_ProvidesParserModuleFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesParserModuleProvider:Lj/a/a;

    .line 5
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesZendeskUrlProvider:Lj/a/a;

    invoke-static {p3, v1, v0}, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkParserFactory;->create(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;)Lzendesk/support/SupportSdkModule_ProvidesDeepLinkParserFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesDeepLinkParserProvider:Lj/a/a;

    .line 6
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent;->actionHandlerRegistryProvider:Lj/a/a;

    invoke-static {p3, v1, v0}, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;->create(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;)Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesDeepLinkHelperProvider:Lj/a/a;

    .line 7
    invoke-static {p3}, Lzendesk/support/SupportSdkModule_ProvidesActionHandlersFactory;->create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_ProvidesActionHandlersFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesActionHandlersProvider:Lj/a/a;

    .line 8
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesRequestProviderFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesRequestProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesRequestProvider:Lj/a/a;

    .line 9
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesSettingsProviderFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesSettingsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesSettingsProvider:Lj/a/a;

    .line 10
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesUploadProvider:Lj/a/a;

    .line 11
    invoke-static {p1}, Lzendesk/core/CoreModule_GetApplicationContextFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetApplicationContextFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->getApplicationContextProvider:Lj/a/a;

    .line 12
    invoke-static {p1}, Lzendesk/core/CoreModule_GetSessionStorageFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSessionStorageFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->getSessionStorageProvider:Lj/a/a;

    .line 13
    invoke-static {p3, v0}, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;->create(Lzendesk/support/SupportSdkModule;Lj/a/a;)Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesRequestDiskLruCacheProvider:Lj/a/a;

    .line 14
    invoke-static {p3}, Lzendesk/support/SupportSdkModule_ProvidesFactory;->create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_ProvidesFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesProvider:Lj/a/a;

    .line 15
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesRequestDiskLruCacheProvider:Lj/a/a;

    invoke-static {p3, v1, v0}, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->create(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;)Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportUiStorageProvider:Lj/a/a;

    .line 16
    invoke-static {p1}, Lzendesk/core/CoreModule_GetExecutorServiceFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetExecutorServiceFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->getExecutorServiceProvider:Lj/a/a;

    .line 17
    invoke-static {p3}, Lzendesk/support/SupportSdkModule_MainThreadExecutorFactory;->create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_MainThreadExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->mainThreadExecutorProvider:Lj/a/a;

    .line 18
    invoke-static {p1}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->getAuthenticationProvider:Lj/a/a;

    .line 19
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesBlipsProviderFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesBlipsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesBlipsProvider:Lj/a/a;

    .line 20
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesOkHttpClientProvider:Lj/a/a;

    .line 21
    iget-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportUiStorageProvider:Lj/a/a;

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->mainThreadExecutorProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent;->getExecutorServiceProvider:Lj/a/a;

    invoke-static {p3, p2, v0, v1}, Lzendesk/support/SupportSdkModule_RequestInfoDataSourceFactory;->create(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/SupportSdkModule_RequestInfoDataSourceFactory;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent;->requestInfoDataSourceProvider:Lj/a/a;

    .line 22
    iget-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent;->getApplicationContextProvider:Lj/a/a;

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesOkHttpClientProvider:Lj/a/a;

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent;->getExecutorServiceProvider:Lj/a/a;

    invoke-static {p3, p2, v0, v1}, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->create(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;

    move-result-object p2

    invoke-static {p2}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesPicassoProvider:Lj/a/a;

    .line 23
    invoke-static {p1}, Lzendesk/core/CoreModule_GetMemoryCacheFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetMemoryCacheFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent;->getMemoryCacheProvider:Lj/a/a;

    return-void
.end method

.method private injectDeepLinkingBroadcastReceiver(Lzendesk/support/DeepLinkingBroadcastReceiver;)Lzendesk/support/DeepLinkingBroadcastReceiver;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesDeepLinkHelperProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/ZendeskDeepLinkHelper;

    invoke-static {p1, v0}, Lzendesk/support/DeepLinkingBroadcastReceiver_MembersInjector;->injectDeepLinkHelper(Lzendesk/support/DeepLinkingBroadcastReceiver;Lzendesk/support/ZendeskDeepLinkHelper;)V

    return-object p1
.end method

.method private injectHelpCenterActivity(Lzendesk/support/guide/HelpCenterActivity;)Lzendesk/support/guide/HelpCenterActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesHelpCenterProviderFactory;->providesHelpCenterProvider(Lzendesk/support/SupportModule;)Lzendesk/support/HelpCenterProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpCenterActivity_MembersInjector;->injectHelpCenterProvider(Lzendesk/support/guide/HelpCenterActivity;Lzendesk/support/HelpCenterProvider;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesSettingsProviderFactory;->providesSettingsProvider(Lzendesk/support/SupportModule;)Lzendesk/support/SupportSettingsProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpCenterActivity_MembersInjector;->injectSettingsProvider(Lzendesk/support/guide/HelpCenterActivity;Lzendesk/support/SupportSettingsProvider;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;->getNetworkInfoProvider(Lzendesk/core/CoreModule;)Lzendesk/core/NetworkInfoProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpCenterActivity_MembersInjector;->injectNetworkInfoProvider(Lzendesk/support/guide/HelpCenterActivity;Lzendesk/core/NetworkInfoProvider;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpCenterActivity_MembersInjector;->injectActionHandlerRegistry(Lzendesk/support/guide/HelpCenterActivity;Lzendesk/core/ActionHandlerRegistry;)V

    return-object p1
.end method

.method private injectHelpCenterFragment(Lzendesk/support/guide/HelpCenterFragment;)Lzendesk/support/guide/HelpCenterFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesHelpCenterProviderFactory;->providesHelpCenterProvider(Lzendesk/support/SupportModule;)Lzendesk/support/HelpCenterProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;->injectHelpCenterProvider(Lzendesk/support/guide/HelpCenterFragment;Lzendesk/support/HelpCenterProvider;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;->getNetworkInfoProvider(Lzendesk/core/CoreModule;)Lzendesk/core/NetworkInfoProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;->injectNetworkInfoProvider(Lzendesk/support/guide/HelpCenterFragment;Lzendesk/core/NetworkInfoProvider;)V

    return-object p1
.end method

.method private injectSdkDependencyProvider(Lzendesk/support/SdkDependencyProvider;)Lzendesk/support/SdkDependencyProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/SdkDependencyProvider_MembersInjector;->injectRegistry(Lzendesk/support/SdkDependencyProvider;Lzendesk/core/ActionHandlerRegistry;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesActionHandlersProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lzendesk/support/SdkDependencyProvider_MembersInjector;->injectActionHandlers(Lzendesk/support/SdkDependencyProvider;Ljava/util/List;)V

    return-object p1
.end method

.method private injectViewArticleActivity(Lzendesk/support/guide/ViewArticleActivity;)Lzendesk/support/guide/ViewArticleActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->providesOkHttpClient(Lzendesk/support/SupportModule;)Lm/c0;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/ViewArticleActivity_MembersInjector;->injectOkHttpClient(Lzendesk/support/guide/ViewArticleActivity;Lm/c0;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetApplicationConfigurationFactory;->getApplicationConfiguration(Lzendesk/core/CoreModule;)Lzendesk/core/ApplicationConfiguration;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/ViewArticleActivity_MembersInjector;->injectApplicationConfiguration(Lzendesk/support/guide/ViewArticleActivity;Lzendesk/core/ApplicationConfiguration;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesHelpCenterProviderFactory;->providesHelpCenterProvider(Lzendesk/support/SupportModule;)Lzendesk/support/HelpCenterProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/ViewArticleActivity_MembersInjector;->injectHelpCenterProvider(Lzendesk/support/guide/ViewArticleActivity;Lzendesk/support/HelpCenterProvider;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesArticleVoteStorageFactory;->providesArticleVoteStorage(Lzendesk/support/SupportModule;)Lzendesk/support/ArticleVoteStorage;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/ViewArticleActivity_MembersInjector;->injectArticleVoteStorage(Lzendesk/support/guide/ViewArticleActivity;Lzendesk/support/ArticleVoteStorage;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->providesDeepLinkHelperProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/ZendeskDeepLinkHelper;

    invoke-static {p1, v0}, Lzendesk/support/guide/ViewArticleActivity_MembersInjector;->injectDeepLinkHelper(Lzendesk/support/guide/ViewArticleActivity;Lzendesk/support/ZendeskDeepLinkHelper;)V

    .line 6
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;->getNetworkInfoProvider(Lzendesk/core/CoreModule;)Lzendesk/core/NetworkInfoProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/ViewArticleActivity_MembersInjector;->injectNetworkInfoProvider(Lzendesk/support/guide/ViewArticleActivity;Lzendesk/core/NetworkInfoProvider;)V

    .line 7
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesSettingsProviderFactory;->providesSettingsProvider(Lzendesk/support/SupportModule;)Lzendesk/support/SupportSettingsProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/ViewArticleActivity_MembersInjector;->injectSupportSettingsProvider(Lzendesk/support/guide/ViewArticleActivity;Lzendesk/support/SupportSettingsProvider;)V

    .line 8
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/ViewArticleActivity_MembersInjector;->injectActionHandlerRegistry(Lzendesk/support/guide/ViewArticleActivity;Lzendesk/core/ActionHandlerRegistry;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lzendesk/support/DeepLinkingBroadcastReceiver;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent;->injectDeepLinkingBroadcastReceiver(Lzendesk/support/DeepLinkingBroadcastReceiver;)Lzendesk/support/DeepLinkingBroadcastReceiver;

    return-void
.end method

.method public inject(Lzendesk/support/SdkDependencyProvider;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent;->injectSdkDependencyProvider(Lzendesk/support/SdkDependencyProvider;)Lzendesk/support/SdkDependencyProvider;

    return-void
.end method

.method public inject(Lzendesk/support/guide/HelpCenterActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent;->injectHelpCenterActivity(Lzendesk/support/guide/HelpCenterActivity;)Lzendesk/support/guide/HelpCenterActivity;

    return-void
.end method

.method public inject(Lzendesk/support/guide/HelpCenterFragment;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent;->injectHelpCenterFragment(Lzendesk/support/guide/HelpCenterFragment;)Lzendesk/support/guide/HelpCenterFragment;

    return-void
.end method

.method public inject(Lzendesk/support/guide/ViewArticleActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent;->injectViewArticleActivity(Lzendesk/support/guide/ViewArticleActivity;)Lzendesk/support/guide/ViewArticleActivity;

    return-void
.end method

.method public plus(Lzendesk/support/request/RequestModule;)Lzendesk/support/request/RequestComponent;
    .locals 2

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;-><init>(Lzendesk/support/DaggerSupportSdkComponent;Lzendesk/support/request/RequestModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V

    return-object v0
.end method

.method public plus(Lzendesk/support/requestlist/RequestListModule;)Lzendesk/support/requestlist/RequestListComponent;
    .locals 2

    .line 3
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;-><init>(Lzendesk/support/DaggerSupportSdkComponent;Lzendesk/support/requestlist/RequestListModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V

    return-object v0
.end method
