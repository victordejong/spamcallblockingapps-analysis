.class public final Lcom/facebook/ads/redexgen/X/Wk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AX;
.implements Lcom/facebook/ads/redexgen/X/E6;
.implements Lcom/facebook/ads/redexgen/X/BG;
.implements Lcom/facebook/ads/redexgen/X/J9;
.implements Lcom/facebook/ads/redexgen/X/Fb;
.implements Lcom/facebook/ads/redexgen/X/HL;
.implements Lcom/facebook/ads/redexgen/X/Bx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ar;,
        Lcom/facebook/ads/redexgen/X/Aq;,
        Lcom/facebook/ads/redexgen/X/Ap;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ac;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/MonotonicNonNull;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/An;

.field public final A02:Lcom/facebook/ads/redexgen/X/Aq;

.field public final A03:Lcom/facebook/ads/redexgen/X/I9;

.field public final A04:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/At;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oWxliEG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "84CCzfJSWHAMzlT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dVPYU5AFfnLld9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "202VfNqPV04zLFr42xUQnFXcv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6C2OHs0d6U2aNpx0mThNdUqCMJf7H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "j36hHuSQknS9Y2BeP2DWP06EygcBzL55"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WN9koNHhTr4SbLKtJDKTY2JTPC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "f2Eog"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    .line 64657
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ac;Lcom/facebook/ads/redexgen/X/I9;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/Ac;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64659
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    .line 64660
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Lcom/facebook/ads/redexgen/X/I9;

    .line 64661
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 64662
    new-instance v0, Lcom/facebook/ads/redexgen/X/Aq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Aq;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    .line 64663
    new-instance v0, Lcom/facebook/ads/redexgen/X/An;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/An;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A01:Lcom/facebook/ads/redexgen/X/An;

    .line 64664
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/As;
    .locals 1

    .line 64665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A03()Lcom/facebook/ads/redexgen/X/Ar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/Ar;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v0

    return-object v0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/As;
    .locals 1

    .line 64666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A04()Lcom/facebook/ads/redexgen/X/Ar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/Ar;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/As;
    .locals 1

    .line 64667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A05()Lcom/facebook/ads/redexgen/X/Ar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/Ar;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v0

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/As;
    .locals 1

    .line 64668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A06()Lcom/facebook/ads/redexgen/X/Ar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A05(Lcom/facebook/ads/redexgen/X/Ar;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v0

    return-object v0
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;
    .locals 15
    .param p2    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64669
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64670
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A03:Lcom/facebook/ads/redexgen/X/I9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I9;->A55()J

    move-result-wide v4

    .line 64671
    .local v0, "realtimeMs":J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A6D()Lcom/facebook/ads/redexgen/X/Ao;

    move-result-object v6

    .line 64672
    .local v6, "timeline":Lcom/facebook/ads/redexgen/X/Ao;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A6E()I

    move-result v0

    move/from16 v7, p1

    move-object/from16 v8, p2

    if-ne v7, v0, :cond_2

    .line 64673
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64674
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    .line 64675
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A68()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/FL;->A00:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    .line 64676
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A69()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/FL;->A01:I

    if-ne v2, v0, :cond_0

    .line 64677
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A6B()J

    move-result-wide v9

    .line 64678
    .local v0, "eventPositionMs":J
    :goto_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A5p()J

    move-result-wide v13

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A66()J

    move-result-wide v2

    sub-long/2addr v13, v2

    .line 64679
    .local v2, "bufferedDurationMs":J
    new-instance v3, Lcom/facebook/ads/redexgen/X/As;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    .line 64680
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A6B()J

    move-result-wide v11

    .end local v6    # "timeline":Lcom/facebook/ads/redexgen/X/Ao;
    .local v9, "timeline":Lcom/facebook/ads/redexgen/X/Ao;
    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/As;-><init>(JLcom/facebook/ads/redexgen/X/Ao;ILcom/facebook/ads/redexgen/X/FL;JJJ)V

    .line 64681
    return-object v3

    .line 64682
    :cond_0
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 64683
    .end local v7
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A66()J

    move-result-wide v9

    .restart local v7
    goto :goto_0

    .line 64684
    .end local v7
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ao;->A01()I

    move-result v0

    if-ge v7, v0, :cond_3

    if-eqz v8, :cond_4

    .line 64685
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64686
    .end local v7
    :cond_3
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 64687
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wk;->A01:Lcom/facebook/ads/redexgen/X/An;

    invoke-virtual {v6, v7, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0B(ILcom/facebook/ads/redexgen/X/An;)Lcom/facebook/ads/redexgen/X/An;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/An;->A00()J

    move-result-wide v9

    .restart local v7
    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Ar;)Lcom/facebook/ads/redexgen/X/As;
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/Ar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64688
    if-nez p1, :cond_0

    .line 64689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ac;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A6E()I

    move-result v1

    .line 64690
    .local p0, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Aq;->A07(I)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v0

    .line 64691
    .local p1, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/FL;
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v0

    return-object v0

    .line 64692
    .end local p0    # "windowIndex":I
    .end local p1    # "mediaPeriodId":Lcom/facebook/ads/redexgen/X/FL;
    :cond_0
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Ar;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ar;->A01:Lcom/facebook/ads/redexgen/X/FL;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A06()V
    .locals 6

    .line 64693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A0F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64694
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v4

    .line 64695
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A09()V

    .line 64696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const-string v1, "PBkwxeOlbvYzAOz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "zMCnce58Qhbdr93RoMzV7EOLVlkYq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/At;

    .line 64697
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v3, v4}, Lcom/facebook/ads/redexgen/X/At;->onSeekStarted(Lcom/facebook/ads/redexgen/X/As;)V

    .line 64698
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64699
    .end local p0    # "eventTime":Lcom/facebook/ads/redexgen/X/As;
    :cond_1
    return-void
