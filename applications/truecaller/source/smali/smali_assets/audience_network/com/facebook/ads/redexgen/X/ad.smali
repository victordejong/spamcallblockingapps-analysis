.class public final Lcom/facebook/ads/redexgen/X/ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/63;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/65;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6l;

.field public A01:Lcom/facebook/ads/redexgen/X/79;

.field public A02:Lcom/facebook/ads/redexgen/X/7A;

.field public final A03:Lcom/facebook/ads/redexgen/X/61;

.field public final A04:Lcom/facebook/ads/redexgen/X/6W;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9Omy7cax2OJ4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ulOhDbnf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JfFg1yjSSK9TQh7N867q1b7oOj16BTWR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cs88erT1Nmdhof2Vlv4YHjmvLJ5hV6oE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "codoSKf0AAHHcDxXKaV5ItDp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Lc71QfpBcjqOx3z6Bpry4MoTnJ3L2Amk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bxh30V7DNH8aSp9XNgBHezc1nItbXmG0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iIuCBEGs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ad;->A06:[Ljava/lang/String;

    .line 68148
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/61;Lcom/facebook/ads/redexgen/X/6W;)V
    .locals 1

    .line 68149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68151
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ad;->A03:Lcom/facebook/ads/redexgen/X/61;

    .line 68152
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ad;->A04:Lcom/facebook/ads/redexgen/X/6W;

    .line 68153
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ad;)Lcom/facebook/ads/redexgen/X/61;
    .locals 0

    .line 68154
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ad;->A03:Lcom/facebook/ads/redexgen/X/61;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ad;)Lcom/facebook/ads/redexgen/X/6W;
    .locals 0

    .line 68155
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ad;->A04:Lcom/facebook/ads/redexgen/X/6W;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ad;)Lcom/facebook/ads/redexgen/X/79;
    .locals 0

    .line 68156
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ad;->A01:Lcom/facebook/ads/redexgen/X/79;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/ad;)Lcom/facebook/ads/redexgen/X/7A;
    .locals 0

    .line 68157
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ad;->A02:Lcom/facebook/ads/redexgen/X/7A;

    return-object p0
.end method

.method private final declared-synchronized A04()V
    .locals 3

    monitor-enter p0

    .line 68158
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A02:Lcom/facebook/ads/redexgen/X/7A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68159
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ad;->A01:Lcom/facebook/ads/redexgen/X/79;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A02:Lcom/facebook/ads/redexgen/X/7A;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/79;->A01(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 68160
    invoke-static {}, Lcom/facebook/ads/redexgen/X/75;->A00()Lcom/facebook/ads/redexgen/X/75;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/75;->A04()V

    .line 68161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A04:Lcom/facebook/ads/redexgen/X/6W;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6W;->A02()V

    .line 68162
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ad;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68163
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 68164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A05(Lcom/facebook/ads/redexgen/X/6l;)V
    .locals 3

    monitor-enter p0

    .line 68165
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68166
    :cond_0
    monitor-exit p0

    return-void

    .line 68167
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A03:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68168
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/78;->A0E(Lcom/facebook/ads/redexgen/X/6l;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68169
    invoke-static {}, Lcom/facebook/ads/redexgen/X/75;->A00()Lcom/facebook/ads/redexgen/X/75;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/75;->A03()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/79;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/79;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A01:Lcom/facebook/ads/redexgen/X/79;

    .line 68170
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/6l;

    .line 68171
    new-instance v1, Lcom/facebook/ads/redexgen/X/65;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/65;-><init>(Lcom/facebook/ads/redexgen/X/ad;Lcom/facebook/ads/redexgen/X/6l;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/7A;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A02:Lcom/facebook/ads/redexgen/X/7A;

    .line 68172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A04:Lcom/facebook/ads/redexgen/X/6W;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6W;->A03(Lcom/facebook/ads/redexgen/X/6l;)V

    .line 68173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ad;->A01:Lcom/facebook/ads/redexgen/X/79;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A02:Lcom/facebook/ads/redexgen/X/7A;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/79;->A00(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 68174
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ad;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68175
    .end local v0
    :cond_2
    monitor-exit p0

    return-void

    .line 68176
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AF9(Lcom/facebook/ads/redexgen/X/6l;)V
    .locals 3

    monitor-enter p0

    .line 68177
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/6l;

    if-ne v0, p1, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68178
    monitor-exit p0

    return-void

    .line 68179
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/6l;

    .line 68180
    sget-object v0, Lcom/facebook/ads/redexgen/X/6l;->A04:Lcom/facebook/ads/redexgen/X/6l;

    if-ne p1, v0, :cond_1

    .line 68181
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ad;->A04()V

    goto :goto_0

    .line 68182
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/6l;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/ad;->A05(Lcom/facebook/ads/redexgen/X/6l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68183
    :goto_0
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ad;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/ad;->A06:[Ljava/lang/String;

    const-string v1, "6KXzTJPK6a3Rx51uMQDwScazunOB6mre"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    .line 68184
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
