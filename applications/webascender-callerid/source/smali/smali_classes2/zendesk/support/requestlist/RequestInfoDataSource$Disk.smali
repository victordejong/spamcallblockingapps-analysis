.class public Lzendesk/support/requestlist/RequestInfoDataSource$Disk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/requestlist/RequestInfoDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/requestlist/RequestInfoDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Disk"
.end annotation


# instance fields
.field private final backgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final cacheKey:Ljava/lang/String;

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final supportUiStorage:Lzendesk/support/SupportUiStorage;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzendesk/support/SupportUiStorage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->backgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    .line 5
    iput-object p4, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;)Lzendesk/support/SupportUiStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public load(Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->backgroundThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method save(Ljava/util/List;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo;",
            ">;",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->backgroundThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;

    invoke-direct {v1, p0, p1, p2}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;Ljava/util/List;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