.end method

.method public final A07()V
    .locals 5

    .line 64700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    .line 64701
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A01(Lcom/facebook/ads/redexgen/X/Aq;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64702
    .local p0, "activeMediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const-string v1, "gG2PlvUwOW39eC8R"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ar;

    .line 64703
    .local v1, "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ar;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ar;->A00:I

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ar;->A01:Lcom/facebook/ads/redexgen/X/FL;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Wk;->ABG(ILcom/facebook/ads/redexgen/X/FL;)V

    .line 64704
    .end local v1    # "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ar;
    goto :goto_0

    .line 64705
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9s(Ljava/lang/String;JJ)V
    .locals 8

    .line 64706
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64707
    .local v3, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/At;

    .line 64708
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/At;
    const/4 v4, 0x1

    move-object v5, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/At;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/As;ILjava/lang/String;J)V

    .line 64709
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64710
    :cond_0
    return-void
.end method

.method public final A9t(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 4

    .line 64711
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A00()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64712
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/At;

    .line 64713
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/At;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/At;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/As;ILcom/facebook/ads/redexgen/X/Bj;)V

    .line 64714
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64715
    :cond_0
    return-void
.end method

.method public final A9u(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 4

    .line 64716
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64717
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/At;

    .line 64718
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/At;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/At;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/As;ILcom/facebook/ads/redexgen/X/Bj;)V

    .line 64719
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64720
    :cond_0
    return-void
.end method

.method public final A9v(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 4

    .line 64721
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64722
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/At;

    .line 64723
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/At;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/At;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/As;ILcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 64724
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64725
    :cond_0
    return-void
.end method

.method public final A9w(I)V
    .locals 3

    .line 64726
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64727
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64728
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/At;->onAudioSessionId(Lcom/facebook/ads/redexgen/X/As;I)V

    .line 64729
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64730
    :cond_0
    return-void
.end method

.method public final A9x(IJJ)V
    .locals 12

    .line 64731
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v6

    .line 64732
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const-string v1, "uqo4gq1KBxiMktN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Ndm2ibG2UK8Su1apjnSt0jhcojAUZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/At;

    .line 64733
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/At;
    move-wide v8, p2

    move-wide/from16 v10, p4

    move v7, p1

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/At;->onAudioUnderrun(Lcom/facebook/ads/redexgen/X/As;IJJ)V

    .line 64734
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64735
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9z(IJJ)V
    .locals 2

    .line 64736
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A01()Lcom/facebook/ads/redexgen/X/As;

    .line 64737
    .local v1, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64738
    .local p7, "listener":Lcom/facebook/ads/redexgen/X/At;
    .end local p7
    goto :goto_0

    .line 64739
    :cond_0
    return-void
.end method

.method public final AAN(ILcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/Fa;)V
    .locals 3
    .param p2    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64740
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64741
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64742
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2, p3}, Lcom/facebook/ads/redexgen/X/At;->onDownstreamFormatChanged(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/redexgen/X/Fa;)V

    .line 64743
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64744
    :cond_0
    return-void
