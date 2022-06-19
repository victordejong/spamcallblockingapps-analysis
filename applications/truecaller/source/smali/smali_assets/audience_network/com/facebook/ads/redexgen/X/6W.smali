.class public final Lcom/facebook/ads/redexgen/X/6W;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A08:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/content/Context;

.field public final A02:Lcom/facebook/ads/redexgen/X/61;

.field public final A03:Lcom/facebook/ads/redexgen/X/6I;

.field public final A04:Lcom/facebook/ads/redexgen/X/ac;

.field public final A05:Lcom/facebook/ads/redexgen/X/ab;

.field public final A06:Lcom/facebook/ads/redexgen/X/aa;

.field public final A07:Lcom/facebook/ads/redexgen/X/73;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 15260
    const-class v0, Lcom/facebook/ads/redexgen/X/6W;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6W;->A08:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 3

    .line 15261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15262
    new-instance v1, Lcom/facebook/ads/redexgen/X/6c;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/6c;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6a;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6a;-><init>(Lcom/facebook/ads/redexgen/X/6c;)V

    .line 15263
    .local p0, "signalLibrary":Lcom/facebook/ads/redexgen/X/6a;
    new-instance v2, Lcom/facebook/ads/redexgen/X/6Z;

    invoke-direct {v2, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/6Z;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6a;Lcom/facebook/ads/redexgen/X/61;)V

    .line 15264
    .local p1, "signalConfigParser":Lcom/facebook/ads/redexgen/X/6Z;
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6W;->A01:Landroid/content/Context;

    .line 15265
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6Z;->A0A()Lcom/facebook/ads/redexgen/X/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A05:Lcom/facebook/ads/redexgen/X/ab;

    .line 15266
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6Z;->A0B()Lcom/facebook/ads/redexgen/X/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A06:Lcom/facebook/ads/redexgen/X/aa;

    .line 15267
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6Z;->A09()Lcom/facebook/ads/redexgen/X/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A04:Lcom/facebook/ads/redexgen/X/ac;

    .line 15268
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6Z;->A08()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A00:I

    .line 15269
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6W;->A02:Lcom/facebook/ads/redexgen/X/61;

    .line 15270
    new-instance v0, Lcom/facebook/ads/redexgen/X/6I;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6I;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A03:Lcom/facebook/ads/redexgen/X/6I;

    .line 15271
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6W;->A03:Lcom/facebook/ads/redexgen/X/6I;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A04:Lcom/facebook/ads/redexgen/X/ac;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6I;->A01(Lcom/facebook/ads/redexgen/X/6S;)V

    .line 15272
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6Z;->A0C()Lcom/facebook/ads/redexgen/X/73;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A07:Lcom/facebook/ads/redexgen/X/73;

    .line 15273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A07:Lcom/facebook/ads/redexgen/X/73;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/73;->A05()V

    .line 15274
    return-void
.end method

.method public static A00()Lorg/json/JSONObject;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e",
            "CatchGeneralException"
        }
    .end annotation

    .line 15275
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 15276
    .local v6, "jsonSignalObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6m;->A01()Lcom/facebook/ads/redexgen/X/6m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6m;->A03()Ljava/util/Map;

    move-result-object v7

    .line 15277
    .local v0, "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15278
    :cond_0
    return-object v6

    .line 15279
    :cond_1
    :try_start_0
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 15280
    .local v7, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 15281
    .local v0, "key":Ljava/lang/Integer;
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/66;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/66;->A03()Ljava/util/List;

    move-result-object v0

    .line 15282
    .local v5, "listOfValue":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 15283
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6z;

    .line 15284
    .local v4, "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6z;->A09(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 15285
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15286
    :catchall_0
    move-exception v0

    .line 15287
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V

    .line 15288
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    return-object v6
.end method

.method private A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6l;Lcom/facebook/ads/redexgen/X/6p;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .line 15289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A02:Lcom/facebook/ads/redexgen/X/61;

    .line 15290
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0Y()Lcom/facebook/ads/redexgen/X/6B;

    move-result-object v4

    .line 15291
    .local p0, "bdSignalDataLoggingDelegate":Lcom/facebook/ads/redexgen/X/6B;
    move-object v6, p1

    if-eqz v4, :cond_0

    .line 15292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    long-to-int v9, v2

    .line 15293
    .local v9, "sessionEndTime":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/78;->A05()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Lcom/facebook/ads/redexgen/X/6W;->A00:I

    .line 15294
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6l;->A03()I

    move-result v8

    .line 15295
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6W;->A00()Lorg/json/JSONObject;

    move-result-object v10

    .line 15296
    move-object v11, p3

    invoke-interface/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/6B;->A9A(Ljava/lang/String;Ljava/lang/String;IIILorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/6p;)V

    .line 15297
    .end local v9    # "sessionEndTime":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6W;->A02:Lcom/facebook/ads/redexgen/X/61;

    sget-object v0, Lcom/facebook/ads/redexgen/X/68;->A07:Lcom/facebook/ads/redexgen/X/68;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/68;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/78;->A0B(Lcom/facebook/ads/redexgen/X/61;Ljava/lang/String;Ljava/lang/String;)V

    .line 15298
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 15299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A03:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6I;->A00()V

    .line 15300
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/6l;)V
    .locals 2

    .line 15301
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6W;->A04:Lcom/facebook/ads/redexgen/X/ac;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A01:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/ac;->A03(Lcom/facebook/ads/redexgen/X/6l;Landroid/content/Context;)V

    .line 15302
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/6n;Lcom/facebook/ads/redexgen/X/6l;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15303
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A04:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/6W;->A05(Lcom/facebook/ads/redexgen/X/6n;Lcom/facebook/ads/redexgen/X/6l;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6p;)V

    .line 15304
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/6n;Lcom/facebook/ads/redexgen/X/6l;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6p;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A05:Lcom/facebook/ads/redexgen/X/ab;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/ab;->A04(Lcom/facebook/ads/redexgen/X/6l;)V

    .line 15306
    sget-object v0, Lcom/facebook/ads/redexgen/X/6n;->A02:Lcom/facebook/ads/redexgen/X/6n;

    if-ne p1, v0, :cond_0

    .line 15307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A06:Lcom/facebook/ads/redexgen/X/aa;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/aa;->A03(Lcom/facebook/ads/redexgen/X/6l;)V

    .line 15308
    if-eqz p3, :cond_0

    .line 15309
    invoke-direct {p0, p3, p2, p4}, Lcom/facebook/ads/redexgen/X/6W;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6l;Lcom/facebook/ads/redexgen/X/6p;)V

    .line 15310
    :cond_0
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 15311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A05:Lcom/facebook/ads/redexgen/X/ab;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ab;->A02()Ljava/util/List;

    move-result-object v0

    .line 15312
    .local p0, "dynamicSignalList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
