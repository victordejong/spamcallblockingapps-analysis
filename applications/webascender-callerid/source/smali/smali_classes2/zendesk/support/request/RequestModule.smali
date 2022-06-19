.class public Lzendesk/support/request/RequestModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final uiConfig:Lzendesk/commonui/p;


# direct methods
.method constructor <init>(Lzendesk/commonui/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestModule;->uiConfig:Lzendesk/commonui/p;

    return-void
.end method

.method static providesActionFactory(Lzendesk/support/RequestProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/UploadProvider;Lzendesk/belvedere/a;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lzendesk/core/AuthenticationProvider;Lzendesk/support/SupportBlipsProvider;)Lzendesk/support/request/ActionFactory;
    .locals 13

    .line 1
    new-instance v12, Lzendesk/support/request/ActionFactory;

    sget-object v9, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    const-string v7, "3.0.2"

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lzendesk/support/request/ActionFactory;-><init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/belvedere/a;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/Executor;Ljava/lang/String;Lzendesk/core/AuthenticationProvider;Lzendesk/core/Zendesk;Lzendesk/support/SupportBlipsProvider;Ljava/util/concurrent/Executor;)V

    return-object v12
.end method

.method static providesAsyncMiddleware()Lzendesk/support/request/AsyncMiddleware;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/AsyncMiddleware$Queue;

    invoke-direct {v0}, Lzendesk/support/request/AsyncMiddleware$Queue;-><init>()V

    .line 2
    new-instance v1, Lzendesk/support/request/AsyncMiddleware;

    invoke-direct {v1, v0}, Lzendesk/support/request/AsyncMiddleware;-><init>(Lzendesk/support/request/AsyncMiddleware$Queue;)V

    return-object v1
.end method

.method static providesAttachmentDownloader(Lzendesk/belvedere/a;Lzendesk/support/request/AttachmentDownloadService;)Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;-><init>(Lzendesk/belvedere/a;Lzendesk/support/request/AttachmentDownloadService;)V

    return-object v0
.end method

.method static providesAttachmentDownloaderComponent(Lt/a/f;Lzendesk/support/request/ActionFactory;Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)Lzendesk/support/request/AttachmentDownloaderComponent;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentDownloaderComponent;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/AttachmentDownloaderComponent;-><init>(Lt/a/f;Lzendesk/support/request/ActionFactory;Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)V

    return-object v0
.end method

.method static providesAttachmentToDiskService(Lm/c0;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/AttachmentDownloadService;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentDownloadService;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/AttachmentDownloadService;-><init>(Lm/c0;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static providesBelvedere(Landroid/content/Context;)Lzendesk/belvedere/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lzendesk/belvedere/a;->c(Landroid/content/Context;)Lzendesk/belvedere/a;

    move-result-object p0

    return-object p0
.end method

.method static providesComponentListener(Lzendesk/support/request/ComponentPersistence;Lzendesk/support/request/AttachmentDownloaderComponent;Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/support/request/HeadlessComponentListener;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/HeadlessComponentListener;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/HeadlessComponentListener;-><init>(Lzendesk/support/request/ComponentPersistence;Lzendesk/support/request/AttachmentDownloaderComponent;Lzendesk/support/request/ComponentUpdateActionHandlers;)V

    return-object v0
.end method

.method static providesConUpdatesComponent(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;)Lzendesk/support/request/ComponentUpdateActionHandlers;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/ComponentUpdateActionHandlers;-><init>(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;)V

    return-object v0
.end method

.method static providesDiskQueue(Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/ComponentPersistence$PersistenceQueue;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-direct {v0, p0}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static providesDispatcher(Lt/a/q;)Lt/a/f;
    .locals 0

    return-object p0
.end method

.method static providesPersistenceComponent(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/ComponentPersistence$PersistenceQueue;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/ComponentPersistence;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentPersistence;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/ComponentPersistence;-><init>(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/ComponentPersistence$PersistenceQueue;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static providesReducer()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt/a/n;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lt/a/n;

    .line 1
    new-instance v1, Lzendesk/support/request/ReducerProgress;

    invoke-direct {v1}, Lzendesk/support/request/ReducerProgress;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerConfiguration;

    invoke-direct {v1}, Lzendesk/support/request/ReducerConfiguration;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerConversation;

    invoke-direct {v1}, Lzendesk/support/request/ReducerConversation;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerAttachments;

    invoke-direct {v1}, Lzendesk/support/request/ReducerAttachments;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerAndroidLifecycle;

    invoke-direct {v1}, Lzendesk/support/request/ReducerAndroidLifecycle;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerUiState;

    invoke-direct {v1}, Lzendesk/support/request/ReducerUiState;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerError;

    invoke-direct {v1}, Lzendesk/support/request/ReducerError;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static providesStore(Ljava/util/List;Lzendesk/support/request/AsyncMiddleware;)Lt/a/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt/a/n;",
            ">;",
            "Lzendesk/support/request/AsyncMiddleware;",
            ")",
            "Lt/a/q;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lt/a/r;->b(Ljava/util/Collection;)Lt/a/r$a;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Lt/a/m;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lt/a/r$a;->e([Lt/a/m;)Lt/a/r$a;

    sget-object p1, Lt/a/i;->b:Lt/a/h;

    .line 3
    invoke-virtual {p0, p1}, Lt/a/r$a;->d(Lt/a/h;)Lt/a/r$a;

    .line 4
    invoke-virtual {p0}, Lt/a/r$a;->b()Lt/a/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method providesMessageFactory(Landroid/content/Context;Lg/i/a/d;Lzendesk/support/request/ActionFactory;Lt/a/f;Lzendesk/support/ZendeskDeepLinkHelper;)Lzendesk/support/request/CellFactory;
    .locals 8

    .line 1
    new-instance v7, Lzendesk/support/request/CellFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lzendesk/support/request/RequestModule;->uiConfig:Lzendesk/commonui/p;

    move-object v0, v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/support/request/CellFactory;-><init>(Landroid/content/Context;Lg/i/a/d;Lzendesk/support/request/ActionFactory;Lt/a/f;Lzendesk/support/ZendeskDeepLinkHelper;Lzendesk/commonui/p;)V

    return-object v7
.end method
