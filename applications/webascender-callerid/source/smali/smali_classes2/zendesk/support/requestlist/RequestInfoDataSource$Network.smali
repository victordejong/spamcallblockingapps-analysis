.class public Lzendesk/support/requestlist/RequestInfoDataSource$Network;
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
    name = "Network"
.end annotation


# instance fields
.field private final requestProvider:Lzendesk/support/RequestProvider;


# direct methods
.method constructor <init>(Lzendesk/support/RequestProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Network;->requestProvider:Lzendesk/support/RequestProvider;

    return-void
.end method

.method static synthetic access$500(Lzendesk/support/requestlist/RequestInfoDataSource$Network;Lzendesk/support/Request;Z)Lzendesk/support/requestlist/RequestInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/requestlist/RequestInfoDataSource$Network;->map(Lzendesk/support/Request;Z)Lzendesk/support/requestlist/RequestInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/support/requestlist/RequestInfoDataSource$Network;)Lzendesk/support/RequestProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Network;->requestProvider:Lzendesk/support/RequestProvider;

    return-object p0
.end method

.method private map(Lzendesk/support/Request;Z)Lzendesk/support/requestlist/RequestInfo;
    .locals 15

    move-object v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lzendesk/support/Request;->getFirstComment()Lzendesk/support/Comment;

    move-result-object v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lzendesk/support/Request;->getLastComment()Lzendesk/support/Comment;

    move-result-object v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lzendesk/support/Request;->getLastCommentingAgents()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lzendesk/support/requestlist/RequestInfoDataSource$Network$2;

    invoke-direct {v4, p0}, Lzendesk/support/requestlist/RequestInfoDataSource$Network$2;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Network;)V

    invoke-static {v3, v4}, Lg/k/d/a;->f(Ljava/util/Collection;Lg/k/a/a;)Ljava/util/List;

    move-result-object v3

    .line 4
    new-instance v4, Lzendesk/support/requestlist/RequestInfoDataSource$Network$3;

    invoke-direct {v4, p0}, Lzendesk/support/requestlist/RequestInfoDataSource$Network$3;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Network;)V

    invoke-static {v3, v4}, Lg/k/d/a;->k(Ljava/util/Collection;Lg/k/a/a;)Ljava/util/List;

    move-result-object v11

    .line 5
    new-instance v3, Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual/range {p1 .. p1}, Lzendesk/support/Request;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lzendesk/support/Request;->getStatus()Lzendesk/support/RequestStatus;

    move-result-object v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lzendesk/support/Request;->getPublicUpdatedAt()Ljava/util/Date;

    move-result-object v10

    new-instance v12, Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    .line 7
    invoke-virtual {v1}, Lzendesk/support/Comment;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lzendesk/support/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Lzendesk/support/Comment;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v4, v5, v1}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    new-instance v13, Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    .line 9
    invoke-virtual {v2}, Lzendesk/support/Comment;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lzendesk/support/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    .line 10
    invoke-virtual {v2}, Lzendesk/support/Comment;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v1, v4, v2}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    const-string v6, ""

    move-object v5, v3

    move/from16 v9, p2

    invoke-direct/range {v5 .. v14}, Lzendesk/support/requestlist/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/support/RequestStatus;ZLjava/util/Date;Ljava/util/List;Lzendesk/support/requestlist/RequestInfo$MessageInfo;Lzendesk/support/requestlist/RequestInfo$MessageInfo;Ljava/util/Set;)V

    return-object v3
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
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Network;->requestProvider:Lzendesk/support/RequestProvider;

    new-instance v1, Lzendesk/support/requestlist/RequestInfoDataSource$Network$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/requestlist/RequestInfoDataSource$Network$1;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Network;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Lzendesk/support/RequestProvider;->getAllRequests(Lcom/zendesk/service/f;)V

    return-void
.end method