.end method

.method public final AAO()V
    .locals 3

    .line 64745
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64746
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64747
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->onDrmKeysLoaded(Lcom/facebook/ads/redexgen/X/As;)V

    .line 64748
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64749
    :cond_0
    return-void
.end method

.method public final AAP()V
    .locals 3

    .line 64750
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64751
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64752
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->onDrmKeysRemoved(Lcom/facebook/ads/redexgen/X/As;)V

    .line 64753
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64754
    :cond_0
    return-void
.end method

.method public final AAQ()V
    .locals 3

    .line 64755
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64756
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64757
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->onDrmKeysRestored(Lcom/facebook/ads/redexgen/X/As;)V

    .line 64758
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64759
    :cond_0
    return-void
.end method

.method public final AAR(Ljava/lang/Exception;)V
    .locals 3

    .line 64760
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64761
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64762
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/At;->onDrmSessionManagerError(Lcom/facebook/ads/redexgen/X/As;Ljava/lang/Exception;)V

    .line 64763
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64764
    :cond_0
    return-void
.end method

.method public final AAS(IJ)V
    .locals 3

    .line 64765
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A00()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64766
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64767
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/At;->onDroppedVideoFrames(Lcom/facebook/ads/redexgen/X/As;IJ)V

    .line 64768
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64769
    :cond_0
    return-void
.end method

