.class public final Lcom/facebook/ads/redexgen/X/Tq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7B;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tj;->A0e(Lcom/facebook/ads/redexgen/X/cy;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cy;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Tj;

.field public final synthetic A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8KjqebZv60QJkTDxRMgw9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "thfRn5pDzJN70UFYfVIlaB6cN7Gudk2R"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "C9BVpw9UV8RgNssPir2gScGxH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7AiIJI7TwWfHsESFux14U5S4ACJbRhuU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Q7zUSmRtSU1V7fItr4R7SI8x29M95mvp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Azfz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "38Oiuq4LYjnMY2HJpsmmy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sSYHnhmgAc6ueqp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tq;->A04:[Ljava/lang/String;

    .line 55067
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tq;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tj;Lcom/facebook/ads/redexgen/X/cy;Z)V
    .locals 0

    .line 55068
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/cy;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Tq;->A02:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tq;->A03:[B

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

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tq;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x29t
        -0xet
        -0x6t
        -0x3t
        -0xat
        -0xbt
        -0x4ft
        0x5t
        0x0t
        -0x4ft
        -0xbt
        0x0t
        0x8t
        -0x1t
        -0x3t
        0x0t
        -0xet
        -0xbt
        -0x4ft
        -0xet
        -0x4ft
        -0x2t
        -0xat
        -0xbt
        -0x6t
        -0xet
        -0x41t
    .end array-data
.end method


# virtual methods
.method public final AA5()V
    .locals 6

    .line 55069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tj;->A0a:Lcom/facebook/ads/redexgen/X/cy;

    if-eqz v0, :cond_0

    .line 55070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tj;->A0a:Lcom/facebook/ads/redexgen/X/cy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cy;->A0X()V

    .line 55071
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Tj;->A0a:Lcom/facebook/ads/redexgen/X/cy;

    .line 55072
    :cond_0
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->CACHE_FAILURE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 55073
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tq;->A00(III)Ljava/lang/String;

    move-result-object v4

    .line 55074
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0G(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 55075
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    .line 55076
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A04(Lcom/facebook/ads/redexgen/X/Tj;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    .line 55077
    invoke-interface {v3, v1, v2, v0, v4}, Lcom/facebook/ads/redexgen/X/0R;->A2a(JILjava/lang/String;)V

    .line 55078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0L(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/Ti;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0L(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/Ti;

    move-result-object v1

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Jh;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 55080
    :cond_1
    return-void
.end method

.method public final AAC()V
    .locals 4

    .line 55081
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/cy;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Tj;->A0a:Lcom/facebook/ads/redexgen/X/cy;

    .line 55082
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A02:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Tj;->A0F(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/F6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0F(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/F6;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tq;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tq;->A04:[Ljava/lang/String;

    const-string v1, "VPn7Tjnl2g2ZoGzxCsTNTuvzL6QbPFmz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "YMqnQw7eyVGctn758ocTTHmAed4stf5y"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cS;->A0F()V

    .line 55084
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0L(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/Ti;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55085
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tq;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tq;->A04:[Ljava/lang/String;

    const-string v1, "6qlMxmRDBvH4L6kOfkSoYm3n5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "yt5qGGbrsd8TRcD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A0H(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jl;->A04:Lcom/facebook/ads/redexgen/X/Jl;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0v(Lcom/facebook/ads/redexgen/X/Tj;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0L(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/Ti;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ti;->ABE()V

    .line 55087
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A02:Z

    if-eqz v0, :cond_2

    .line 55088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0L(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/Ti;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jh;->A9k()V

    .line 55089
    :cond_2
    return-void

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tq;->A04:[Ljava/lang/String;

    const-string v1, "NqrZxTPTxSSE484geuNhnuVXrlMqLfJJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "nXt660y1rE1HMRNPODglVba6eKGAZLBD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A0H(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jl;->A04:Lcom/facebook/ads/redexgen/X/Jl;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
