.class public final Lcom/facebook/ads/redexgen/X/Li;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Lh;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Lh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Lg;

.field public final A03:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 1

    .line 43478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43479
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lg;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Lg;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A02:Lcom/facebook/ads/redexgen/X/Lg;

    .line 43480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A02:Lcom/facebook/ads/redexgen/X/Lg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lg;->A02()V

    .line 43481
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Li;->A03:Ljava/lang/Runnable;

    .line 43482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A01:Z

    .line 43483
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Li;)Lcom/facebook/ads/redexgen/X/Lg;
    .locals 0

    .line 43484
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Li;->A02:Lcom/facebook/ads/redexgen/X/Lg;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Li;Lcom/facebook/ads/redexgen/X/Lh;)Lcom/facebook/ads/redexgen/X/Lh;
    .locals 0

    .line 43485
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Li;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Li;)Ljava/lang/Runnable;
    .locals 0

    .line 43486
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Li;->A03:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final declared-synchronized A03()V
    .locals 1

    monitor-enter p0

    .line 43487
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A01:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43488
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Lh;-><init>(Lcom/facebook/ads/redexgen/X/Li;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A00:Lcom/facebook/ads/redexgen/X/Lh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43489
    monitor-exit p0

    return-void

    .line 43490
    .end local v0
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 43491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/Lg;
    .locals 1

    .line 43492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A02:Lcom/facebook/ads/redexgen/X/Lg;

    return-object v0
.end method

.method public final declared-synchronized A05()V
    .locals 1

    monitor-enter p0

    .line 43493
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A01:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43494
    monitor-exit p0

    return-void

    .line 43495
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    if-nez v0, :cond_1

    .line 43496
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Lh;-><init>(Lcom/facebook/ads/redexgen/X/Li;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    .line 43497
    .end local v0
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A00()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43498
    monitor-exit p0

    return-void

    .line 43499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06()V
    .locals 1

    monitor-enter p0

    .line 43500
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A02:Lcom/facebook/ads/redexgen/X/Lg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lg;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A01:Z

    if-nez v0, :cond_0

    .line 43501
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Li;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43502
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 43503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43504
    monitor-enter p0

    .line 43505
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A01:Z

    .line 43506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Li;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    .line 43507
    .local p0, "executing":Lcom/facebook/ads/redexgen/X/Lh;
    monitor-exit p0

    .line 43508
    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43509
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lh;->close()V

    .line 43510
    :cond_0
    return-void

    .line 43511
    .end local p0    # "executing":Lcom/facebook/ads/redexgen/X/Lh;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
