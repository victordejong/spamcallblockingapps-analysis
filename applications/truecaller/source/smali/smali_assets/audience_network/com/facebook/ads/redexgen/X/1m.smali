.class public final Lcom/facebook/ads/redexgen/X/1m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/cW;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1m;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1m;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x12

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1m;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x5ft
        0x43t
        0x5at
        0x5bt
        0x7ct
        0x6bt
        0x79t
        0x6ft
        0x7ct
        0x6at
        0x6bt
        0x6at
        0x51t
        0x78t
        0x67t
        0x6at
        0x6bt
        0x61t
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/cf;)V
    .locals 12

    .line 4521
    new-instance v3, Lcom/facebook/ads/redexgen/X/7G;

    .line 4522
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/facebook/ads/redexgen/X/PD;->A04:I

    sget v6, Lcom/facebook/ads/redexgen/X/PD;->A04:I

    .line 4523
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7G;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4524
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/7J;->A0W(Lcom/facebook/ads/redexgen/X/7G;)V

    .line 4525
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0l()Z

    move-result v6

    .line 4526
    .local p0, "isDSL":Z
    if-eqz v6, :cond_0

    .line 4527
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v5

    .line 4528
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v3, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/7I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4529
    .local p1, "cacheFileData":Lcom/facebook/ads/redexgen/X/7I;
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/7I;->A04:Z

    .line 4530
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7I;->A03:Ljava/lang/String;

    .line 4531
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/7J;->A0X(Lcom/facebook/ads/redexgen/X/7I;)V

    .line 4532
    .end local p1    # "cacheFileData":Lcom/facebook/ads/redexgen/X/7I;
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A03()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/JD;->A1x(Landroid/content/Context;Z)Z

    move-result v3

    .line 4533
    .local p1, "useExoPlayerCacheForDSL":Z
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v8

    .line 4534
    .local p2, "videoUrlToCache":Ljava/lang/String;
    new-instance v7, Lcom/facebook/ads/redexgen/X/7I;

    .line 4535
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v9

    .line 4536
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A05()J

    move-result-wide v11

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 4537
    .local v3, "videoData":Lcom/facebook/ads/redexgen/X/7I;
    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    .line 4538
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/7J;->A0X(Lcom/facebook/ads/redexgen/X/7I;)V

    .line 4539
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/7G;

    .line 4540
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v4

    .line 4541
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1h;->A00(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v5

    .line 4542
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1h;->A01(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v6

    .line 4543
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7G;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4544
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/7J;->A0W(Lcom/facebook/ads/redexgen/X/7G;)V

    .line 4545
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1K;->A00()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4546
    .local v4, "url":Ljava/lang/String;
    new-instance v4, Lcom/facebook/ads/redexgen/X/7G;

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 4547
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7G;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 4548
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/7J;->A0W(Lcom/facebook/ads/redexgen/X/7G;)V

    .line 4549
    .end local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 4550
    :cond_1
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/7J;->A0a(Lcom/facebook/ads/redexgen/X/7I;)V

    goto :goto_0

    .line 4551
    :cond_2
    return-void
.end method
