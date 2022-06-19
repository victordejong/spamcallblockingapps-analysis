.class public final Lcom/facebook/ads/redexgen/X/2w;
.super Lcom/facebook/ads/redexgen/X/Df;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/text/TextRenderer$ReplacementState;,
        Lcom/facebook/ads/internal/exoplayer2/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A03:Lcom/facebook/ads/redexgen/X/Uz;

.field public A04:Lcom/facebook/ads/redexgen/X/Ba;

.field public A05:Lcom/facebook/ads/redexgen/X/BX;

.field public A06:Lcom/facebook/ads/redexgen/X/BX;

.field public A07:Z

.field public A08:Z

.field public final A09:Landroid/os/Handler;

.field public final A0A:Lcom/facebook/ads/redexgen/X/AM;

.field public final A0B:Lcom/facebook/ads/redexgen/X/GN;

.field public final A0C:Lcom/facebook/ads/redexgen/X/GO;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fagSsoac43UJSJG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PL0Df5XObPsMjoFT3sU6Lp83XbviyP8R"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "k75ap2fxOZvkqr2FjEQ9d3Y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qEZm9kPptvCV49j1bDgJYwonF92a"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8QH8MqTnW7KMzd9bL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CjrIcpNXno9M2QOeMZvTD2WdktHrPs5P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AfT76Pf2kDJi2th"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sZbuEqgSWLt9Albo4x4yfDH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    .line 7323
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GO;Landroid/os/Looper;)V
    .locals 1

    .line 7324
    sget-object v0, Lcom/facebook/ads/redexgen/X/GN;->A00:Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/2w;-><init>(Lcom/facebook/ads/redexgen/X/GO;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 7325
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GO;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/GN;)V
    .locals 1

    .line 7326
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;-><init>(I)V

    .line 7327
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A0C:Lcom/facebook/ads/redexgen/X/GO;

    .line 7328
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A09:Landroid/os/Handler;

    .line 7329
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/2w;->A0B:Lcom/facebook/ads/redexgen/X/GN;

    .line 7330
    new-instance v0, Lcom/facebook/ads/redexgen/X/AM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A0A:Lcom/facebook/ads/redexgen/X/AM;

    .line 7331
    return-void

    .line 7332
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private A00()J
    .locals 2

    .line 7333
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A06:Lcom/facebook/ads/redexgen/X/BX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BX;->A6Y()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 7334
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 7335
    :goto_0
    return-wide v0

    .line 7336
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A06:Lcom/facebook/ads/redexgen/X/BX;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->A6X(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private A01()V
    .locals 1

    .line 7337
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2w;->A06(Ljava/util/List;)V

    .line 7338
    return-void
.end method

.method private A02()V
    .locals 2

    .line 7339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    .line 7340
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A01:I

    .line 7341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A06:Lcom/facebook/ads/redexgen/X/BX;

    if-eqz v0, :cond_0

    .line 7342
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BX;->A08()V

    .line 7343
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A06:Lcom/facebook/ads/redexgen/X/BX;

    .line 7344
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A05:Lcom/facebook/ads/redexgen/X/BX;

    if-eqz v0, :cond_1

    .line 7345
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BX;->A08()V

    .line 7346
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A05:Lcom/facebook/ads/redexgen/X/BX;

    .line 7347
    :cond_1
    return-void
.end method

.method private A03()V
    .locals 1

    .line 7348
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A02()V

    .line 7349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bi;->ADS()V

    .line 7350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    .line 7351
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A00:I

    .line 7352
    return-void
.end method

.method private A04()V
    .locals 2

    .line 7353
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A03()V

    .line 7354
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A0B:Lcom/facebook/ads/redexgen/X/GN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GN;->A4E(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    .line 7355
    return-void
.end method

.method private A05(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;)V"
        }
    .end annotation

    .line 7356
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A0C:Lcom/facebook/ads/redexgen/X/GO;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GO;->AAG(Ljava/util/List;)V

    .line 7357
    return-void
.end method

.method private A06(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;)V"
        }
    .end annotation

    .line 7358
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A09:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 7359
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7360
    :goto_0
    return-void

    .line 7361
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2w;->A05(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final A12()V
    .locals 1

    .line 7362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 7363
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A01()V

    .line 7364
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A03()V

    .line 7365
    return-void
.end method

.method public final A15(JZ)V
    .locals 4

    .line 7366
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A01()V

    .line 7367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A07:Z

    .line 7368
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A08:Z

    .line 7369
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A00:I

    if-eqz v0, :cond_0

    .line 7370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A04()V

    .line 7371
    :goto_0
    return-void

    .line 7372
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A02()V

    .line 7373
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    const-string v1, "SIdEizz9oP1X0InrrFd2Zym6xF4ie8Hi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Bi;->flush()V

    goto :goto_0
.end method

.method public final A17([Lcom/facebook/ads/internal/exoplayer2/Format;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7374
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 7375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    if-eqz v0, :cond_0

    .line 7376
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A00:I

    .line 7377
    :goto_0
    return-void

    .line 7378
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A0B:Lcom/facebook/ads/redexgen/X/GN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GN;->A4E(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    goto :goto_0
.end method

.method public final A8J()Z
    .locals 1

    .line 7379
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A08:Z

    return v0
.end method

.method public final A8U()Z
    .locals 1

    .line 7380
    const/4 v0, 0x1

    return v0
.end method

.method public final ADf(JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7381
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A08:Z

    if-eqz v0, :cond_0

    .line 7382
    return-void

    .line 7383
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A05:Lcom/facebook/ads/redexgen/X/BX;

    if-nez v0, :cond_1

    .line 7384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Uz;->AEU(J)V

    .line 7385
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bi;->A4j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A05:Lcom/facebook/ads/redexgen/X/BX;

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/GM; {:try_start_0 .. :try_end_0} :catch_0

    .line 7386
    :catch_0
    move-exception v1

    .line 7387
    .local p0, "e":Lcom/facebook/ads/redexgen/X/GM;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0

    .line 7388
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/GM;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A7Q()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    .line 7389
    return-void

    .line 7390
    :cond_2
    const/4 v8, 0x0

    .line 7391
    .local p0, "textRendererNeedsUpdate":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A06:Lcom/facebook/ads/redexgen/X/BX;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 7392
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A00()J

    move-result-wide v1

    .line 7393
    .local v4, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v0, v1, p1

    if-gtz v0, :cond_3

    .line 7394
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A01:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A01:I

    .line 7395
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A00()J

    move-result-wide v1

    .line 7396
    const/4 v8, 0x1

    goto :goto_1

    .line 7397
    .end local v4    # "subtitleNextEventTimeUs":J
    :cond_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2w;->A05:Lcom/facebook/ads/redexgen/X/BX;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    const-string v1, "XY0BtpFryTh5vJ9OnDecIRSpslOi5uhK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v3, 0x0

    if-eqz v6, :cond_4

    .line 7398
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7399
    if-nez v8, :cond_4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A00()J

    move-result-wide v6

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v6, v1

    if-nez v0, :cond_4

    .line 7400
    iget v6, p0, Lcom/facebook/ads/redexgen/X/2w;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    const-string v1, "mbnDFqY2K95bUayMi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "jZB4HApNBiduyvnow8cew7gbgOu4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v6, v5, :cond_7

    .line 7401
    :goto_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A04()V

    .line 7402
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 7403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A06:Lcom/facebook/ads/redexgen/X/BX;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BX;->A67(J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2w;->A06(Ljava/util/List;)V

    .line 7404
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A00:I

    if-ne v0, v5, :cond_a

    .line 7405
    return-void

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    const-string v1, "MeHVLRPd9fQTHEeBi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "YXb6olWsbop2pyVFpyT7RkPVUyda"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v6, v5, :cond_7

    goto :goto_2

    .line 7406
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2w;->A02()V

    .line 7407
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/2w;->A08:Z

    goto :goto_3

    .line 7408
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A05:Lcom/facebook/ads/redexgen/X/BX;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/WY;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_4

    .line 7409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A06:Lcom/facebook/ads/redexgen/X/BX;

    if-eqz v0, :cond_9

    .line 7410
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BX;->A08()V

    .line 7411
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A05:Lcom/facebook/ads/redexgen/X/BX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A06:Lcom/facebook/ads/redexgen/X/BX;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    .line 7412
    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A0D:[Ljava/lang/String;

    const-string v1, "X2bpaAWybcYqy3FAGHkwIjlm6aPwbX20"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/2w;->A05:Lcom/facebook/ads/redexgen/X/BX;

    .line 7413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A06:Lcom/facebook/ads/redexgen/X/BX;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BX;->A6v(J)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A01:I

    .line 7414
    const/4 v8, 0x1

    goto :goto_3

    .line 7415
    :cond_a
    :goto_4
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A07:Z

    if-nez v0, :cond_f

    .line 7416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    if-nez v0, :cond_b

    .line 7417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bi;->A4i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ba;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    .line 7418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    if-nez v0, :cond_b

    goto :goto_6

    .line 7419
    :cond_b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A00:I

    if-ne v0, v4, :cond_c

    .line 7420
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A02(I)V

    .line 7421
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bi;->ADC(Ljava/lang/Object;)V

    .line 7422
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    .line 7423
    iput v5, p0, Lcom/facebook/ads/redexgen/X/2w;->A00:I

    goto :goto_7

    .line 7424
    :cond_c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2w;->A0A:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A10(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I

    move-result v1

    .line 7425
    .local v2, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_e

    .line 7426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7427
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/2w;->A07:Z

    .line 7428
    :goto_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Uz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bi;->ADC(Ljava/lang/Object;)V

    .line 7429
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    goto :goto_4

    .line 7430
    :cond_d
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A0A:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-wide v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Ba;->A00:J

    .line 7431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WZ;->A08()V

    goto :goto_5

    .line 7432
    :cond_e
    const/4 v0, -0x3

    if-ne v1, v0, :cond_a

    .line 7433
    return-void

    .line 7434
    :goto_6
    return-void

    .line 7435
    :goto_7
    return-void

    .line 7436
    :cond_f
    return-void
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/GM; {:try_start_1 .. :try_end_1} :catch_1

    .line 7437
    :catch_1
    move-exception v1

    .line 7438
    .local p1, "e":Lcom/facebook/ads/redexgen/X/GM;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEv(Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 2

    .line 7439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2w;->A0B:Lcom/facebook/ads/redexgen/X/GN;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GN;->AEw(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7440
    const/4 v1, 0x0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0x(Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 7441
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IO;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7442
    const/4 v0, 0x1

    return v0

    .line 7443
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 7444
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 7445
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2w;->A05(Ljava/util/List;)V

    .line 7446
    const/4 v0, 0x1

    return v0

    .line 7447
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
