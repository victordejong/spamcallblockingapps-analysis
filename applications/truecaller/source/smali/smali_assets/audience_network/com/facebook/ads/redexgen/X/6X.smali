.class public abstract Lcom/facebook/ads/redexgen/X/6X;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/61;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HSkcF60AiAyYJizD2I8vIjqhfibhLk4F"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vdkNajAjw36u5RvY9xFki59AuKhwr3og"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sseZ8EdYk7i"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1PxOfa9BsFlCUZKt15VhEMgvVyvUPrjN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QpqokUuVk7nKJb7TmK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vU9iDbhGXBQk4voVJMEMlbxkWIFvNann"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KoP5O6PQnxDmDbSqeBv0xhaZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6X;->A02:[Ljava/lang/String;

    .line 15313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 0

    .line 15314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15315
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6X;->A00:Landroid/content/Context;

    .line 15316
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6X;->A01:Lcom/facebook/ads/redexgen/X/61;

    .line 15317
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/61;Lcom/facebook/ads/redexgen/X/6h;)I
    .locals 2

    .line 15318
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6h;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/61;->A0e(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15319
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6h;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/61;->A0e(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 15320
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6h;->A03()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0B:Lcom/facebook/ads/redexgen/X/6o;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15321
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/61;->A0S()I

    move-result v0

    return v0

    .line 15322
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6h;->A03()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A08:Lcom/facebook/ads/redexgen/X/6o;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15323
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/61;->A0R()I

    move-result v0

    return v0

    .line 15324
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/61;->A0V()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized A01(Lcom/facebook/ads/redexgen/X/6l;Ljava/util/List;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6l;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6h;",
            ">;)V"
        }
    .end annotation

    .local v0, "signalList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    monitor-enter p0

    .line 15325
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6m;->A01()Lcom/facebook/ads/redexgen/X/6m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6m;->A03()Ljava/util/Map;

    move-result-object v4

    .line 15326
    .local p0, "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/6h;

    .line 15327
    .local p2, "signal":Lcom/facebook/ads/redexgen/X/6h;
    invoke-virtual {v6, p1}, Lcom/facebook/ads/redexgen/X/6h;->A02(Lcom/facebook/ads/redexgen/X/6l;)Lcom/facebook/ads/redexgen/X/6k;

    move-result-object v0

    .line 15328
    .local v0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    if-nez v0, :cond_1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15329
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6k;->A5G()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v5

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15330
    .end local v4
    :catchall_0
    move-exception v1

    .line 15331
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6X;->A00:Landroid/content/Context;

    .line 15332
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/78;->A04(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/Xi;

    move-result-object v5

    .line 15333
    .local v4, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;
    :goto_1
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 15334
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6h;->A03()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0B:Lcom/facebook/ads/redexgen/X/6o;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15335
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6h;->A00()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15336
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6h;->A00()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/66;

    .line 15337
    .local v7, "signalValueCircularBuffer":Lcom/facebook/ads/redexgen/X/66;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    if-eqz v3, :cond_3

    .line 15338
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/66;->A02()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6z;

    goto :goto_2

    .line 15339
    .end local v5
    :cond_3
    const/4 v1, 0x0

    .line 15340
    .local v0, "lastSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;
    :goto_2
    if-nez v3, :cond_4

    .line 15341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6X;->A01:Lcom/facebook/ads/redexgen/X/61;

    .line 15342
    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/6X;->A00(Lcom/facebook/ads/redexgen/X/61;Lcom/facebook/ads/redexgen/X/6h;)I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/66;-><init>(I)V

    .line 15343
    :cond_4
    if-eqz v1, :cond_5

    .line 15344
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6h;->A03()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/6z;->A0B(Lcom/facebook/ads/redexgen/X/6z;Ljava/util/EnumSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15345
    :cond_5
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/66;->A04(Ljava/lang/Object;)V

    .line 15346
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6m;->A01()Lcom/facebook/ads/redexgen/X/6m;

    move-result-object v2

    .line 15347
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6h;->A00()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6z;->A05()I

    move-result v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/6m;->A04(ILcom/facebook/ads/redexgen/X/66;I)V

    goto/16 :goto_0

    .line 15348
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6X;->A01:Lcom/facebook/ads/redexgen/X/61;

    .line 15349
    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/6X;->A00(Lcom/facebook/ads/redexgen/X/61;Lcom/facebook/ads/redexgen/X/6h;)I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/66;-><init>(I)V

    .line 15350
    .restart local v7    # "signalValueCircularBuffer":Lcom/facebook/ads/redexgen/X/66;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/66;->A04(Ljava/lang/Object;)V

    .line 15351
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6m;->A01()Lcom/facebook/ads/redexgen/X/6m;

    move-result-object v2

    .line 15352
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6h;->A00()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6z;->A05()I

    move-result v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/6m;->A04(ILcom/facebook/ads/redexgen/X/66;I)V

    goto/16 :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15353
    :cond_7
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6X;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/6X;->A02:[Ljava/lang/String;

    const-string v1, "mCdjiAVU6tB7YULC7P"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 15354
    .end local p0    # "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    .end local v1
    .end local v0    # "lastSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
