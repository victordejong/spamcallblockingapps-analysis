.class public final Lcom/facebook/ads/redexgen/X/PQ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public final A02:Lcom/facebook/ads/redexgen/X/8J;

.field public final A03:Lcom/facebook/ads/redexgen/X/JT;

.field public final A04:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A05:Lcom/facebook/ads/redexgen/X/PP;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wShQC8dEdCdDsonD9ckCi5w9U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b5c2oWnzHv5UWiyt71KIAMilmtcSqC1N"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4oZvc6d7ZwR5AqDgCDxuZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CpRmP5RSNkzg3ZlMUDzKwsVogZKCCIfv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sNKw3geGf4TvnRH7EsTwjKTQ1PVdzKbr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vkOXVJfFXuiRjckYDq31YMz3bRLaI4ty"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WCP05eFM3owSSVORqqhL5dWCzqIHotme"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3PgjMBtjqMKuKf4b6dM3cFumw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PQ;->A0A:[Ljava/lang/String;

    .line 48616
    invoke-static {}, Lcom/facebook/ads/redexgen/X/PQ;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/PP;Lcom/facebook/ads/redexgen/X/JT;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8J;",
            "Lcom/facebook/ads/redexgen/X/PP;",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48617
    .local v1, "metricsData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48618
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PQ;->A02:Lcom/facebook/ads/redexgen/X/8J;

    .line 48619
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PQ;->A05:Lcom/facebook/ads/redexgen/X/PP;

    .line 48620
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/PQ;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 48621
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/PQ;->A07:Ljava/util/Map;

    .line 48622
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/PQ;->A06:Ljava/lang/String;

    .line 48623
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PQ;->A06:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PQ;->A03:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A04:Lcom/facebook/ads/redexgen/X/Jb;

    .line 48624
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/PP;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1M(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A08:Z

    .line 48625
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PQ;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x9

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
    .locals 5

    .line 48626
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 48627
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x32

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3c

    const/16 v1, 0x9

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48628
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/PQ;->A07(Ljava/util/Map;)V

    .line 48629
    return-void
.end method

.method private A02()V
    .locals 3

    .line 48630
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PQ;->A04:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0Y:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 48631
    return-void
.end method

.method private A03()V
    .locals 5

    .line 48632
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 48633
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x32

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0x10

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48634
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/PQ;->A07(Ljava/util/Map;)V

    .line 48635
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x5f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/PQ;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x6et
        -0x5bt
        -0x5ct
        -0x5ct
        -0x61t
        -0x62t
        -0x71t
        -0x6dt
        -0x64t
        -0x67t
        -0x6dt
        -0x65t
        -0x80t
        -0x6dt
        -0x6et
        -0x6et
        -0x73t
        -0x74t
        0x7dt
        -0x74t
        0x7ft
        -0x75t
        -0x7dt
        -0x70t
        -0x67t
        -0x71t
        -0x76t
        -0x72t
        -0x74t
        -0x63t
        -0x71t
        -0x76t
        -0x62t
        -0x6dt
        -0x66t
        -0x5et
        -0x76t
        -0x60t
        -0x65t
        -0x3bt
        -0x2at
        -0x3bt
        -0x32t
        -0x2ct
        -0x41t
        -0x3bt
        -0x28t
        -0x2ct
        -0x2et
        -0x3ft
        0x7bt
        -0x74t
        0x7bt
        -0x7ct
        -0x76t
        0x75t
        -0x76t
        -0x71t
        -0x7at
        0x7bt
        -0x2et
        -0x34t
        -0x28t
        -0x30t
        -0x36t
        -0x29t
        -0x26t
        -0x34t
        -0x31t
        -0x6et
        -0x75t
        -0x64t
        -0x75t
        -0x6et
        -0x7bt
        -0x77t
        -0x6bt
        -0x6dt
        -0x6at
        -0x6et
        -0x75t
        -0x66t
        -0x75t
        -0x7at
        0x7ft
        -0x70t
        0x7ft
        -0x7at
        0x79t
        -0x78t
        0x7bt
        -0x79t
        0x7ft
        -0x28t
        -0x3ft
    .end array-data
.end method

.method private A05(Ljava/lang/String;)V
    .locals 6

    .line 48636
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 48637
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x53

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48638
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 48639
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x32

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x45

    const/16 v1, 0xe

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48640
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Le;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0xb

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48641
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/PQ;->A07(Ljava/util/Map;)V

    .line 48642
    return-void
.end method

.method private A06(Ljava/lang/String;FF)V
    .locals 6

    .line 48643
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 48644
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0xc

    const/16 v1, 0xb

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48645
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5d

    const/4 v1, 0x1

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48646
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5e

    const/4 v1, 0x1

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48647
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 48648
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x32

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48649
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Le;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0xb

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48650
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/PQ;->A07(Ljava/util/Map;)V

    .line 48651
    return-void
.end method

.method private A07(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48652
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A06:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48653
    return-void

    .line 48654
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A07:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48655
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PQ;->A02:Lcom/facebook/ads/redexgen/X/8J;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A01:Ljava/lang/String;

    .line 48656
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A01(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 48657
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48658
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PQ;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A06:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JT;->A93(Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/PQ;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48659
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/PQ;->A0A:[Ljava/lang/String;

    const-string v1, "HxovkwELrWr5bBRZF5CQfpfOo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "TU6dTWUJiKZlmHYRZZZtjyCrH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void
.end method


# virtual methods
.method public initializeLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48660
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A08:Z

    if-nez v0, :cond_0

    .line 48661
    return-void

    .line 48662
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Ljava/lang/String;

    .line 48663
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PQ;->A01:Ljava/lang/String;

    .line 48664
    return-void
.end method

.method public logButtonClick(Ljava/lang/String;FF)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48665
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A08:Z

    if-nez v0, :cond_0

    .line 48666
    return-void

    .line 48667
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/PQ;->A06(Ljava/lang/String;FF)V

    .line 48668
    return-void
.end method

.method public logEndCardShowUp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48669
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A08:Z

    if-nez v0, :cond_0

    .line 48670
    return-void

    .line 48671
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PQ;->A03()V

    .line 48672
    return-void
.end method

.method public logGameLoad()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48673
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A08:Z

    if-nez v0, :cond_0

    .line 48674
    return-void

    .line 48675
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PQ;->A01()V

    .line 48676
    return-void
.end method

.method public logLevelComplete(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48677
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A08:Z

    if-nez v0, :cond_0

    .line 48678
    return-void

    .line 48679
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PQ;->A05(Ljava/lang/String;)V

    .line 48680
    return-void
.end method

.method public onCTAClick()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48681
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PQ;->A02()V

    .line 48682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A05:Lcom/facebook/ads/redexgen/X/PP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->A0A()V

    .line 48683
    return-void
.end method
