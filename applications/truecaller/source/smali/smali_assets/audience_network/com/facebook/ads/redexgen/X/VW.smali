.class public final Lcom/facebook/ads/redexgen/X/VW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Dd;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Cb;

.field public A01:Lcom/facebook/ads/redexgen/X/Ih;

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9dIhF2X5qYPGZcPrMQjFeU2FMq4Icb5t"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C7lZKzl2OzNugbLE4QJixcZrlcSgCGI7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "v7kvgcbsYqtq4Ou8B7XlURjv8wkzUozH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8BzUB2zJ4MAZsKVthH28T9QXZJlG29jD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wOgdV6BnuyxARX3Rbc0CvFDDXWIKfgjM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mpBmZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "f47n1mRwiFyOsV4myeWB5UC2YKJiwKop"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3tKYH9iJUyIyPmbH9Trftcv4NWgUsp5b"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VW;->A04:[Ljava/lang/String;

    .line 58861
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VW;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VW;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

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

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VW;->A03:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x1at
        0x1at
        0x16t
        0x13t
        0xdt
        0xbt
        0x1et
        0x13t
        0x19t
        0x18t
        -0x27t
        0x22t
        -0x29t
        0x1dt
        0xdt
        0x1et
        0xft
        -0x23t
        -0x21t
    .end array-data
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 10

    .line 58863
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A02:Z

    if-nez v0, :cond_1

    .line 58864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A01:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ih;->A05()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 58865
    return-void

    .line 58866
    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/Cb;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A01:Lcom/facebook/ads/redexgen/X/Ih;

    .line 58867
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ih;->A05()J

    move-result-wide v1

    .line 58868
    const/4 v4, 0x0

    const/16 v3, 0x14

    const/16 v0, 0x4a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/VW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v1, v2}, Lcom/facebook/ads/internal/exoplayer2/Format;->A02(Ljava/lang/String;Ljava/lang/String;J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 58869
    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A02:Z

    .line 58871
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v7

    .line 58872
    .local p0, "sampleSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, p1, v7}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 58873
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/Cb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VW;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/VW;->A04:[Ljava/lang/String;

    const-string v1, "M4wOXnroCREOIcf8T96EgrMDUu9ExHmM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A01:Lcom/facebook/ads/redexgen/X/Ih;

    .line 58874
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ih;->A04()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 58875
    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 58876
    return-void
.end method

.method public final A8C(Lcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 6

    .line 58877
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VW;->A01:Lcom/facebook/ads/redexgen/X/Ih;

    .line 58878
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Dj;->A05()V

    .line 58879
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Dj;->A03()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/Cb;

    .line 58880
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/Cb;

    .line 58881
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Dj;->A04()Ljava/lang/String;

    move-result-object v4

    .line 58882
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VW;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-static {v4, v1, v3, v0, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 58883
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58884
    return-void
.end method
