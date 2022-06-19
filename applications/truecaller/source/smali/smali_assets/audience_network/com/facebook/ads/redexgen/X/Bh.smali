.class public final Lcom/facebook/ads/redexgen/X/Bh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Bg;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:[B

.field public A05:[B

.field public A06:[I

.field public A07:[I

.field public final A08:Landroid/media/MediaCodec$CryptoInfo;

.field public final A09:Lcom/facebook/ads/redexgen/X/Bg;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24250
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/4 v2, 0x0

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bh;->A00()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A08:Landroid/media/MediaCodec$CryptoInfo;

    .line 24251
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bh;->A08:Landroid/media/MediaCodec$CryptoInfo;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bg;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Bg;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/facebook/ads/redexgen/X/Bf;)V

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    .line 24252
    return-void

    .line 24253
    :cond_0
    move-object v0, v2

    goto :goto_1

    .line 24254
    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private A00()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 24255
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private A01()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 24256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bh;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A03:I

    iput v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 24257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A06:[I

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 24258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A07:[I

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 24259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A05:[B

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 24260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A04:[B

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 24261
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A02:I

    iput v0, v1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 24262
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 24263
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bh;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bh;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A00:I

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bg;->A01(Lcom/facebook/ads/redexgen/X/Bg;II)V

    .line 24264
    :cond_0
    return-void
.end method


# virtual methods
.method public final A02()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 24265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A08:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final A03(I[I[I[B[BIII)V
    .locals 2

    .line 24266
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Bh;->A03:I

    .line 24267
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bh;->A06:[I

    .line 24268
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Bh;->A07:[I

    .line 24269
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Bh;->A05:[B

    .line 24270
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Bh;->A04:[B

    .line 24271
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Bh;->A02:I

    .line 24272
    iput p7, p0, Lcom/facebook/ads/redexgen/X/Bh;->A01:I

    .line 24273
    iput p8, p0, Lcom/facebook/ads/redexgen/X/Bh;->A00:I

    .line 24274
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 24275
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bh;->A01()V

    .line 24276
    :cond_0
    return-void
.end method
