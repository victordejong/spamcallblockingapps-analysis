.class public final Lcom/facebook/ads/redexgen/X/VL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/E5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/E5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aIgF7yW6te9d0giIJjPlgLYuMarqNmaI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5uowvZFp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cObh83RuJ2BcUv3u494pfG0SonjgkZ34"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vjRgY08J1B3TNMsxRteKWvE9VDogNaKh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qNUTjYBqOOgeDCHuUlR3yEqIWp1K4VGN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N6vmBeMb9YQ5y6AoxxD7YUaD7FUFK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OjnTWYSeBoS9dL1Ai6OGe6VjE6jgVlWS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CC64HnyKjXihB9EkxjxtlcenpS0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VL;->A01:[Ljava/lang/String;

    .line 58477
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VL;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VL;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x53

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

    const/16 v0, 0x67

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VL;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x58t
        0x58t
        0x49t
        0x41t
        0x5ct
        0x58t
        0x49t
        0x48t
        0xct
        0x58t
        0x43t
        0xct
        0x4ft
        0x5et
        0x49t
        0x4dt
        0x58t
        0x49t
        0xct
        0x48t
        0x49t
        0x4ft
        0x43t
        0x48t
        0x49t
        0x5et
        0xct
        0x4at
        0x43t
        0x5et
        0xct
        0x59t
        0x42t
        0x5ft
        0x59t
        0x5ct
        0x5ct
        0x43t
        0x5et
        0x58t
        0x49t
        0x48t
        0xct
        0x4at
        0x43t
        0x5et
        0x41t
        0x4dt
        0x58t
        0x58t
        0x49t
        0x49t
        0x55t
        0x50t
        0x5at
        0x58t
        0x4dt
        0x50t
        0x56t
        0x57t
        0x16t
        0x50t
        0x5dt
        0xat
        0xet
        0x1ft
        0x1ft
        0x3t
        0x6t
        0xct
        0xet
        0x1bt
        0x6t
        0x0t
        0x1t
        0x40t
        0x17t
        0x42t
        0xat
        0x2t
        0x1ct
        0x8t
        0x32t
        0x23t
        0x23t
        0x3ft
        0x3at
        0x30t
        0x32t
        0x27t
        0x3at
        0x3ct
        0x3dt
        0x7ct
        0x2bt
        0x7et
        0x20t
        0x30t
        0x27t
        0x36t
        0x60t
        0x66t
    .end array-data
.end method


# virtual methods
.method public final A4D(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/E3;
    .locals 8

    .line 58479
    iget-object v5, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v0, -0x4a682ec7

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eq v7, v0, :cond_3

    const v0, 0x44ce7ed0

    if-eq v7, v0, :cond_2

    const v6, 0x62816bb7

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A01:[Ljava/lang/String;

    const-string v1, "bTmSe2zy8D5qz7yeGIeNoRuS8tTOpcQK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "fPfUohV67zMJVCtM8CPLt22RAENT6cGu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_4

    .line 58480
    new-instance v0, Lcom/facebook/ads/redexgen/X/VE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VE;-><init>()V

    return-object v0

    .line 58481
    :cond_1
    const/16 v2, 0x53

    const/16 v1, 0x14

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, 0x41

    const/16 v1, 0x12

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v2, 0x32

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 58482
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58483
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/VJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VJ;-><init>()V

    return-object v0

    .line 58484
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/VH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VH;-><init>()V

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEw(Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 4

    .line 58485
    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 58486
    .local p0, "mimeType":Ljava/lang/String;
    const/16 v2, 0x32

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58487
    const/16 v2, 0x41

    const/16 v1, 0x12

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58488
    const/16 v2, 0x53

    const/16 v1, 0x14

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 58489
    :goto_0
    return v0

    .line 58490
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
