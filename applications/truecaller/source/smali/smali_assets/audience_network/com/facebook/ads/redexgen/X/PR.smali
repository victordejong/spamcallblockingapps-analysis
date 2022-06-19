.class public final Lcom/facebook/ads/redexgen/X/PR;
.super Ljava/lang/Object;
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

    const-string v0, "FlapraKYinr7Nj6zb2x"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Je7Oc75DeV26JYLGdoAYQBFZl5wXaWlc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6eSxJX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aEepWtzNMaW6JZj4waJ23HNf2aIS7LoC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JwlyhY0m7wRpvvwBZvP15fqQyn91MpTE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PlE1oLNOrYKtW3AWK6zlObYGaKJphnE8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QTcNGp4T1DOVQL9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "izKSydL2onnSjNYNNJlTpUx2BXz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PR;->A01:[Ljava/lang/String;

    .line 48684
    invoke-static {}, Lcom/facebook/ads/redexgen/X/PR;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/PR;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5d

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/PR;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/PR;->A01:[Ljava/lang/String;

    const-string v1, "ZkkNqMbSq2X5uLLX3N"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8J;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48686
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 48687
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/facebook/ads/redexgen/X/8w;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/8w;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 48688
    .local p1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/8w;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48689
    .local p2, "screenWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 48690
    .local v4, "screenHeight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6f

    const/16 v1, 0xa

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48691
    const/16 v2, 0x3e

    const/16 v1, 0xd

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48692
    const/16 v2, 0x2e

    const/16 v1, 0x10

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48693
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8w;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0xc

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48694
    int-to-float v1, v7

    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x58

    const/16 v1, 0xc

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48695
    int-to-float v1, v6

    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4b

    const/16 v1, 0xd

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48696
    const/16 v2, 0x26

    const/4 v1, 0x2

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x5

    const/4 v1, 0x7

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48697
    sget-object v3, Lcom/facebook/ads/redexgen/X/8w;->A03:Ljava/lang/String;

    const/16 v2, 0x28

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48698
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/4 v1, 0x6

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48699
    const/16 v2, 0x64

    const/16 v1, 0xb

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48700
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8w;->A04()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/16 v1, 0x8

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48701
    return-object v4
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x79

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/PR;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x12t
        0xat
        0x11t
        0xat
        0xct
        -0x26t
        0x7t
        -0x3t
        0xbt
        0x8t
        0x2t
        -0x3t
        0x22t
        0x31t
        0x31t
        0x20t
        0x2ft
        0x22t
        0x2et
        0x26t
        0x2at
        0x2bt
        0x3ct
        0x2ft
        0x29t
        0x2bt
        0x25t
        0x33t
        0x35t
        0x2at
        0x2bt
        0x32t
        0x45t
        0x48t
        0x3ct
        0x3at
        0x45t
        0x3et
        0x32t
        0x36t
        0x21t
        0x25t
        0x11t
        0x28t
        0x17t
        0x24t
        -0xet
        -0x1dt
        -0xct
        -0xat
        -0x10t
        -0x19t
        -0xct
        -0x1ft
        -0x19t
        -0x10t
        -0x1at
        -0xet
        -0xft
        -0x15t
        -0x10t
        -0xat
        0xat
        0x6t
        -0x5t
        0x13t
        -0x5t
        -0x4t
        0x6t
        -0x1t
        -0x7t
        0x8t
        -0x5t
        0x7t
        -0x1t
        -0x16t
        -0x26t
        -0x17t
        -0x24t
        -0x24t
        -0x1bt
        -0x2at
        -0x21t
        -0x24t
        -0x20t
        -0x22t
        -0x21t
        -0x15t
        -0x30t
        -0x40t
        -0x31t
        -0x3et
        -0x3et
        -0x35t
        -0x44t
        -0x2ct
        -0x3at
        -0x3ft
        -0x2ft
        -0x3bt
        0xdt
        -0x2t
        0x5t
        -0x7t
        0x10t
        -0x1t
        0xct
        0xdt
        0x3t
        0x9t
        0x8t
        0x1t
        -0xdt
        0x1t
        0x1t
        -0x9t
        -0x3t
        -0x4t
        -0x13t
        -0x9t
        -0xet
    .end array-data
.end method
