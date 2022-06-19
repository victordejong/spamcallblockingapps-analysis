.class public final Lcom/facebook/ads/redexgen/X/Vk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DV;


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;

.field public static final A0J:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/Cb;

.field public A08:Lcom/facebook/ads/redexgen/X/Cb;

.field public A09:Lcom/facebook/ads/redexgen/X/Cb;

.field public A0A:Ljava/lang/String;

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/IU;

.field public final A0E:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0F:Ljava/lang/String;

.field public final A0G:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wge6vcbYVd2LlwU9IzXxO7y1yc7Npjql"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "e4ah1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HxlECSCujzZIBhcakhB8llOPpIPg4jPi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "c3jgZ7razfwrLoite54T"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YnWTxT53I9VC0eKuEFoJi1GxqSMOrSIM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mGJBSiyG9M2YGViPKeXmqCjoZalx0YC5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VtpTHv8dn8NrwXo7ikKBEmVWKD8j4YCX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dqOZRsMzwGVkln1A4hbisIXuNnIWGGSy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    .line 59961
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vk;->A06()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vk;->A0J:[B

    return-void

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 59962
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Vk;-><init>(ZLjava/lang/String;)V

    .line 59963
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    .line 59964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59965
    const/4 v0, 0x7

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    .line 59966
    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A0J:[B

    const/16 v0, 0xa

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    .line 59967
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A03()V

    .line 59968
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0G:Z

    .line 59969
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Ljava/lang/String;

    .line 59970
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const-string v1, "bnluMaXE1Uw3b3JGoNOZfy6HcCqjlXqz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 59971
    move-object/from16 v3, p0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A07(I)V

    .line 59972
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0C:Z

    const/4 v5, 0x4

    const/4 v4, 0x2

    if-nez v0, :cond_2

    .line 59973
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v8

    const/4 v2, 0x1

    add-int/2addr v8, v2

    .line 59974
    .local p0, "audioObjectType":I
    if-eq v8, v4, :cond_0

    .line 59975
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x20

    const/16 v1, 0x1c

    const/16 v0, 0x79

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x2b

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x16

    const/16 v1, 0xa

    const/16 v0, 0x18

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59976
    const/4 v8, 0x2

    .line 59977
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v6

    .line 59978
    .local v0, "sampleRateIndex":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 59979
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    .line 59980
    .local v5, "channelConfig":I
    invoke-static {v8, v6, v0}, Lcom/facebook/ads/redexgen/X/IA;->A07(III)[B

    move-result-object v6

    .line 59981
    .local v0, "audioSpecificConfig":[B
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/IA;->A03([B)Landroid/util/Pair;

    move-result-object v1

    .line 59982
    .local v8, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0A:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 59983
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 59984
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 59985
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0F:Ljava/lang/String;

    .line 59986
    const/16 v6, 0x4b

    const/16 v1, 0xf

    const/16 v0, 0x7e

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v7

    invoke-static/range {v8 .. v18}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    .line 59987
    .local v2, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    const-wide/32 v6, 0x3d090000

    iget v0, v8, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v6, v0

    iput-wide v6, v3, Lcom/facebook/ads/redexgen/X/Vk;->A05:J

    .line 59988
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Vk;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59989
    iput-boolean v2, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0C:Z

    .line 59990
    .end local p0    # "audioObjectType":I
    .end local v0    # "audioSpecificConfig":[B
    .end local v5    # "channelConfig":I
    .end local v0
    .end local v8    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :goto_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 59991
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v8, v0, -0x5

    .line 59992
    .local p0, "sampleSize":I
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Z

    if-eqz v0, :cond_1

    .line 59993
    add-int/lit8 v8, v8, -0x2

    .line 59994
    .end local p0    # "sampleSize":I
    .local v0, "sampleSize":I
    :cond_1
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Vk;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    iget-wide v5, v3, Lcom/facebook/ads/redexgen/X/Vk;->A05:J

    const/4 v7, 0x0

    move-object/from16 v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59995
    :cond_2
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const-string v1, "gnfbeCT7ETb0BF6eGTwxRLZIMNoo6eBq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const-string v1, "DPeEZCdjnoP4QwMjUw7HIDON5EObNWtY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "TWt76gMmW2EkEQM2OhdsBT8X6vSrq3Ij"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Vk;->A07(Lcom/facebook/ads/redexgen/X/Cb;JII)V

    .line 59996
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02()V
    .locals 6

    .line 59997
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    const/16 v0, 0xa

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 59998
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    .line 60000
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0D()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    .line 60001
    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Vk;->A07(Lcom/facebook/ads/redexgen/X/Cb;JII)V

    .line 60002
    return-void
.end method

.method private A03()V
    .locals 1

    .line 60003
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:I

    .line 60004
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    .line 60005
    const/16 v0, 0x100

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    .line 60006
    return-void
.end method

.method private A04()V
    .locals 1

    .line 60007
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:I

    .line 60008
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    .line 60009
    return-void
.end method

.method private A05()V
    .locals 2

    .line 60010
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:I

    .line 60011
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vk;->A0J:[B

    array-length v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    .line 60012
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:I

    .line 60013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60014
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vk;->A0H:[B

    return-void

    :array_0
    .array-data 1
        -0x78t
        0x7ct
        -0x42t
        -0x2ft
        -0x30t
        0x7ct
        -0x43t
        -0x31t
        -0x31t
        -0x2ft
        -0x37t
        -0x3bt
        -0x36t
        -0x3dt
        0x7ct
        -0x63t
        -0x63t
        -0x61t
        0x7ct
        -0x58t
        -0x61t
        -0x76t
        -0x76t
        -0x53t
        -0x43t
        -0x44t
        -0x65t
        -0x52t
        -0x56t
        -0x53t
        -0x52t
        -0x45t
        -0x12t
        0xft
        0x1et
        0xft
        0xdt
        0x1et
        0xft
        0xet
        -0x36t
        0xbt
        0x1ft
        0xet
        0x13t
        0x19t
        -0x36t
        0x19t
        0xct
        0x14t
        0xft
        0xdt
        0x1et
        -0x36t
        0x1et
        0x23t
        0x1at
        0xft
        -0x1ct
        -0x36t
        -0x1at
        -0xbt
        -0xbt
        -0xft
        -0x12t
        -0x18t
        -0x1at
        -0x7t
        -0x12t
        -0xct
        -0xdt
        -0x4ct
        -0x12t
        -0x17t
        -0x48t
        0x10t
        0x24t
        0x13t
        0x18t
        0x1et
        -0x22t
        0x1ct
        0x1ft
        -0x1dt
        0x10t
        -0x24t
        0x1bt
        0x10t
        0x23t
        0x1ct
    .end array-data
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Cb;JII)V
    .locals 1

    .line 60015
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:I

    .line 60016
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    .line 60017
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A07:Lcom/facebook/ads/redexgen/X/Cb;

    .line 60018
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:J

    .line 60019
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:I

    .line 60020
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 8

    .line 60021
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 60022
    .local p0, "adtsData":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v0

    .line 60023
    .local p1, "position":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v4

    .line 60024
    .local v5, "endOffset":I
    :goto_0
    if-ge v0, v4, :cond_7

    .line 60025
    add-int/lit8 v3, v0, 0x1

    .end local p1    # "position":I
    .local v0, "position":I
    aget-byte v7, v5, v0

    const/16 v1, 0xff

    and-int/2addr v7, v1

    .line 60026
    .local p1, "data":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    const/16 v6, 0x200

    if-ne v0, v6, :cond_1

    const/16 v0, 0xf0

    if-lt v7, v0, :cond_1

    if-eq v7, v1, :cond_1

    .line 60027
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Z

    .line 60028
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A04()V

    .line 60029
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60030
    return-void

    .line 60031
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 60032
    :cond_1
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    or-int v1, v2, v7

    const/16 v0, 0x149

    if-eq v1, v0, :cond_3

    const/16 v0, 0x1ff

    if-eq v1, v0, :cond_2

    const/16 v0, 0x344

    if-eq v1, v0, :cond_4

    const/16 v0, 0x433

    if-eq v1, v0, :cond_6

    .line 60033
    const/16 v0, 0x100

    if-eq v2, v0, :cond_5

    .line 60034
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    .line 60035
    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    .line 60036
    :cond_2
    iput v6, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    .line 60037
    goto :goto_2

    .line 60038
    :cond_3
    const/16 v0, 0x300

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    .line 60039
    goto :goto_2

    .line 60040
    :cond_4
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    .line 60041
    .end local p1    # "data":I
    :cond_5
    :goto_2
    move v0, v3

    goto :goto_0

    .line 60042
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A05()V

    .line 60043
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60044
    return-void

    .line 60045
    :cond_7
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60046
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 7

    .line 60047
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60048
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A07:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 60049
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    .line 60050
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:I

    if-ne v0, v4, :cond_0

    .line 60051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A07:Lcom/facebook/ads/redexgen/X/Cb;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 60052
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:J

    .line 60053
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A03()V

    .line 60054
    :cond_0
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/IV;[BI)Z
    .locals 2

    .line 60055
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60056
    .local p0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 60057
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    .line 60058
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 60059
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    if-lez v0, :cond_8

    .line 60060
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:I

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    if-eq v3, v0, :cond_5

    const/4 v4, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const-string v1, "9CqnxzaEQimEcBf5cSINZxdBysafSxdF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "zLp55t2V8ycwykcXwXcmLQHdTFNUXCiS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v3, v4, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    goto :goto_0

    .line 60061
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vk;->A09(Lcom/facebook/ads/redexgen/X/IV;)V

    goto :goto_0

    .line 60062
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    .line 60063
    .local p0, "targetLength":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0D:Lcom/facebook/ads/redexgen/X/IU;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IU;->A00:[B

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Vk;->A0A(Lcom/facebook/ads/redexgen/X/IV;[BI)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_3

    if-eqz v3, :cond_0

    .line 60064
    :goto_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A01()V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0I:[Ljava/lang/String;

    const-string v1, "PBSyuwIG2tPzzgRnoBM9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "owzwp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    goto :goto_2

    .line 60065
    :cond_4
    const/4 v1, 0x5

    goto :goto_1

    .line 60066
    .end local p0    # "targetLength":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/16 v0, 0xa

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A0A(Lcom/facebook/ads/redexgen/X/IV;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60067
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A02()V

    goto :goto_0

    .line 60068
    :cond_6
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vk;->A08(Lcom/facebook/ads/redexgen/X/IV;)V

    .line 60069
    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60070
    :cond_8
    return-void
.end method

.method public final A4T(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 7

    .line 60071
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A05()V

    .line 60072
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0A:Ljava/lang/String;

    .line 60073
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    .line 60074
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0G:Z

    if-eqz v0, :cond_0

    .line 60075
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A05()V

    .line 60076
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A03()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Cb;

    .line 60077
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Cb;

    .line 60078
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A04()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    .line 60079
    const/4 v3, 0x0

    const/16 v2, 0x3c

    const/16 v1, 0xf

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 60080
    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 60081
    :goto_0
    return-void

    .line 60082
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/WP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WP;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Cb;

    goto :goto_0
.end method

.method public final ACl()V
    .locals 0

    .line 60083
    return-void
.end method

.method public final ACm(JZ)V
    .locals 0

    .line 60084
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:J

    .line 60085
    return-void
.end method

.method public final AE8()V
    .locals 0

    .line 60086
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vk;->A03()V

    .line 60087
    return-void
.end method
