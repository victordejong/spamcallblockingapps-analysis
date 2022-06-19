.class public final Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/request/ComponentPersistence;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final queueProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/request/ComponentPersistence$PersistenceQueue;",
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
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/SupportUiStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/ComponentPersistence$PersistenceQueue;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;->supportUiStorageProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;->queueProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;->executorServiceProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/SupportUiStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/ComponentPersistence$PersistenceQueue;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providesPersistenceComponent(Lzendesk/support/SupportUiStorage;Ljava/lang/Object;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/ComponentPersistence;
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-static {p0, p1, p2}, Lzendesk/support/request/RequestModule;->providesPersistenceComponent(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/ComponentPersistence$PersistenceQueue;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/ComponentPersistence;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/request/ComponentPersistence;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;->get()Lzendesk/support/request/ComponentPersistence;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/request/ComponentPersistence;
    .locals 3

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;->supportUiStorageProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/SupportUiStorage;

    iget-object v1, p0, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;->queueProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;->executorServiceProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;->providesPersistenceComponent(Lzendesk/support/SupportUiStorage;Ljava/lang/Object;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/ComponentPersistence;

    move-result-object v0

    return-object v0
.end method