.method public final AAz(ILcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64770
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    .line 64771
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64772
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64773
    :cond_0
    return-void
.end method

.method public final AB1(ILcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64774
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    .line 64775
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64776
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64777
    :cond_0
    return-void
.end method

.method public final AB4(ILcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;Ljava/io/IOException;Z)V
    .locals 8
    .param p2    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64778
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64779
    .local v7, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/At;

    .line 64780
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/At;
    move-object v5, p4

    move-object v4, p3

    move v7, p6

    move-object v6, p5

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/At;->onLoadError(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;Ljava/io/IOException;Z)V

    .line 64781
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64782
    :cond_0
    return-void
.end method

.method public final AB6(ILcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64783
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    .line 64784
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64785
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64786
    :cond_0
    return-void
.end method

.method public final AB8(Z)V
    .locals 6

    .line 64787
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v5

    .line 64788
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const-string v1, "61iKEbH7Elk598B8IvoVeyiFcghmzjBq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/At;

    .line 64789
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v3, v5, p1}, Lcom/facebook/ads/redexgen/X/At;->onLoadingChanged(Lcom/facebook/ads/redexgen/X/As;Z)V

    .line 64790
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64791
    :cond_1
    return-void
.end method

.method public final ABF(ILcom/facebook/ads/redexgen/X/FL;)V
    .locals 3

    .line 64792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Aq;->A0B(ILcom/facebook/ads/redexgen/X/FL;)V

    .line 64793
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64794
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64795
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->onMediaPeriodCreated(Lcom/facebook/ads/redexgen/X/As;)V

    .line 64796
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64797
    :cond_0
    return-void
.end method

.method public final ABG(ILcom/facebook/ads/redexgen/X/FL;)V
    .locals 6

    .line 64798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Aq;->A0C(ILcom/facebook/ads/redexgen/X/FL;)V

    .line 64799
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v4

    .line 64800
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const-string v1, "xQuAJnMHmsnkUtn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "I7nuhInD03G6TyFgZN1tEp7XA66Po"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64801
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/At;->onMediaPeriodReleased(Lcom/facebook/ads/redexgen/X/As;)V

    .line 64802
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64803
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABJ(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 64804
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64805
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64806
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/At;->onMetadata(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 64807
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64808
    :cond_0
    return-void
.end method

.method public final ABZ(Lcom/facebook/ads/redexgen/X/AU;)V
    .locals 6

    .line 64809
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v5

    .line 64810
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/At;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64811
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/At;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const-string v1, "6kCd761y4Sm0JC2HIy7vlDu4Zge9adCZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3, v5, p1}, Lcom/facebook/ads/redexgen/X/At;->onPlaybackParametersChanged(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/redexgen/X/AU;)V

    .line 64812
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64813
    :cond_1
    return-void
.end method

.method public final ABb(Lcom/facebook/ads/redexgen/X/A9;)V
    .locals 6

    .line 64814
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v5

    .line 64815
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const-string v1, "4uLQlqFUz3TKu9PUP8Ua0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/At;

    .line 64816
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v3, v5, p1}, Lcom/facebook/ads/redexgen/X/At;->onPlayerError(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/redexgen/X/A9;)V

    .line 64817
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64818
    :cond_1
    return-void
.end method

.method public final ABd(ZI)V
    .locals 3

    .line 64819
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64820
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64821
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/At;->onPlayerStateChanged(Lcom/facebook/ads/redexgen/X/As;ZI)V

    .line 64822
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64823
    :cond_0
    return-void
.end method

.method public final ABf(I)V
    .locals 3

    .line 64824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Aq;->A0A(I)V

    .line 64825
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64826
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64827
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/At;->onPositionDiscontinuity(Lcom/facebook/ads/redexgen/X/As;I)V

    .line 64828
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64829
    :cond_0
    return-void
.end method

.method public final ABo(ILcom/facebook/ads/redexgen/X/FL;)V
    .locals 3

    .line 64830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Aq;->A0D(ILcom/facebook/ads/redexgen/X/FL;)V

    .line 64831
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wk;->A04(ILcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64832
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64833
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->onReadingStarted(Lcom/facebook/ads/redexgen/X/As;)V

    .line 64834
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64835
    :cond_0
    return-void
.end method

.method public final ABs(Landroid/view/Surface;)V
    .locals 6

    .line 64836
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v5

    .line 64837
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A05:[Ljava/lang/String;

    const-string v1, "zEYrHw08cBp169ZitgaAlaUGutwvX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64838
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v5, p1}, Lcom/facebook/ads/redexgen/X/At;->onRenderedFirstFrame(Lcom/facebook/ads/redexgen/X/As;Landroid/view/Surface;)V

    .line 64839
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64840
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AC2()V
    .locals 3

    .line 64841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A08()V

    .line 64843
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64844
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64845
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->onSeekProcessed(Lcom/facebook/ads/redexgen/X/As;)V

    .line 64846
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64847
    .end local p0    # "eventTime":Lcom/facebook/ads/redexgen/X/As;
    :cond_0
    return-void
.end method

.method public final ACG(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;I)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/Aq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Aq;->A0E(Lcom/facebook/ads/redexgen/X/Ao;)V

    .line 64849
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64850
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64851
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2, p3}, Lcom/facebook/ads/redexgen/X/At;->onTimelineChanged(Lcom/facebook/ads/redexgen/X/As;I)V

    .line 64852
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64853
    :cond_0
    return-void
.end method

.method public final ACH(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HE;)V
    .locals 3

    .line 64854
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v2

    .line 64855
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/At;

    .line 64856
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/At;
    invoke-interface {v0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/At;->onTracksChanged(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HE;)V

    .line 64857
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64858
    :cond_0
    return-void
.end method

.method public final ACP(Ljava/lang/String;JJ)V
    .locals 8

    .line 64859
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64860
    .local v3, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/At;

    .line 64861
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/At;
    const/4 v4, 0x2

    move-object v5, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/At;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/As;ILjava/lang/String;J)V

    .line 64862
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64863
    :cond_0
    return-void
.end method

.method public final ACQ(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 4

    .line 64864
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A00()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64865
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/At;

    .line 64866
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/At;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/At;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/As;ILcom/facebook/ads/redexgen/X/Bj;)V

    .line 64867
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64868
    :cond_0
    return-void
.end method

.method public final ACR(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 4

    .line 64869
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A02()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64870
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/At;

    .line 64871
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/At;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/At;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/As;ILcom/facebook/ads/redexgen/X/Bj;)V

    .line 64872
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64873
    :cond_0
    return-void
.end method

.method public final ACU(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 4

    .line 64874
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64875
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/At;

    .line 64876
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/At;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/At;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/As;ILcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 64877
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64878
    :cond_0
    return-void
.end method

.method public final ACZ(IIIF)V
    .locals 8

    .line 64879
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wk;->A03()Lcom/facebook/ads/redexgen/X/As;

    move-result-object v3

    .line 64880
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/As;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/At;

    .line 64881
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/At;
    move v5, p2

    move v4, p1

    move v7, p4

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/At;->onVideoSizeChanged(Lcom/facebook/ads/redexgen/X/As;IIIF)V

    .line 64882
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/At;
    goto :goto_0

    .line 64883
    :cond_0
    return-void
.end method
