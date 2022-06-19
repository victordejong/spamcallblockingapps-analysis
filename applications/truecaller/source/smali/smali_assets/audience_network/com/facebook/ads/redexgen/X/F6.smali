.class public final Lcom/facebook/ads/redexgen/X/F6;
.super Lcom/facebook/ads/redexgen/X/cS;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "d7tLiGkqyLa7cKOkED7RtvmpIXZH8d0b"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LmA4T64r6T9e"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1EBtOKlPck0twYp3ElEJQmg3d"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uhXcdOUibAChEZNBNQuPqKRIQ2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LV0o53GlcsqgEYK9Pr4EwymnJShooL9b"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NLZosIPt4DzrQXhRsvqwWEHVFOTX5bDJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MQasnwh7q"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F6;->A01:[Ljava/lang/String;

    .line 32924
    invoke-static {}, Lcom/facebook/ads/redexgen/X/F6;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1o;)V
    .locals 0

    .line 32925
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/cS;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1o;)V

    .line 32926
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/F6;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x34

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(J)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32927
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 32928
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x24

    const/4 v1, 0x5

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32929
    return-object v4
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/F6;J)Ljava/util/Map;
    .locals 0

    .line 32930
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F6;->A01(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/F6;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x48t
        0xct
        0x45t
        0x5ft
        0xct
        0x42t
        0x43t
        0x58t
        0xct
        0x5et
        0x49t
        0x4dt
        0x48t
        0x55t
        0xct
        0x43t
        0x5et
        0xct
        0x4dt
        0x40t
        0x5et
        0x49t
        0x4dt
        0x48t
        0x55t
        0xct
        0x48t
        0x45t
        0x5ft
        0x5ct
        0x40t
        0x4dt
        0x55t
        0x49t
        0x48t
        0x38t
        0x39t
        0x30t
        0x3dt
        0x25t
    .end array-data
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/F6;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 32931
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F6;->A05(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private A05(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32932
    .local v2, "trackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32933
    :cond_0
    return-void

    .line 32934
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A01:[Ljava/lang/String;

    const-string v1, "jDIZMq7wlAdnEmkEGDRuOyHBIh8qxobs"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32935
    .local p1, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Qz;

    invoke-direct {v2, v0, p2}, Lcom/facebook/ads/redexgen/X/Qz;-><init>(Lcom/facebook/ads/redexgen/X/8J;Ljava/util/Map;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Qz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32936
    .end local p1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 32937
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0J()V
    .locals 3

    .line 32938
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v1, Lcom/facebook/ads/redexgen/X/cy;

    .line 32939
    .local p0, "nativeAdapter":Lcom/facebook/ads/redexgen/X/cy;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/cy;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/0o;->A0B(Lcom/facebook/ads/redexgen/X/cy;)V

    .line 32941
    return-void

    .line 32942
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/94;Lcom/facebook/ads/redexgen/X/92;Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 16

    move-object/from16 v7, p1

    .line 32943
    move-object/from16 v3, p0

    check-cast v7, Lcom/facebook/ads/redexgen/X/cy;

    .line 32944
    .local v8, "adapter":Lcom/facebook/ads/redexgen/X/cy;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 32945
    .local v9, "requestTime":J
    new-instance v4, Lcom/facebook/ads/redexgen/X/cP;

    move-object/from16 v5, p0

    move-object/from16 v10, p3

    move-object/from16 v6, p4

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/cP;-><init>(Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/cy;JLcom/facebook/ads/redexgen/X/92;)V

    .line 32946
    .local v7, "nativeTimeout":Ljava/lang/Runnable;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/cS;->A0C()Landroid/os/Handler;

    move-result-object v2

    .line 32947
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32948
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/cO;

    move-object/from16 v11, p0

    move-object v12, v4

    move-wide v13, v8

    move-object v15, v10

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/cO;-><init>(Lcom/facebook/ads/redexgen/X/F6;Ljava/lang/Runnable;JLcom/facebook/ads/redexgen/X/92;)V

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/cS;->A08:Lcom/facebook/ads/redexgen/X/JT;

    .line 32949
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tj;->A0I()Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v5

    .line 32950
    move-object v0, v7

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/cy;->A0Z(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/11;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/Jq;)V

    .line 32951
    return-void
.end method
