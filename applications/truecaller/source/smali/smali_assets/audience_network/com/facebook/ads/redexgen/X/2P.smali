.class public final Lcom/facebook/ads/redexgen/X/2P;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:[I

.field public static final A01:[J

.field public static final A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5289
    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/2P;->A00:[I

    .line 5290
    new-array v0, v1, [J

    sput-object v0, Lcom/facebook/ads/redexgen/X/2P;->A01:[J

    .line 5291
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2P;->A02:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(I)I
    .locals 0

    .line 5293
    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2P;->A01(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static A01(I)I
    .locals 3

    .line 5294
    const/4 v2, 0x4

    .local p0, "i":I
    :goto_0
    const/16 v0, 0x20

    if-ge v2, v0, :cond_1

    .line 5295
    const/4 v1, 0x1

    shl-int v0, v1, v2

    add-int/lit8 v0, v0, -0xc

    if-gt p0, v0, :cond_0

    .line 5296
    shl-int/2addr v1, v2

    add-int/lit8 v0, v1, -0xc

    return v0

    .line 5297
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5298
    .end local p0    # "i":I
    :cond_1
    return p0
.end method

.method public static A02([III)I
    .locals 4

    .line 5299
    const/4 v3, 0x0

    .line 5300
    .local p0, "lo":I
    add-int/lit8 v2, p1, -0x1

    .line 5301
    .local p1, "hi":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 5302
    add-int v0, v3, v2

    ushr-int/lit8 v1, v0, 0x1

    .line 5303
    .local p2, "mid":I
    aget v0, p0, v1

    .line 5304
    .local v3, "midVal":I
    if-ge v0, p2, :cond_0

    .line 5305
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 5306
    :cond_0
    if-le v0, p2, :cond_1

    .line 5307
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 5308
    .restart local p2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_1
    return v1

    .line 5309
    .end local p2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method public static A03([JIJ)I
    .locals 6

    .line 5310
    const/4 v5, 0x0

    .line 5311
    .local p0, "lo":I
    add-int/lit8 v4, p1, -0x1

    .line 5312
    .local p1, "hi":I
    :goto_0
    if-gt v5, v4, :cond_2

    .line 5313
    add-int v0, v5, v4

    ushr-int/lit8 v3, v0, 0x1

    .line 5314
    .local p2, "mid":I
    aget-wide v1, p0, v3

    .line 5315
    .local v3, "midVal":J
    cmp-long v0, v1, p2

    if-gez v0, :cond_0

    .line 5316
    add-int/lit8 v5, v3, 0x1

    goto :goto_0

    .line 5317
    :cond_0
    cmp-long v0, v1, p2

    if-lez v0, :cond_1

    .line 5318
    add-int/lit8 v4, v3, -0x1

    goto :goto_0

    .line 5319
    .restart local p2    # "mid":I
    .restart local v3    # "midVal":J
    :cond_1
    return v3

    .line 5320
    .end local p2    # "mid":I
    .end local v3    # "midVal":J
    :cond_2
    xor-int/lit8 v0, v5, -0x1

    return v0
.end method

.method public static A04(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 5321
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method
