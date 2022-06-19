.class public final Lcom/facebook/ads/redexgen/X/7J;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/7F;,
        Lcom/facebook/ads/redexgen/X/7E;,
        Lcom/facebook/ads/redexgen/X/7H;,
        Lcom/facebook/ads/redexgen/X/7I;,
        Lcom/facebook/ads/redexgen/X/7G;,
        Lcom/facebook/ads/redexgen/X/7C;,
        Lcom/facebook/ads/internal/cache/AdCacheManager$CacheFileExtension;
    }
.end annotation


# static fields
.field public static A0A:Lcom/facebook/ads/redexgen/X/00;

.field public static A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;

.field public static final A0F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/06;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A02:Landroid/os/Handler;

.field public final A03:Lcom/facebook/ads/redexgen/X/7K;

.field public final A04:Lcom/facebook/ads/redexgen/X/8J;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8gkZjHnxCvZyg7TzwjjGeSdvls9L7Gam"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fcbSC3ja3K2jNylkxCBC51G6bXitMdQ0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2foOCT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ocB0m3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KfMQJM794wt5IuG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "feDb68pnVWWOEqV45c"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KnEa0S3Tnigt4irEXno07XBXpnYxFsFq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "aK1UKkDbG3zR1xh0x3umKxUvmkPLseuR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7J;->A0D:[Ljava/lang/String;

    .line 16716
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7J;->A0E()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7J;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0E:Ljava/lang/String;

    .line 16717
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16718
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0F:Ljava/util/Map;

    .line 16719
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 2

    .line 16720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16722
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A07:Ljava/util/Map;

    .line 16723
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    .line 16724
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A02:Landroid/os/Handler;

    .line 16725
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7K;->A06(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/7K;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A03:Lcom/facebook/ads/redexgen/X/7K;

    .line 16726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A05:Ljava/util/List;

    .line 16727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A06:Ljava/util/List;

    .line 16728
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JD;->A1p(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A08:Z

    .line 16729
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JD;->A1w(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A09:Z

    .line 16730
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7J;)J
    .locals 1

    .line 16731
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7J;)Landroid/os/Handler;
    .locals 0

    .line 16732
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7J;->A02:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/00;
    .locals 0

    .line 16733
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7J;->A03(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized A03(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/00;
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/7J;

    monitor-enter v2

    .line 16734
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0A:Lcom/facebook/ads/redexgen/X/00;

    if-nez v0, :cond_0

    .line 16735
    new-instance v1, Lcom/facebook/ads/redexgen/X/07;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/07;-><init>()V

    .line 16736
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A04(Landroid/content/Context;)I

    move-result v0

    .line 16737
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A00(I)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    .line 16738
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A03()Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8O;->A8H()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A02(Z)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    const/4 v0, -0x1

    .line 16739
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A01(I)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    .line 16740
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A0j(Landroid/content/Context;)Z

    move-result v0

    .line 16741
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A03(Z)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    .line 16742
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A1v(Landroid/content/Context;)Z

    move-result v0

    .line 16743
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A04(Z)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v0

    .line 16744
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/07;->A05()Lcom/facebook/ads/redexgen/X/08;

    move-result-object v1

    .line 16745
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7J;->A05(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/0L;

    move-result-object v0

    .line 16746
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/01;->A00(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/08;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0A:Lcom/facebook/ads/redexgen/X/00;

    .line 16747
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0A:Lcom/facebook/ads/redexgen/X/00;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 16748
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;
    .locals 2

    .line 16749
    sget-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/06;

    .line 16750
    .local p0, "storedCacheData":Lcom/facebook/ads/redexgen/X/06;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7M;->A06(Lcom/facebook/ads/redexgen/X/8J;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 16751
    new-instance v0, Lcom/facebook/ads/redexgen/X/06;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/06;-><init>(Lcom/facebook/ads/redexgen/X/06;)V

    .line 16752
    :goto_0
    return-object v0

    .line 16753
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/06;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/06;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/0L;
    .locals 1

    .line 16754
    new-instance v0, Lcom/facebook/ads/redexgen/X/XW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XW;-><init>(Lcom/facebook/ads/redexgen/X/XS;)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7J;)Lcom/facebook/ads/redexgen/X/7K;
    .locals 0

    .line 16755
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7J;->A03:Lcom/facebook/ads/redexgen/X/7K;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/7J;)Lcom/facebook/ads/redexgen/X/8J;
    .locals 0

    .line 16756
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    return-object p0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7J;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static declared-synchronized A09(Lcom/facebook/ads/redexgen/X/8J;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8J;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/facebook/ads/redexgen/X/7J;

    monitor-enter v1

    .line 16757
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0B:Ljava/util/List;

    if-nez v0, :cond_0

    .line 16758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0B:Ljava/util/List;

    .line 16759
    sget-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0B:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/7J;->A0H(Ljava/util/List;Lcom/facebook/ads/redexgen/X/8J;)V

    .line 16760
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0B:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16761
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic A0A()Ljava/util/Map;
    .locals 1

    .line 16762
    sget-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0F:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/7J;)Ljava/util/Map;
    .locals 0

    .line 16763
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7J;->A07:Ljava/util/Map;

    return-object p0
.end method

.method public static A0C(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/util/concurrent/atomic/AtomicBoolean;"
        }
    .end annotation

    .line 16764
    .local v0, "downloaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 16765
    .local p0, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/7J;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7J;->A0D:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 16766
    .local v3, "downloader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MA;->A02()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16767
    .end local v3    # "downloader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 16768
    :cond_1
    const/4 v0, 0x1

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16769
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 16770
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 16771
    .local v0, "partialResult":Ljava/lang/Boolean;
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16772
    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    .line 16773
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/7J;->A0E:Ljava/lang/String;

    const/16 v2, 0x56

    const/16 v1, 0x2a

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16774
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16775
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    return-object p0
.end method

.method public static synthetic A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 16776
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7J;->A0C(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0xbe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7J;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x7ft
        -0x50t
        -0x80t
        -0x52t
        0x7ct
        0x7et
        -0x80t
        0x69t
        0x6bt
        0x6et
        0x66t
        0x6dt
        -0x66t
        0x6dt
        -0x65t
        0x51t
        -0x7dt
        0x7ft
        0x7et
        0x7ft
        0x7et
        -0x80t
        0x7et
        -0x77t
        -0x59t
        -0x57t
        -0x52t
        -0x55t
        0x66t
        -0x47t
        -0x46t
        -0x59t
        -0x48t
        -0x46t
        -0x55t
        -0x56t
        0x74t
        -0x71t
        -0x53t
        -0x51t
        -0x4ct
        -0x4bt
        -0x46t
        -0x4dt
        0x6ct
        -0x51t
        -0x45t
        -0x47t
        -0x44t
        -0x48t
        -0x4ft
        -0x40t
        -0x4ft
        0x7ft
        -0x63t
        -0x61t
        -0x5ct
        -0x5bt
        -0x56t
        -0x5dt
        0x5ct
        -0x5et
        -0x63t
        -0x5bt
        -0x58t
        -0x5ft
        -0x60t
        0x64t
        -0x7et
        -0x7ct
        -0x77t
        -0x76t
        -0x71t
        -0x78t
        0x41t
        -0x6ct
        -0x6bt
        -0x7et
        -0x6dt
        -0x6bt
        -0x7at
        -0x7bt
        0x4ft
        0x4ft
        0x4ft
        -0x74t
        -0x41t
        -0x56t
        -0x54t
        -0x49t
        -0x45t
        -0x50t
        -0x4at
        -0x4bt
        0x67t
        -0x42t
        -0x51t
        -0x50t
        -0x4dt
        -0x54t
        0x67t
        -0x54t
        -0x41t
        -0x54t
        -0x56t
        -0x44t
        -0x45t
        -0x50t
        -0x4bt
        -0x52t
        0x67t
        -0x56t
        -0x58t
        -0x56t
        -0x51t
        -0x54t
        0x67t
        -0x55t
        -0x4at
        -0x42t
        -0x4bt
        -0x4dt
        -0x4at
        -0x58t
        -0x55t
        -0x46t
        0x75t
        -0x4ft
        -0x51t
        -0x4ft
        -0x4at
        -0x4dt
        -0x6ft
        -0x43t
        -0x45t
        -0x42t
        -0x46t
        -0x4dt
        -0x3et
        -0x49t
        -0x43t
        -0x44t
        -0x6at
        -0x43t
        -0x43t
        -0x47t
        0x78t
        0x76t
        0x78t
        0x7dt
        0x7at
        0x5bt
        0x76t
        0x7et
        -0x7ft
        -0x76t
        -0x79t
        0x7at
        0x5dt
        -0x7ct
        -0x7ct
        -0x80t
        -0x78t
        -0x65t
        -0x78t
        -0x7at
        -0x68t
        -0x69t
        -0x78t
        -0x18t
        -0x15t
        -0x23t
        -0x20t
        -0x1bt
        -0x18t
        -0x26t
        -0x23t
        -0x28t
        -0x13t
        -0x1et
        -0x1at
        -0x22t
        -0x28t
        -0x1at
        -0x14t
        -0x60t
        -0x6bt
        -0x64t
        -0x5ct
    .end array-data
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/Ja;)V
    .locals 0

    .line 16777
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7J;->A0G(Lcom/facebook/ads/redexgen/X/Ja;)V

    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/Ja;)V
    .locals 5

    .line 16778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    if-nez v0, :cond_0

    .line 16779
    return-void

    .line 16780
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 16781
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A04(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xae

    const/16 v1, 0xc

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 16783
    return-void
.end method

.method public static A0H(Ljava/util/List;Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/8J;",
            ")V"
        }
    .end annotation

    .line 16784
    .local p1, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/dM;->A01(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0I(Ljava/util/List;Ljava/io/File;)V

    .line 16785
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7K;->A07(Lcom/facebook/ads/redexgen/X/8J;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0I(Ljava/util/List;Ljava/io/File;)V

    .line 16786
    return-void
.end method

.method public static A0I(Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 16787
    .local v3, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 16788
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 16789
    .local p0, "path":Ljava/lang/String;
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7J;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7J;->A0D:[Ljava/lang/String;

    const-string v1, "Vghlgc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qwUey9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v1, 0x0

    const/16 v0, 0x7f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v0

    if-eq v3, v0, :cond_1

    .line 16790
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16791
    .end local p0    # "path":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/7J;)Z
    .locals 0

    .line 16792
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/7J;->A08:Z

    return p0
.end method


# virtual methods
.method public final A0K(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A07:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final A0L(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16794
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A08:Z

    move v6, p2

    move v7, p3

    move-object v5, p1

    if-eqz v0, :cond_0

    .line 16795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/7J;->A04(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;

    move-result-object v3

    .line 16796
    .local p0, "cacheFileData":Lcom/facebook/ads/redexgen/X/06;
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/06;->A03:Ljava/lang/String;

    .line 16797
    iput v7, v3, Lcom/facebook/ads/redexgen/X/06;->A01:I

    .line 16798
    iput v6, v3, Lcom/facebook/ads/redexgen/X/06;->A00:I

    .line 16799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A03(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v1

    const/4 v0, 0x1

    .line 16800
    invoke-interface {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/00;->ADm(Lcom/facebook/ads/redexgen/X/06;Z)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    .line 16801
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 16802
    return-object v0

    .line 16803
    .end local p0    # "cacheFileData":Lcom/facebook/ads/redexgen/X/06;
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7J;->A03:Lcom/facebook/ads/redexgen/X/7K;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    const/16 v2, 0xaa

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7K;->A0E(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0M(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/7J;->A04(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;

    move-result-object v3

    .line 16805
    .local p0, "storedCacheFileData":Lcom/facebook/ads/redexgen/X/06;
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/06;->A03:Ljava/lang/String;

    .line 16806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A03(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    .line 16807
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/00;->ADn(Lcom/facebook/ads/redexgen/X/06;)Ljava/io/File;

    move-result-object v0

    .line 16808
    return-object v0
.end method

.method public final A0N(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16809
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A08:Z

    if-eqz v0, :cond_0

    .line 16810
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7J;->A0M(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 16811
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A03:Lcom/facebook/ads/redexgen/X/7K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7K;->A0F(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final A0O(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16812
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A08:Z

    if-eqz v0, :cond_0

    .line 16813
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7J;->A0P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16814
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A03:Lcom/facebook/ads/redexgen/X/7K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7K;->A0G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0P(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 16815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/7J;->A04(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;

    move-result-object v3

    .line 16816
    .local p0, "storedCacheFileData":Lcom/facebook/ads/redexgen/X/06;
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/06;->A03:Ljava/lang/String;

    .line 16817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    .line 16818
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7J;->A03(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    .line 16819
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/00;->ADp(Lcom/facebook/ads/redexgen/X/06;)Ljava/lang/String;

    move-result-object v0

    .line 16820
    .local p1, "cachedUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public final A0Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16821
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A09:Z

    if-eqz v0, :cond_0

    .line 16822
    return-object p1

    .line 16823
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7J;->A0P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0R()V
    .locals 5

    const/16 v2, 0x80

    const/16 v1, 0x13

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x26

    const/16 v1, 0x10

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16824
    return-void
.end method

.method public final A0S()V
    .locals 5

    const/16 v2, 0x93

    const/16 v1, 0x10

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x36

    const/16 v1, 0xe

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16825
    return-void
.end method

.method public final A0T()V
    .locals 1

    .line 16826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A07:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16827
    return-void
.end method

.method public final A0U(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 10
    .param p1    # Lcom/facebook/ads/redexgen/X/7B;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v2, 0xa3

    const/4 v1, 0x7

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x44

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A00:J

    .line 16829
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7J;->A04:Lcom/facebook/ads/redexgen/X/8J;

    sget v6, Lcom/facebook/ads/redexgen/X/7M;->A07:I

    const/16 v2, 0x18

    const/16 v1, 0xe

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A08(III)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    move-object v5, p2

    move-object v5, v5

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7M;->A02(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/7C;ILjava/lang/String;J)V

    .line 16830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A05:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16831
    .local v5, "mandatoryDownloadersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A06:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16832
    .local v0, "optionalDownloadersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MA;->A03()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/XX;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/XX;-><init>(Lcom/facebook/ads/redexgen/X/7J;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/7C;Ljava/util/ArrayList;)V

    .line 16833
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 16834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16836
    return-void
.end method

.method public final A0V(Lcom/facebook/ads/redexgen/X/7G;)V
    .locals 2

    .line 16837
    new-instance v1, Lcom/facebook/ads/redexgen/X/7H;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/7H;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/7G;)V

    .line 16838
    .local p0, "imageDownloaderCallable":Lcom/facebook/ads/redexgen/X/7H;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/7G;->A02:Z

    if-nez v0, :cond_0

    .line 16839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A05:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16840
    :goto_0
    return-void

    .line 16841
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/7G;)V
    .locals 1

    .line 16842
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/7G;->A02:Z

    .line 16843
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7J;->A0V(Lcom/facebook/ads/redexgen/X/7G;)V

    .line 16844
    return-void
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/7I;)V
    .locals 2

    .line 16845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7J;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7F;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/7F;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/7I;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16846
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/7I;)V
    .locals 2

    .line 16847
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/7I;->A05:Z

    .line 16848
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7J;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7F;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/7F;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/7I;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16849
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/7I;)V
    .locals 2

    .line 16850
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/7I;->A05:Z

    .line 16851
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A09:Z

    if-eqz v0, :cond_0

    .line 16852
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7J;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7E;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/7E;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/7I;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16853
    :goto_0
    return-void

    .line 16854
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7J;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7F;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/7F;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/7I;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/7I;)V
    .locals 2

    .line 16855
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A09:Z

    if-eqz v0, :cond_0

    .line 16856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7J;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7E;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/7E;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/7I;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16857
    :goto_0
    return-void

    .line 16858
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7J;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7F;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/7F;-><init>(Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/7I;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/Jb;)V
    .locals 0

    .line 16859
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7J;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    .line 16860
    return-void
.end method
