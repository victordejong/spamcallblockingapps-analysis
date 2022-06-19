.class public final Lcom/facebook/ads/redexgen/X/IV;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:[B

.field public A01:I

.field public A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HJCnnsvFRKCxDDAbEWuhDIcdg3xeT1pm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aXWy8CvsRXCMVcJtmBA1wVRdgUuSFZpH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GQPvM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pDI65rPXKWggiakX8tUTXOsWDv9apWvH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LM6A01RjpialbK5Oi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vEfQavrNrAXrkYYeEOthMrPonFtv4Upj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EEXi7u9hiAizt85cGACEO5SSNblzx1I5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5Jpn3XfqvoPj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    .line 38932
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IV;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 38934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38935
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 38936
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    .line 38937
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 38938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38939
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 38940
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    .line 38941
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 38942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38943
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 38944
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    .line 38945
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/IV;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x18

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

    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/IV;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x21t
        0x4t
        0xct
        -0x9t
        0x2t
        -0x1t
        -0x6t
        -0x4at
        -0x15t
        -0x16t
        -0x24t
        -0x3dt
        -0x32t
        -0x4at
        0x9t
        -0x5t
        0x7t
        0xbt
        -0x5t
        0x4t
        -0x7t
        -0x5t
        -0x4at
        -0x7t
        0x5t
        0x4t
        0xat
        -0x1t
        0x4t
        0xbt
        -0x9t
        0xat
        -0x1t
        0x5t
        0x4t
        -0x4at
        -0x8t
        0xft
        0xat
        -0x5t
        -0x30t
        -0x4at
        -0x43t
        -0x1et
        -0x16t
        -0x2bt
        -0x20t
        -0x23t
        -0x28t
        -0x6ct
        -0x37t
        -0x38t
        -0x46t
        -0x5ft
        -0x54t
        -0x6ct
        -0x19t
        -0x27t
        -0x1bt
        -0x17t
        -0x27t
        -0x1et
        -0x29t
        -0x27t
        -0x6ct
        -0x26t
        -0x23t
        -0x1at
        -0x19t
        -0x18t
        -0x6ct
        -0x2at
        -0x13t
        -0x18t
        -0x27t
        -0x52t
        -0x6ct
        -0x71t
        -0x56t
        -0x55t
        0x5bt
        -0x63t
        -0x5ct
        -0x51t
        0x5bt
        -0x57t
        -0x56t
        -0x51t
        0x5bt
        -0x4bt
        -0x60t
        -0x53t
        -0x56t
        0x75t
        0x5bt
        -0x31t
        -0x32t
        -0x40t
        -0x59t
        -0x4et
    .end array-data
.end method


# virtual methods
.method public final A02()C
    .locals 4

    .line 38946
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public final A03()D
    .locals 2

    .line 38947
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0L()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final A04()I
    .locals 2

    .line 38948
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A05()I
    .locals 1

    .line 38949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public final A06()I
    .locals 1

    .line 38950
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    return v0
.end method

.method public final A07()I
    .locals 1

    .line 38951
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    return v0
.end method

.method public final A08()I
    .locals 4

    .line 38952
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x18

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final A09()I
    .locals 4

    .line 38953
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v2, v0, 0x8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0A()I
    .locals 4

    .line 38954
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v2, v0, 0xff

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0B()I
    .locals 5

    .line 38955
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0A()I

    move-result v4

    .line 38956
    .local p0, "result":I
    if-ltz v4, :cond_0

    .line 38957
    return v4

    .line 38958
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0C()I
    .locals 4

    .line 38959
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v2, v0, 0xff

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0D()I
    .locals 4

    .line 38960
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    .line 38961
    .local p0, "b1":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    .line 38962
    .local v1, "b2":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v3

    .line 38963
    .local v0, "b3":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v2

    .line 38964
    .local v3, "b4":I
    shl-int/lit8 v1, v1, 0x15

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v1, v0

    shl-int/lit8 v0, v3, 0x7

    or-int/2addr v1, v0

    or-int/2addr v1, v2

    return v1
.end method

.method public final A0E()I
    .locals 3

    .line 38965
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final A0F()I
    .locals 4

    .line 38966
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v1, v0, 0xff

    or-int/2addr v1, v2

    .line 38967
    .local p0, "result":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 38968
    return v1
.end method

.method public final A0G()I
    .locals 4

    .line 38969
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x10

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0H()I
    .locals 5

    .line 38970
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v4

    .line 38971
    .local p0, "result":I
    if-ltz v4, :cond_0

    .line 38972
    return v4

    .line 38973
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0I()I
    .locals 4

    .line 38974
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0J()J
    .locals 9

    .line 38975
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v0, v0

    and-long/2addr v7, v0

    const/16 v0, 0x38

    shl-long/2addr v7, v0

    or-long/2addr v2, v7

    return-wide v2
.end method

.method public final A0K()J
    .locals 9

    .line 38976
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v0, v0

    and-long/2addr v7, v0

    const/16 v0, 0x18

    shl-long/2addr v7, v0

    or-long/2addr v2, v7

    return-wide v2
.end method

.method public final A0L()J
    .locals 9

    .line 38977
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    const/16 v0, 0x38

    shl-long/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v0, v0

    and-long/2addr v7, v0

    or-long/2addr v2, v7

    return-wide v2
.end method

.method public final A0M()J
    .locals 9

    .line 38978
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    const/16 v0, 0x18

    shl-long/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v6, v1

    int-to-long v0, v0

    and-long/2addr v7, v0

    or-long/2addr v2, v7

    return-wide v2
.end method

.method public final A0N()J
    .locals 6

    .line 38979
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0L()J

    move-result-wide v3

    .line 38980
    .local p0, "result":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 38981
    return-wide v3

    .line 38982
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0O()J
    .locals 12

    .line 38983
    const/4 v6, 0x0

    .line 38984
    .local p0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v1, v0

    int-to-long v2, v0

    .line 38985
    .local v6, "value":J
    const/4 v5, 0x7

    .local v0, "j":I
    :goto_0
    const/4 v7, 0x6

    if-ltz v5, :cond_0

    .line 38986
    const/4 v11, 0x1

    shl-int v0, v11, v5

    int-to-long v0, v0

    and-long/2addr v0, v2

    const-wide/16 v9, 0x0

    cmp-long v8, v0, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_7

    sget-object v4, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const-string v1, "lhGNf9ZIwuKG"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    if-nez v8, :cond_3

    .line 38987
    const/4 v0, 0x7

    if-ge v5, v7, :cond_2

    .line 38988
    shl-int v0, v11, v5

    sub-int/2addr v0, v11

    int-to-long v0, v0

    and-long/2addr v2, v0

    .line 38989
    rsub-int/lit8 v6, v5, 0x7

    .line 38990
    .end local v0    # "j":I
    :cond_0
    :goto_1
    if-eqz v6, :cond_6

    .line 38991
    const/4 v5, 0x1

    .local v0, "i":I
    :goto_2
    if-ge v5, v6, :cond_5

    .line 38992
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/2addr v0, v5

    aget-byte v8, v1, v0

    .line 38993
    .local v2, "x":I
    and-int/lit16 v1, v8, 0xc0

    const/16 v0, 0x80

    if-ne v1, v0, :cond_4

    .line 38994
    shl-long/2addr v2, v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x6

    aget-object v4, v4, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v4, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const-string v1, "BvJ8XuqLfWkj"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    and-int/lit8 v0, v8, 0x3f

    int-to-long v0, v0

    or-long/2addr v2, v0

    .line 38995
    .end local v2    # "x":I
    add-int/lit8 v5, v5, 0x0

    goto :goto_2

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const-string v1, "bl64THqm1YbP"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    and-int/lit8 v0, v8, 0x3f

    int-to-long v0, v0

    or-long/2addr v2, v0

    .end local v2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 38996
    :cond_2
    if-ne v5, v0, :cond_0

    .line 38997
    const/4 v6, 0x1

    goto :goto_1

    .line 38998
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 38999
    .restart local v2    # "x":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v1, 0x2a

    const/16 v0, 0x7e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39000
    .end local v0    # "i":I
    .end local v2    # "x":I
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39001
    return-wide v2

    .line 39002
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2a

    const/16 v1, 0x23

    const/16 v0, 0x5c

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0P()Ljava/lang/String;
    .locals 6

    .line 39003
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    if-nez v0, :cond_1

    .line 39004
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const-string v1, "Lp13SRVWSAlchtHB237WPpHnlSgF4gaJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rKST0dS6uAv5sauBNsTeIX1rNmAgPgcE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39005
    :cond_1
    iget v5, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39006
    .local p0, "lineLimit":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    if-ge v5, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    aget-byte v0, v0, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A0d(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39007
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39008
    :cond_2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    sub-int v0, v5, v4

    const/4 v3, 0x3

    if-lt v0, v3, :cond_3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    aget-byte v1, v2, v4

    const/16 v0, -0x11

    if-ne v1, v0, :cond_3

    add-int/lit8 v0, v4, 0x1

    aget-byte v1, v2, v0

    const/16 v0, -0x45

    if-ne v1, v0, :cond_3

    add-int/lit8 v0, v4, 0x2

    aget-byte v1, v2, v0

    const/16 v0, -0x41

    if-ne v1, v0, :cond_3

    .line 39009
    add-int/2addr v4, v3

    iput v4, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39010
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    sub-int v0, v5, v1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A0R([BII)Ljava/lang/String;

    move-result-object v4

    .line 39011
    .local v0, "line":Ljava/lang/String;
    iput v5, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39012
    iget v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    if-ne v2, v3, :cond_4

    .line 39013
    return-object v4

    .line 39014
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    aget-byte v1, v0, v2

    const/16 v0, 0xd

    if-ne v1, v0, :cond_6

    .line 39015
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5

    .line 39016
    sget-object v2, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const-string v1, "7WLwSFEg60VT5h1w5xCSRnUKgnyD8yNS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "aRAvn4znRhpfiIQyr1UPz3MngzOxDO2U"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    if-ne v0, v3, :cond_6

    .line 39017
    :goto_1
    return-object v4

    .line 39018
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/IV;->A04:[Ljava/lang/String;

    const-string v1, "q7voCOqIwzwrpNWuoMFHLwpJUMmmskbB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    if-ne v0, v3, :cond_6

    goto :goto_1

    .line 39019
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v1, v0, v2

    const/16 v0, 0xa

    if-ne v1, v0, :cond_7

    .line 39020
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39021
    :cond_7
    return-object v4
.end method

.method public final A0Q()Ljava/lang/String;
    .locals 4

    .line 39022
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    if-nez v0, :cond_0

    .line 39023
    const/4 v0, 0x0

    return-object v0

    .line 39024
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39025
    .local p0, "stringLimit":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_1

    .line 39026
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39027
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    sub-int v0, v3, v1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A0R([BII)Ljava/lang/String;

    move-result-object v2

    .line 39028
    .local v0, "string":Ljava/lang/String;
    iput v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39029
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    if-ge v1, v0, :cond_2

    .line 39030
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39031
    :cond_2
    return-object v2
.end method

.method public final A0R(I)Ljava/lang/String;
    .locals 3

    .line 39032
    if-nez p1, :cond_0

    .line 39033
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39034
    :cond_0
    move v2, p1

    .line 39035
    .local p0, "stringLength":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    .line 39036
    .local p1, "lastIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    .line 39037
    add-int/lit8 v2, v2, -0x1

    .line 39038
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Il;->A0R([BII)Ljava/lang/String;

    move-result-object v1

    .line 39039
    .local v2, "result":Ljava/lang/String;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39040
    return-object v1
.end method

.method public final A0S(I)Ljava/lang/String;
    .locals 3

    .line 39041
    const/16 v2, 0x5f

    const/4 v1, 0x5

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0T(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0T(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 39042
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 39043
    .local p0, "result":Ljava/lang/String;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39044
    return-object v1
.end method

.method public final A0U()S
    .locals 4

    .line 39045
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0
.end method

.method public final A0V()V
    .locals 1

    .line 39046
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39047
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    .line 39048
    return-void
.end method

.method public final A0W(I)V
    .locals 1

    .line 39049
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A05()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/IV;->A0b([BI)V

    .line 39050
    return-void

    .line 39051
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    goto :goto_0
.end method

.method public final A0X(I)V
    .locals 1

    .line 39052
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 39053
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    .line 39054
    return-void

    .line 39055
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Y(I)V
    .locals 1

    .line 39056
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 39057
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39058
    return-void

    .line 39059
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Z(I)V
    .locals 1

    .line 39060
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 39061
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/IU;I)V
    .locals 2

    .line 39062
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/IU;->A00:[B

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 39063
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A07(I)V

    .line 39064
    return-void
.end method

.method public final A0b([BI)V
    .locals 1

    .line 39065
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 39066
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    .line 39067
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39068
    return-void
.end method

.method public final A0c([BII)V
    .locals 2

    .line 39069
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39070
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 39071
    return-void
.end method
