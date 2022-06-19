.class public final Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/requestlist/RequestInfoDataSource$Repository;",
        ">;"
    }
.end annotation


# instance fields
.field private final backgroundThreadExecutorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final localDataSourceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadExecutorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final requestProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final supportUiStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportUiStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportUiStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->localDataSourceProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->supportUiStorageProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->requestProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->mainThreadExecutorProvider:Lj/a/a;

    .line 6
    iput-object p5, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->backgroundThreadExecutorProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportUiStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;"
        }
    .end annotation

    .line 1
    new-instance v6, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method

.method public static repository(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;Lzendesk/support/SupportUiStorage;Lzendesk/support/RequestProvider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/requestlist/RequestInfoDataSource$Repository;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lzendesk/support/requestlist/RequestListModule;->repository(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;Lzendesk/support/SupportUiStorage;Lzendesk/support/RequestProvider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->get()Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/requestlist/RequestInfoDataSource$Repository;
    .locals 5

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->localDataSourceProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->supportUiStorageProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/SupportUiStorage;

    iget-object v2, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->requestProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/RequestProvider;

    iget-object v3, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->mainThreadExecutorProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->backgroundThreadExecutorProvider:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->repository(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;Lzendesk/support/SupportUiStorage;Lzendesk/support/RequestProvider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    move-result-object v0

    return-object v0
.end method
