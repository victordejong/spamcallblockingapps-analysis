.class public Lcom/amazon/device/ads/DTBFetchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;,
        Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;
    }
.end annotation


# static fields
.field private static final DEPTH:I = 0x3

.field private static INSPECTION_INTERVAL_MS:I = 0x493e0

.field private static final LOG_TAG:Ljava/lang/String; = "DTBFetchManager"


# instance fields
.field private isSmartBanner:Z

.field private loader:Lcom/amazon/device/ads/DTBAdLoader;

.field private responses:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field public timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBAdLoader;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->started:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->timer:Ljava/util/Timer;

    .line 4
    invoke-interface {p1}, Lcom/amazon/device/ads/DTBAdLoader;->pauseAutoRefresh()V

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/amazon/device/ads/DTBAdLoader;->getSlotGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No Slot Group Set for This Ad Request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/amazon/device/ads/DTBFetchManager;->isSmartBanner:Z

    .line 8
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBFetchManager;->init(Lcom/amazon/device/ads/DTBAdLoader;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/amazon/device/ads/DTBFetchManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBFetchManager;->purgeResponses()V

    return-void
.end method

.method public static synthetic access$100(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBFetchManager;->addResponse(Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/amazon/device/ads/DTBFetchManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBFetchManager;->initiateRequest()V

    return-void
.end method

.method private addResponse(Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private init(Lcom/amazon/device/ads/DTBAdLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager;->loader:Lcom/amazon/device/ads/DTBAdLoader;

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBFetchManager;->started:Z

    return-void
.end method

.method private initiateRequest()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->loader:Lcom/amazon/device/ads/DTBAdLoader;

    check-cast v0, Lcom/amazon/device/ads/DTBAdRequest;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdRequest;->recycle()V

    .line 3
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->isSmartBanner:Z

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->loader:Lcom/amazon/device/ads/DTBAdLoader;

    new-instance v1, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;-><init>(Lcom/amazon/device/ads/DTBFetchManager;)V

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBAdLoader;->loadSmartBanner(Lcom/amazon/device/ads/DTBAdCallback;)V
    :try_end_0
    .catch Lcom/amazon/device/ads/DTBLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBFetchManager;->stop()V

    const-string v0, "DTBLoadException"

    const-string v1, "No suitable Slot Size"

    .line 6
    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->loader:Lcom/amazon/device/ads/DTBAdLoader;

    new-instance v1, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;-><init>(Lcom/amazon/device/ads/DTBFetchManager;)V

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBAdLoader;->loadAd(Lcom/amazon/device/ads/DTBAdCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private purgeResponses()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    monitor-enter v1

    .line 3
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 5
    iget-object v4, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;

    .line 6
    iget-wide v4, v4, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->timestamp:J

    sub-long v4, v2, v4

    invoke-static {}, Lcom/amazon/device/ads/DTBFetchFactory;->getInstance()Lcom/amazon/device/ads/DTBFetchFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/ads/DTBFetchFactory;->getExpirationInMillis()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;

    .line 8
    iget-object v5, v4, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v5}, Lcom/amazon/device/ads/DTBAdResponse;->getBidId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 9
    new-instance v5, Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;

    iget-object v6, v4, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v6}, Lcom/amazon/device/ads/DTBAdResponse;->getBidId()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v4}, Lcom/amazon/device/ads/DTBAdResponse;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBFetchManager;->initiateRequest()V

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBFetchManager;->submitExpiredBidsReport(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private submitExpiredBidsReport(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsProcessor;->getInstance()Lcom/amazon/device/ads/DTBMetricsProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->submitExpiredReport(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispense()Lcom/amazon/device/ads/DTBAdResponse;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;

    .line 3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 4
    :try_start_2
    iget-object v0, v2, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBFetchManager;->initiateRequest()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 6
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 7
    sget-object v2, Lcom/amazon/device/ads/DTBFetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Fail to execute dispense method"

    invoke-static {v2, v3}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v2, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    const-string v4, "Fail to execute dispense method"

    invoke-static {v2, v3, v4, v1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peek()Lcom/amazon/device/ads/DTBAdResponse;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;

    .line 3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 4
    :try_start_2
    iget-object v0, v2, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 6
    sget-object v2, Lcom/amazon/device/ads/DTBFetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Fail to execute peek method"

    invoke-static {v2, v3}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v2, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    const-string v4, "Fail to execute peek method"

    invoke-static {v2, v3, v4, v1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public declared-synchronized start()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->started:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/amazon/device/ads/DTBFetchManager;->timer:Ljava/util/Timer;

    .line 3
    new-instance v2, Lcom/amazon/device/ads/DTBFetchManager$1;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/DTBFetchManager$1;-><init>(Lcom/amazon/device/ads/DTBFetchManager;)V

    const-wide/16 v3, 0x0

    sget v0, Lcom/amazon/device/ads/DTBFetchManager;->INSPECTION_INTERVAL_MS:I

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->started:Z

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBFetchManager;->initiateRequest()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    :try_start_1
    sget-object v1, Lcom/amazon/device/ads/DTBFetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute start method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v2, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    const-string v3, "Fail to execute start method"

    invoke-static {v1, v2, v3, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->timer:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->started:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    sget-object v1, Lcom/amazon/device/ads/DTBFetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute stop method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v2, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    const-string v3, "Fail to execute stop method"

    invoke-static {v1, v2, v3, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public submitWasteQueueReport()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/amazon/device/ads/DTBFetchManager;->responses:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;

    .line 4
    iget-object v3, v2, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v3}, Lcom/amazon/device/ads/DTBAdResponse;->getBidId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    new-instance v3, Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;

    iget-object v4, v2, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v4}, Lcom/amazon/device/ads/DTBAdResponse;->getBidId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdResponse;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBFetchManager;->submitExpiredBidsReport(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method
