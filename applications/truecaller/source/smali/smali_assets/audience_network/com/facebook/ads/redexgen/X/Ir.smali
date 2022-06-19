.class public final Lcom/facebook/ads/redexgen/X/Ir;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummySurfaceThread"
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/Handler;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/MonotonicNonNull;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/IG;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/MonotonicNonNull;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/Error;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9k7Pg8ue4ZIXn9jDpJsIn7Y5i4sLfdQW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4SytZoOdC4egIy1bJES6fjmccl1RDrII"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "b"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aqFbtiWePH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "f8vuNOtDeAKfZNviyc1t9DlvtFT95IRo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ir;->A06:[Ljava/lang/String;

    .line 39635
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ir;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39636
    const/16 v2, 0x4d

    const/16 v1, 0xc

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39637
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ir;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x22

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1

    .line 39638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A01:Lcom/facebook/ads/redexgen/X/IG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A01:Lcom/facebook/ads/redexgen/X/IG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IG;->A08()V

    .line 39640
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ir;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        0xct
        0x4t
        0x4t
        0x10t
        -0x16t
        0xct
        0x9t
        -0x3t
        -0x8t
        -0x6t
        -0x4t
        0x69t
        -0x7ct
        -0x74t
        -0x71t
        -0x78t
        -0x79t
        0x43t
        -0x69t
        -0x6et
        0x43t
        -0x74t
        -0x6ft
        -0x74t
        -0x69t
        -0x74t
        -0x7ct
        -0x71t
        -0x74t
        -0x63t
        -0x78t
        0x43t
        -0x79t
        -0x68t
        -0x70t
        -0x70t
        -0x64t
        0x43t
        -0x6at
        -0x68t
        -0x6bt
        -0x77t
        -0x7ct
        -0x7at
        -0x78t
        -0x43t
        -0x28t
        -0x20t
        -0x1dt
        -0x24t
        -0x25t
        -0x69t
        -0x15t
        -0x1at
        -0x69t
        -0x17t
        -0x24t
        -0x1dt
        -0x24t
        -0x28t
        -0x16t
        -0x24t
        -0x69t
        -0x25t
        -0x14t
        -0x1ct
        -0x1ct
        -0x10t
        -0x69t
        -0x16t
        -0x14t
        -0x17t
        -0x23t
        -0x28t
        -0x26t
        -0x24t
        -0x54t
        -0x43t
        -0x4bt
        -0x4bt
        -0x3ft
        -0x65t
        -0x43t
        -0x46t
        -0x52t
        -0x57t
        -0x55t
        -0x53t
    .end array-data
.end method

.method private A03(I)V
    .locals 4

    .line 39641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A01:Lcom/facebook/ads/redexgen/X/IG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A01:Lcom/facebook/ads/redexgen/X/IG;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/IG;->A09(I)V

    .line 39643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A01:Lcom/facebook/ads/redexgen/X/IG;

    .line 39644
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IG;->A07()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;-><init>(Lcom/facebook/ads/redexgen/X/Ir;Landroid/graphics/SurfaceTexture;ZLcom/facebook/ads/redexgen/X/Iq;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A02:Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    .line 39645
    return-void

    .line 39646
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A04(I)Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;
    .locals 4

    .line 39647
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->start()V

    .line 39648
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A00:Landroid/os/Handler;

    .line 39649
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ir;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IG;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IG;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A01:Lcom/facebook/ads/redexgen/X/IG;

    .line 39650
    const/4 v3, 0x0

    .line 39651
    .local p0, "wasInterrupted":Z
    monitor-enter p0

    .line 39652
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ir;->A00:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 39653
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A02:Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A03:Ljava/lang/Error;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39654
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39655
    .local p1, "e":Ljava/lang/InterruptedException;
    :catch_0
    const/4 v3, 0x1

    .end local p1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 39656
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 39657
    if-eqz v3, :cond_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39658
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ir;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ir;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 39659
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_3

    .line 39660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A03:Ljava/lang/Error;

    if-nez v0, :cond_2

    .line 39661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A02:Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    return-object v0

    .line 39662
    :cond_2
    throw v0

    .line 39663
    :cond_3
    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39664
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final A05()V
    .locals 2

    .line 39665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ir;->A00:Landroid/os/Handler;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ir;->A00:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39667
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 39668
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 39669
    return v5

    .line 39670
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ir;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39671
    :catchall_0
    move-exception v4

    .line 39672
    .local p0, "e":Ljava/lang/Throwable;
    :try_start_1
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2e

    const/16 v1, 0x1f

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39673
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->quit()Z

    .line 39674
    return v5

    .line 39675
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->quit()Z

    .line 39676
    throw v0

    .line 39677
    :cond_1
    :try_start_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ir;->A03(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 39678
    monitor-enter p0

    .line 39679
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 39680
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 39681
    :catch_0
    move-exception v4

    .line 39682
    .local p0, "e":Ljava/lang/Error;
    :try_start_4
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/16 v1, 0x22

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39683
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Ir;->A03:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 39684
    .end local p0    # "e":Ljava/lang/Error;
    monitor-enter p0

    .line 39685
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 39686
    monitor-exit p0

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 39687
    :catch_1
    move-exception v4

    .line 39688
    .local p0, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/16 v1, 0x22

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39689
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Ir;->A04:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 39690
    .end local p0    # "e":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 39691
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 39692
    monitor-exit p0

    .line 39693
    :goto_1
    return v5

    .line 39694
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 39695
    :catchall_5
    move-exception v0

    monitor-enter p0

    .line 39696
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 39697
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 39698
    throw v0

    .line 39699
    :catchall_6
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0
.end method
