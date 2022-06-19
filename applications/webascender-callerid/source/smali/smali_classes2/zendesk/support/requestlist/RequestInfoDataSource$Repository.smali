.class public Lzendesk/support/requestlist/RequestInfoDataSource$Repository;
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
    name = "Repository"
.end annotation


# instance fields
.field private final localDataSource:Lzendesk/support/requestlist/RequestInfoDataSource;

.field private final merger:Lzendesk/support/requestlist/RequestInfoMerger;

.field private final remoteDataSource:Lzendesk/support/requestlist/RequestInfoDataSource;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestInfoDataSource;Lzendesk/support/requestlist/RequestInfoDataSource;Lzendesk/support/requestlist/RequestInfoMerger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;->localDataSource:Lzendesk/support/requestlist/RequestInfoDataSource;

    .line 3
    iput-object p2, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;->remoteDataSource:Lzendesk/support/requestlist/RequestInfoDataSource;

    .line 4
    iput-object p3, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;->merger:Lzendesk/support/requestlist/RequestInfoMerger;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/requestlist/RequestInfoDataSource$Repository;)Lzendesk/support/requestlist/RequestInfoMerger;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;->merger:Lzendesk/support/requestlist/RequestInfoMerger;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/requestlist/RequestInfoDataSource$Repository;)Lzendesk/support/requestlist/RequestInfoDataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;->remoteDataSource:Lzendesk/support/requestlist/RequestInfoDataSource;

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
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;->localDataSource:Lzendesk/support/requestlist/RequestInfoDataSource;

    new-instance v1, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Repository;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Lzendesk/support/requestlist/RequestInfoDataSource;->load(Lcom/zendesk/service/f;)V

    return-void
.end method
