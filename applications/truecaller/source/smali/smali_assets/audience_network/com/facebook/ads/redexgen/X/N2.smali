.class public final Lcom/facebook/ads/redexgen/X/N2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:I

.field public static final A02:I

.field public static final A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Mh7OQPY25mJ4xZdJdnJU4lIWxnSb2W80"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uMvQGqYS2R9kLiwAhxbB5gyg9uPLoFmG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JD8RnvPxGeaTxsc34jN0O6vhnDfoaLvm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "v"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yiVoJ6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bh6EDcFJy1WMlrC6ew5uNV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HsXTYL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "k"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/N2;->A00:[Ljava/lang/String;

    .line 45298
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/N2;->A01:I

    .line 45299
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/N2;->A03:I

    .line 45300
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N2;->A02:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/10;
    .locals 0
    .param p0    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45302
    if-nez p0, :cond_0

    .line 45303
    sget-object p0, Lcom/facebook/ads/redexgen/X/10;->A05:Lcom/facebook/ads/redexgen/X/10;

    return-object p0

    .line 45304
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/N2;->A03(Lcom/facebook/ads/NativeAdLayout;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 45305
    sget-object p0, Lcom/facebook/ads/redexgen/X/10;->A06:Lcom/facebook/ads/redexgen/X/10;

    return-object p0

    .line 45306
    :cond_1
    sget-object p0, Lcom/facebook/ads/redexgen/X/10;->A04:Lcom/facebook/ads/redexgen/X/10;

    return-object p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/N1;
    .locals 4
    .param p3    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 45307
    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 45308
    return-object v3

    .line 45309
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdLayout;->getWidth()I

    move-result v2

    .line 45310
    .local p1, "w":I
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdLayout;->getHeight()I

    move-result v1

    .line 45311
    .local p2, "h":I
    sget v0, Lcom/facebook/ads/redexgen/X/N2;->A01:I

    if-lt v2, v0, :cond_1

    if-lt v1, v0, :cond_1

    .line 45312
    new-instance v0, Lcom/facebook/ads/redexgen/X/So;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/So;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;)V

    return-object v0

    .line 45313
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/N2;->A03:I

    if-lt v2, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/N2;->A02:I

    if-lt v1, v0, :cond_2

    .line 45314
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sp;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Sp;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;)V

    return-object v0

    .line 45315
    :cond_2
    return-object v3
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MV;Lcom/facebook/ads/redexgen/X/MU;)Lcom/facebook/ads/redexgen/X/N1;
    .locals 1

    .line 45316
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MV;Lcom/facebook/ads/redexgen/X/MU;)V

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/NativeAdLayout;)Z
    .locals 4

    .line 45317
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdLayout;->getWidth()I

    move-result v1

    .line 45318
    .local p0, "w":I
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdLayout;->getHeight()I

    move-result p0

    .line 45319
    .local v1, "h":I
    sget v0, Lcom/facebook/ads/redexgen/X/N2;->A01:I

    if-lt v1, v0, :cond_0

    if-ge p0, v0, :cond_3

    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/N2;->A03:I

    if-lt v1, v0, :cond_2

    sget v3, Lcom/facebook/ads/redexgen/X/N2;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/N2;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/N2;->A00:[Ljava/lang/String;

    const-string v1, "hhrIY4o6fKEkU42z4UVpb3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
