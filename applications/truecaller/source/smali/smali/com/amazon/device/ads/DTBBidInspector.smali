.class public Lcom/amazon/device/ads/DTBBidInspector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;
    }
.end annotation


# static fields
.field private static final INSPECTION_PERIOD:I = 0x2bf20

.field private static final RETENTION_INTERVAL:I = 0x75300

.field public static theInstance:Lcom/amazon/device/ads/DTBBidInspector;


# instance fields
.field private bids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazon/device/ads/DTBBidInspector;

    invoke-direct {v0}, Lcom/amazon/device/ads/DTBBidInspector;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBBidInspector;->theInstance:Lcom/amazon/device/ads/DTBBidInspector;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBBidInspector;->bids:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/amazon/device/ads/DTBBidInspector;->timer:Ljava/util/Timer;

    .line 4
    new-instance v2, Lcom/amazon/device/ads/DTBBidInspector$1;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/DTBBidInspector$1;-><init>(Lcom/amazon/device/ads/DTBBidInspector;)V

    const-wide/32 v3, 0x2bf20

    const-wide/32 v5, 0x2bf20

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/amazon/device/ads/DTBBidInspector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBBidInspector;->purge()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/DTBBidInspector;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DTBBidInspector;->theInstance:Lcom/amazon/device/ads/DTBBidInspector;

    return-object v0
.end method

.method private declared-synchronized purge()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/amazon/device/ads/DTBBidInspector;->bids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;

    .line 3
    iget-wide v5, v5, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;->bidTime:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x75300

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amazon/device/ads/DTBBidInspector;->bids:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addBid(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;-><init>(Lcom/amazon/device/ads/DTBBidInspector;)V

    .line 2
    iput-object p1, v0, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;->bidId:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;->bidTime:J

    .line 4
    iget-object p1, p0, Lcom/amazon/device/ads/DTBBidInspector;->bids:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized wasUsed(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBBidInspector;->bids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;

    .line 2
    iget-object v2, v1, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;->bidId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/amazon/device/ads/DTBBidInspector;->bids:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
