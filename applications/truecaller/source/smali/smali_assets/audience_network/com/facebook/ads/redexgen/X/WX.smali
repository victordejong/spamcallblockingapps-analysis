.class public abstract Lcom/facebook/ads/redexgen/X/WX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/facebook/ads/redexgen/X/WZ;",
        "O:",
        "Lcom/facebook/ads/redexgen/X/WY;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Bi<",
        "TI;TO;TE;>;"
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/WZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public A04:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public A05:Z

.field public A06:Z

.field public final A07:Ljava/lang/Object;

.field public final A08:Ljava/lang/Thread;

.field public final A09:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final A0B:[Lcom/facebook/ads/redexgen/X/WZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final A0C:[Lcom/facebook/ads/redexgen/X/WY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Gkl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qMMBfBKIWMYZs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JMr5TMdVlQ7lAxQbe7gmsO3TMTXZHZrx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fplFQmQDWPfBEKatf3t9LdZAMaYE90Yr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qk38PGrA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BZh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ypodQLxrY5Mqx0yNqiahJYpo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WX;->A0D:[Ljava/lang/String;

    .line 63414
    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/WZ;[Lcom/facebook/ads/redexgen/X/WY;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 63415
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "inputBuffers":[Lcom/facebook/ads/redexgen/X/WZ;, "[TI;"
    .local v0, "outputBuffers":[Lcom/facebook/ads/redexgen/X/WY;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63416
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    .line 63417
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A09:Ljava/util/ArrayDeque;

    .line 63418
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A0A:Ljava/util/ArrayDeque;

    .line 63419
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WX;->A0B:[Lcom/facebook/ads/redexgen/X/WZ;

    .line 63420
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    .line 63421
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    if-ge v2, v0, :cond_0

    .line 63422
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A0B:[Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0T()Lcom/facebook/ads/redexgen/X/WZ;

    move-result-object v0

    aput-object v0, v1, v2

    .line 63423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63424
    .end local p0    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WX;->A0C:[Lcom/facebook/ads/redexgen/X/WY;

    .line 63425
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:I

    .line 63426
    const/4 v2, 0x0

    .restart local p0    # "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:I

    if-ge v2, v0, :cond_1

    .line 63427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A0C:[Lcom/facebook/ads/redexgen/X/WY;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0V()Lcom/facebook/ads/redexgen/X/WY;

    move-result-object v0

    aput-object v0, v1, v2

    .line 63428
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63429
    .end local p0    # "i":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Bl;-><init>(Lcom/facebook/ads/redexgen/X/WX;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A08:Ljava/lang/Thread;

    .line 63430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63431
    return-void
.end method

.method private A0K()V
    .locals 1

    .line 63432
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 63434
    :cond_0
    return-void
.end method

.method private A0L()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63435
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 63436
    return-void

    .line 63437
    :cond_0
    throw v0
.end method

.method private A0M()V
    .locals 2

    .line 63438
    .local v1, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63439
    :cond_0
    return-void
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63440
    :catch_0
    move-exception v1

    .line 63441
    .local p0, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/WZ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 63442
    .local v1, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/WZ;, "TI;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WZ;->A07()V

    .line 63443
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WX;->A0B:[Lcom/facebook/ads/redexgen/X/WZ;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    aput-object p1, v2, v1

    .line 63444
    return-void
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/WY;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 63445
    .local v1, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/WY;, "TO;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Be;->A07()V

    .line 63446
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WX;->A0C:[Lcom/facebook/ads/redexgen/X/WY;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:I

    aput-object p1, v2, v1

    .line 63447
    return-void
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/WX;)V
    .locals 0

    .line 63448
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0M()V

    return-void
.end method

.method private A0Q()Z
    .locals 1

    .line 63449
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0R()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63450
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    monitor-enter v2

    .line 63451
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A06:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 63453
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A06:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 63454
    monitor-exit v2

    return v5

    .line 63455
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/WZ;

    .line 63456
    .local v2, "inputBuffer":Lcom/facebook/ads/redexgen/X/WZ;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A0C:[Lcom/facebook/ads/redexgen/X/WY;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:I

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:I

    aget-object v3, v1, v0

    .line 63457
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/WY;, "TO;"
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A05:Z

    .line 63458
    .local v0, "resetDecoder":Z
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/WX;->A05:Z

    .line 63459
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 63460
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63461
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Be;->A00(I)V

    .line 63462
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/WX;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63463
    :cond_4
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Be;->A03()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63464
    const/high16 v0, -0x80000000

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Be;->A00(I)V

    .line 63465
    :cond_5
    :try_start_1
    invoke-virtual {p0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/WX;->A0W(Lcom/facebook/ads/redexgen/X/WZ;Lcom/facebook/ads/redexgen/X/WY;Z)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Ljava/lang/Exception;

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 63466
    :catch_0
    move-exception v0

    .line 63467
    .local p0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WX;->A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Ljava/lang/Exception;

    goto :goto_1

    .line 63468
    .end local p0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/WX;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 63469
    .local p0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/facebook/ads/redexgen/X/WX;->A0D:[Ljava/lang/String;

    const-string v1, "JmdauonVcnINF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "vppaV7cv17cCxaH2hgZaXUeE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/WX;->A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Ljava/lang/Exception;

    .line 63470
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 63471
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/WX;->A0D:[Ljava/lang/String;

    const-string v1, "q0ZgAWd6JYMJo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "B3H8IuJfVBRbzuvGv4HpnNYI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    monitor-enter v6

    .line 63472
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A05:Z

    if-eqz v0, :cond_7

    .line 63473
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/WX;->A0O(Lcom/facebook/ads/redexgen/X/WY;)V

    .line 63474
    :goto_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/WX;->A0N(Lcom/facebook/ads/redexgen/X/WZ;)V

    .line 63475
    monitor-exit v6

    goto :goto_3

    .line 63476
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Be;->A03()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 63477
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A02:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A02:I

    .line 63478
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/WX;->A0O(Lcom/facebook/ads/redexgen/X/WY;)V

    goto :goto_2

    .line 63479
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A02:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    .line 63480
    iput v5, p0, Lcom/facebook/ads/redexgen/X/WX;->A02:I

    .line 63481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 63482
    :goto_3
    return v7

    .line 63483
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 63484
    :goto_4
    :try_start_3
    monitor-exit v1

    .line 63485
    return v5

    .line 63486
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 63487
    .end local v2    # "inputBuffer":Lcom/facebook/ads/redexgen/X/WZ;, "TI;"
    .end local v0    # "resetDecoder":Z
    .end local v0
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method


# virtual methods
.method public final A0S()Lcom/facebook/ads/redexgen/X/WZ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63488
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    monitor-enter v3

    .line 63489
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0L()V

    .line 63490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:Lcom/facebook/ads/redexgen/X/WZ;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 63491
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    if-nez v0, :cond_1

    .line 63492
    const/4 v0, 0x0

    goto :goto_1

    .line 63493
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A0B:[Lcom/facebook/ads/redexgen/X/WZ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    aget-object v0, v1, v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:Lcom/facebook/ads/redexgen/X/WZ;

    .line 63494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:Lcom/facebook/ads/redexgen/X/WZ;

    monitor-exit v3

    return-object v0

    .line 63495
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0T()Lcom/facebook/ads/redexgen/X/WZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public final A0U()Lcom/facebook/ads/redexgen/X/WY;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63496
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 63497
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0L()V

    .line 63498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63499
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 63500
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WY;

    monitor-exit v1

    return-object v0

    .line 63501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0V()Lcom/facebook/ads/redexgen/X/WY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public abstract A0W(Lcom/facebook/ads/redexgen/X/WZ;Lcom/facebook/ads/redexgen/X/WY;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public abstract A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public final A0Y(I)V
    .locals 4

    .line 63502
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A0B:[Lcom/facebook/ads/redexgen/X/WZ;

    array-length v0, v0

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 63503
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WX;->A0B:[Lcom/facebook/ads/redexgen/X/WZ;

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v0, v2, v3

    .line 63504
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/WZ;, "TI;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/WZ;->A09(I)V

    .line 63505
    .end local v0    # "inputBuffer":Lcom/facebook/ads/redexgen/X/WZ;, "TI;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 63506
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63507
    :cond_1
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/WZ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63508
    .local v1, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/WZ;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 63509
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0L()V

    .line 63510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:Lcom/facebook/ads/redexgen/X/WZ;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 63511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 63512
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0K()V

    .line 63513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:Lcom/facebook/ads/redexgen/X/WZ;

    .line 63514
    monitor-exit v1

    .line 63515
    return-void

    .line 63516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public A0a(Lcom/facebook/ads/redexgen/X/WY;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 63517
    .local v1, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/WY;, "TO;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 63518
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WX;->A0O(Lcom/facebook/ads/redexgen/X/WY;)V

    .line 63519
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0K()V

    .line 63520
    monitor-exit v1

    .line 63521
    return-void

    .line 63522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic A4i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63523
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0S()Lcom/facebook/ads/redexgen/X/WZ;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A4j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63524
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/WX;->A0U()Lcom/facebook/ads/redexgen/X/WY;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ADC(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63525
    .local p0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/WX;->A0Z(Lcom/facebook/ads/redexgen/X/WZ;)V

    return-void
.end method

.method public final ADS()V
    .locals 2

    .line 63526
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 63527
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A06:Z

    .line 63528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 63529
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63530
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63531
    .local p0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 63532
    .end local p0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 63533
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 63534
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WX;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 63535
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A05:Z

    .line 63536
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A02:I

    .line 63537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:Lcom/facebook/ads/redexgen/X/WZ;

    if-eqz v0, :cond_0

    .line 63538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WX;->A0N(Lcom/facebook/ads/redexgen/X/WZ;)V

    .line 63539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:Lcom/facebook/ads/redexgen/X/WZ;

    .line 63540
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WX;->A0N(Lcom/facebook/ads/redexgen/X/WZ;)V

    goto :goto_0

    .line 63542
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WX;->A0O(Lcom/facebook/ads/redexgen/X/WY;)V

    goto :goto_1

    .line 63544
    :cond_2
    monitor-exit v1

    .line 63545
    return-void

    .line 63546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
