.class public final Lcom/facebook/ads/redexgen/X/Xe;
.super Lcom/facebook/ads/redexgen/X/6z;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/6z<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/6y;

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9itrjnnCMeXzcKw4LDwr3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0ZUpi3OgdlmKuABHcG8PMsqc4Oj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fTRPCIaWt84rUUsVk3HDIivZKs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "V5Apl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JVZfUK34SIuqNwHf2oV3ojB3sFjQruRb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fsV6jHlkXkNImPX103xxf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wiQZRNNXqXk8QOUIHtx5EDu7Qpw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6g7apQMvF8ZkxnUyBbRCBajSKJlIo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xe;->A03:[Ljava/lang/String;

    .line 66342
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xe;->A02()V

    return-void
.end method

.method public constructor <init>(JLcom/facebook/ads/redexgen/X/6x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 6
    .param p3    # Lcom/facebook/ads/redexgen/X/6x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/ads/redexgen/X/6x;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/6y;",
            ")V"
        }
    .end annotation

    .line 66343
    .local v5, "this":Lcom/facebook/ads/redexgen/X/Xe;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    .local v3, "signalValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v5, Lcom/facebook/ads/redexgen/X/6y;->A08:Lcom/facebook/ads/redexgen/X/6y;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6z;-><init>(JLcom/facebook/ads/redexgen/X/6x;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/6y;)V

    .line 66344
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Xe;->A01:Ljava/util/List;

    .line 66345
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/6y;

    .line 66346
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xe;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66347
    return-void

    .line 66348
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private A00(Ljava/lang/Object;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 66349
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Xe;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    .local v0, "element":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6s;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6y;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 66350
    check-cast p1, Lcom/facebook/ads/redexgen/X/6q;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/6q;->AEd()I

    move-result v0

    return v0

    .line 66351
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 66352
    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 66353
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xe;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xe;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x71t
    .end array-data
.end method

.method private A04()Z
    .locals 6

    .line 66354
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Xe;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6s;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6y;->ordinal()I

    move-result v0

    aget v5, v1, v0

    const/4 v4, 0x1

    if-eq v5, v4, :cond_1

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1

    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xe;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xe;->A03:[Ljava/lang/String;

    const-string v1, "pkJoykusnl5HLvmmS2nCUwVdsFz02CDm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_1

    .line 66355
    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 66356
    :cond_1
    return v4
.end method


# virtual methods
.method public final A06()I
    .locals 3

    .line 66357
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Xe;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    const/4 v2, 0x0

    .line 66358
    .local p0, "size":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66359
    :cond_0
    return v2

    .line 66360
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 66361
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Xe;->A00(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 66362
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 66363
    :cond_2
    return v2
.end method

.method public final A08(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66364
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Xe;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 66365
    .local p0, "jsonArray":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xe;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 66366
    .local v3, "item":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6s;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6y;->ordinal()I

    move-result v0

    aget v5, v1, v0

    const/4 v0, 0x1

    if-eq v5, v0, :cond_1

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1

    const/4 v4, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xe;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xe;->A03:[Ljava/lang/String;

    const-string v1, "TE27R"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "fy5SSQFd7I5OAEL1WcIst"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v5, v4, :cond_0

    goto :goto_0

    .line 66367
    :cond_0
    check-cast v6, Lcom/facebook/ads/redexgen/X/6q;

    invoke-interface {v6}, Lcom/facebook/ads/redexgen/X/6q;->AEy()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 66368
    goto :goto_0

    .line 66369
    :cond_1
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 66370
    :cond_3
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xe;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66371
    return-object p1
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/6z;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6z<",
            "Ljava/util/List<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 66372
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Xe;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ListSignalValueType<TT;>;"
    .local v1, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<Ljava/util/List<TT;>;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 66373
    .local p0, "newSignalValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 66374
    .local p1, "prevSignalValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    if-nez v6, :cond_2

    .line 66375
    :cond_0
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 66376
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 66377
    return v8

    .line 66378
    :cond_3
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xe;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xe;->A03:[Ljava/lang/String;

    const-string v1, "t4r48"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "skb916f7am8mTaTTklPg2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v3, v7, :cond_8

    .line 66379
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 66380
    .local v5, "newSignal":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 66381
    .local v4, "prevSignal":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/6s;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6y;->ordinal()I

    move-result v0

    aget v1, v1, v0

    if-eq v1, v4, :cond_7

    const/4 v0, 0x2

    if-eq v1, v0, :cond_7

    const/4 v0, 0x3

    if-eq v1, v0, :cond_6

    .line 66382
    .end local v5    # "newSignal":Ljava/lang/Object;, "TT;"
    .end local v4    # "prevSignal":Ljava/lang/Object;, "TT;"
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66383
    :cond_6
    check-cast v7, Lcom/facebook/ads/redexgen/X/6q;

    .line 66384
    .local v8, "customObjectSignalValueDef":Lcom/facebook/ads/redexgen/X/6q;
    invoke-interface {v7, v2}, Lcom/facebook/ads/redexgen/X/6q;->A8K(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 66385
    return v8

    .line 66386
    .end local v8    # "customObjectSignalValueDef":Lcom/facebook/ads/redexgen/X/6q;
    :cond_7
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 66387
    return v8

    .line 66388
    .end local v5
    :cond_8
    return v4
.end method
