.class public final Lcom/facebook/ads/redexgen/X/Vh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DV;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Z

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Dg;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:[Lcom/facebook/ads/redexgen/X/Cb;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Jiy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2wEJIBTa4RvP8yrIwKSodHRjo9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "akcZBAKpF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EuZb8kUx1OZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XeLxT4hCbfpB8vk3L3qpbFThh9kK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oaj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "R8TqjunyKtvNfOkCV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nGIequV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vh;->A07:[Ljava/lang/String;

    .line 59790
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vh;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Dg;",
            ">;)V"
        }
    .end annotation

    .line 59791
    .local v0, "subtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59792
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A04:Ljava/util/List;

    .line 59793
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Cb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A05:[Lcom/facebook/ads/redexgen/X/Cb;

    .line 59794
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vh;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4c

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vh;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x64t
        0x64t
        0x78t
        0x7dt
        0x77t
        0x75t
        0x60t
        0x7dt
        0x7bt
        0x7at
        0x3bt
        0x70t
        0x62t
        0x76t
        0x67t
        0x61t
        0x76t
        0x67t
    .end array-data
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/IV;I)Z
    .locals 2

    .line 59795
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59796
    return v1

    .line 59797
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 59798
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:Z

    .line 59799
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    .line 59800
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:Z

    return v0
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 6

    .line 59801
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:Z

    if-eqz v0, :cond_3

    .line 59802
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A02(Lcom/facebook/ads/redexgen/X/IV;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59803
    return-void

    .line 59804
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/Vh;->A02(Lcom/facebook/ads/redexgen/X/IV;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59805
    return-void

    .line 59806
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v4

    .line 59807
    .local p0, "dataPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v3

    .line 59808
    .local v0, "bytesAvailable":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vh;->A05:[Lcom/facebook/ads/redexgen/X/Cb;

    array-length v1, v2

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v0, v2, v5

    .line 59809
    .local v0, "output":Lcom/facebook/ads/redexgen/X/Cb;
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59810
    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 59811
    .end local v0    # "output":Lcom/facebook/ads/redexgen/X/Cb;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59812
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:I

    .line 59813
    .end local p0    # "dataPosition":I
    .end local v0
    :cond_3
    return-void
.end method

.method public final A4T(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 13

    .line 59814
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vh;->A05:[Lcom/facebook/ads/redexgen/X/Cb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vh;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vh;->A07:[Ljava/lang/String;

    const-string v1, "6Yign7KSgGvnaQ3UG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Q7U"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    array-length v0, v4

    if-ge v3, v0, :cond_0

    .line 59815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A04:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Dg;

    .line 59816
    .local p1, "subtitleInfo":Lcom/facebook/ads/redexgen/X/Dg;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A05()V

    .line 59817
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A03()I

    move-result v1

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v2

    .line 59818
    .local p2, "output":Lcom/facebook/ads/redexgen/X/Cb;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A04()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dg;->A02:[B

    .line 59819
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/Dg;->A01:Ljava/lang/String;

    const/4 v12, 0x0

    .line 59820
    const/4 v4, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x58

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v12}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 59821
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A05:[Lcom/facebook/ads/redexgen/X/Cb;

    aput-object v2, v0, v3

    .line 59823
    .end local p1    # "subtitleInfo":Lcom/facebook/ads/redexgen/X/Dg;
    .end local p2    # "output":Lcom/facebook/ads/redexgen/X/Cb;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59824
    .end local p0    # "i":I
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACl()V
    .locals 11

    .line 59825
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:Z

    if-eqz v0, :cond_1

    .line 59826
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vh;->A05:[Lcom/facebook/ads/redexgen/X/Cb;

    array-length v2, v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v3, v0

    .line 59827
    .local v9, "output":Lcom/facebook/ads/redexgen/X/Cb;
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 59828
    .end local v9    # "output":Lcom/facebook/ads/redexgen/X/Cb;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59829
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:Z

    .line 59830
    :cond_1
    return-void
.end method

.method public final ACm(JZ)V
    .locals 1

    .line 59831
    if-nez p3, :cond_0

    .line 59832
    return-void

    .line 59833
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:Z

    .line 59834
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:J

    .line 59835
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:I

    .line 59836
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    .line 59837
    return-void
.end method

.method public final AE8()V
    .locals 1

    .line 59838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:Z

    .line 59839
    return-void
.end method
