.class public final Lcom/facebook/ads/redexgen/X/KT;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A03:Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotWrittenPrivateField"
        }
    .end annotation
.end field

.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WcKxqk7L6BbuUQ1o7qmtmX6WSmYBceUW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BgR1wHMut0LLHWxcn1vNnqjOmnDpA7yk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nofrFHfyJT7pmG0QketyEOeNZ4PDBNqx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tJ6rTzDc1vJYhzSuFM6hiX1fKi0tAXSV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zeDIr51bIn8XcOdXOM6dVjfvh9EOKJZZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "x4ZdmXYSSnH60B6WOaypztUTceO04NF4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XXJyOaEVU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eLFDRkAKNxNhqN4Dib4JBju5Hz9f2MYZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KT;->A05:[Ljava/lang/String;

    .line 41505
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KT;->A04()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KT;->A01:Ljava/util/Map;

    .line 41506
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KT;->A00:Ljava/util/Map;

    .line 41507
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KT;->A02:Ljava/util/Map;

    .line 41508
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/KT;->A03:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K6;)J
    .locals 3

    .line 41510
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A01:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41511
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A01:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 41512
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/KS;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K6;->ordinal()I

    move-result v0

    aget p0, v1, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    const-wide/16 v1, -0x3e8

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    .line 41513
    return-wide v1

    .line 41514
    :cond_1
    return-wide v1

    .line 41515
    :cond_2
    const-wide/16 p0, 0x3a98

    sget-object v1, Lcom/facebook/ads/redexgen/X/KT;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KT;->A05:[Ljava/lang/String;

    const-string v1, "PcZmlfQcdFNZlzEkEhUxMjsAcGnkg3Oc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bp21WTLlcRSzBiFixYai9jfTwoum3UGv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-wide p0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KT;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/KU;)Ljava/lang/String;
    .locals 5

    const/16 v2, 0x2f

    const/16 v1, 0xf

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KT;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x19

    const/16 v1, 0x16

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KT;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x8

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KT;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41516
    sget-object v1, Lcom/facebook/ads/redexgen/X/KT;->A02:Ljava/util/Map;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A03(Lcom/facebook/ads/redexgen/X/KU;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/KU;)Ljava/lang/String;
    .locals 5

    .line 41517
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    .line 41518
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KU;->A07()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v3, v2

    .line 41519
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KU;->A04()Lcom/facebook/ads/redexgen/X/K6;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 41520
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KU;->A05()Lcom/facebook/ads/redexgen/X/K9;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 41521
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KU;->A06()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const/4 v1, 0x4

    .line 41522
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KU;->A06()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v1, 0x5

    .line 41523
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KU;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 41524
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KT;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41525
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KU;->A06()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A01()I

    move-result v2

    goto :goto_1

    .line 41526
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KU;->A06()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A00()I

    move-result v0

    goto :goto_0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x3e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KT;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x23t
        0x2bt
        -0xet
        -0x23t
        0x2bt
        -0xet
        -0x23t
        0x2bt
        -0xet
        -0x23t
        0x1ct
        -0xet
        -0x23t
        0x1ct
        -0xet
        -0x23t
        0x1ct
        -0x15t
        0x19t
        -0x18t
        -0x1ct
        -0x16t
        -0x15t
        -0x1bt
        -0x19t
        -0x14t
        0xat
        0x0t
        0x5t
        -0x2t
        -0x49t
        0x3t
        -0x8t
        0xat
        0xbt
        -0x49t
        -0x8t
        -0x5t
        -0x49t
        0x9t
        -0x4t
        0xat
        0x7t
        0x6t
        0x5t
        0xat
        -0x4t
        0x5t
        0x3t
        0x12t
        -0x16t
        -0x1t
        0x11t
        0x12t
        -0x10t
        0x3t
        0x11t
        0xet
        0xdt
        0xct
        0x11t
        0x3t
    .end array-data
.end method

.method public static A05(JLcom/facebook/ads/redexgen/X/KU;)V
    .locals 3

    .line 41527
    sget-object v2, Lcom/facebook/ads/redexgen/X/KT;->A01:Ljava/util/Map;

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/KT;->A03(Lcom/facebook/ads/redexgen/X/KU;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41528
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 4

    .line 41529
    sget-object v3, Lcom/facebook/ads/redexgen/X/KT;->A00:Ljava/util/Map;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A03(Lcom/facebook/ads/redexgen/X/KU;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41530
    return-void
.end method

.method public static A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 2

    .line 41531
    sget-object v1, Lcom/facebook/ads/redexgen/X/KT;->A02:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KT;->A03(Lcom/facebook/ads/redexgen/X/KU;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41532
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/KU;)Z
    .locals 8

    .line 41533
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/KT;->A03:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 41534
    return v7

    .line 41535
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A03(Lcom/facebook/ads/redexgen/X/KU;)Ljava/lang/String;

    move-result-object v4

    .line 41536
    .local p0, "key":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A00:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41537
    return v7

    .line 41538
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A00:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KT;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/KT;->A05:[Ljava/lang/String;

    const-string v1, "HNdF4hlEpt9Mz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 41539
    .local v7, "lastLoadTime":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KU;->A04()Lcom/facebook/ads/redexgen/X/K6;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K6;)J

    move-result-wide v3

    .line 41540
    .local v0, "refreshThreshold":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    cmp-long v0, v1, v3

    if-gez v0, :cond_3

    const/4 v7, 0x1

    :cond_3
    return v7
.end method
