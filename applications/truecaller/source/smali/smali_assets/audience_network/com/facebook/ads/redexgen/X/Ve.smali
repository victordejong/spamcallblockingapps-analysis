.class public final Lcom/facebook/ads/redexgen/X/Ve;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Da;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Cb;

.field public A03:Lcom/facebook/ads/redexgen/X/Da;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Db;

.field public final A07:Lcom/facebook/ads/redexgen/X/Db;

.field public final A08:Lcom/facebook/ads/redexgen/X/Db;

.field public final A09:Lcom/facebook/ads/redexgen/X/Db;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Db;

.field public final A0B:Lcom/facebook/ads/redexgen/X/De;

.field public final A0C:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PSzfdfjRZC0XN6VxjsgcztfFaZhzgWb7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1Gl4YGiW2C7ithS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fAa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AJgx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lYVk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kBtUfz7weItcbZk1MBk54uJpUuqD7Dj9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "de5NTYCoeu4fZv0TXl8jvZIWd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    .line 59399
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ve;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/De;)V
    .locals 3

    .line 59400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59401
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0B:Lcom/facebook/ads/redexgen/X/De;

    .line 59402
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0D:[Z

    .line 59403
    const/16 v2, 0x80

    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Db;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0A:Lcom/facebook/ads/redexgen/X/Db;

    .line 59404
    const/16 v1, 0x21

    new-instance v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Db;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A08:Lcom/facebook/ads/redexgen/X/Db;

    .line 59405
    const/16 v1, 0x22

    new-instance v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Db;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A06:Lcom/facebook/ads/redexgen/X/Db;

    .line 59406
    const/16 v1, 0x27

    new-instance v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Db;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A07:Lcom/facebook/ads/redexgen/X/Db;

    .line 59407
    const/16 v1, 0x28

    new-instance v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Db;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A09:Lcom/facebook/ads/redexgen/X/Db;

    .line 59408
    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    .line 59409
    return-void
.end method

.method public static A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Db;Lcom/facebook/ads/redexgen/X/Db;Lcom/facebook/ads/redexgen/X/Db;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 17

    .line 59410
    move-object/from16 v7, p1

    iget v1, v7, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    move-object/from16 v3, p2

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    add-int/2addr v1, v0

    move-object/from16 v6, p3

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    add-int/2addr v1, v0

    new-array v5, v1, [B

    .line 59411
    .local v6, "csd":[B
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59412
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget v1, v7, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v2, v4, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59413
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget v1, v7, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    add-int/2addr v1, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v2, v4, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59414
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/IW;

    invoke-direct {v3, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/IW;-><init>([BII)V

    .line 59415
    .local v7, "bitArray":Lcom/facebook/ads/redexgen/X/IW;
    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IW;->A07(I)V

    .line 59416
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lcom/facebook/ads/redexgen/X/IW;->A05(I)I

    move-result v7

    .line 59417
    .local v1, "maxSubLayersMinus1":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A06()V

    .line 59418
    const/16 v0, 0x58

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IW;->A07(I)V

    .line 59419
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/IW;->A07(I)V

    .line 59420
    const/4 v9, 0x0

    .line 59421
    .local v1, "toSkip":I
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 59422
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "O"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "1nR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v10, :cond_0

    .line 59423
    add-int/lit8 v9, v9, 0x59

    .line 59424
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59425
    add-int/lit8 v9, v9, 0x8

    .line 59426
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 59427
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v3, v9}, Lcom/facebook/ads/redexgen/X/IW;->A07(I)V

    .line 59428
    const/4 v6, 0x2

    if-lez v7, :cond_3

    .line 59429
    rsub-int/lit8 v0, v7, 0x8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IW;->A07(I)V

    .line 59430
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59431
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v11

    .line 59432
    .local v1, "chromaFormatIdc":I
    if-ne v11, v8, :cond_4

    .line 59433
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A06()V

    .line 59434
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v12

    .line 59435
    .local v3, "picWidthInLumaSamples":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v13

    .line 59436
    .local v5, "picHeightInLumaSamples":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59437
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v10

    .line 59438
    .local v1, "confWinLeftOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v9

    .line 59439
    .local v0, "confWinRightOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v8

    .line 59440
    .local v4, "confWinTopOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v2

    .line 59441
    .local v2, "confWinBottomOffset":I
    const/4 v1, 0x1

    if-eq v11, v1, :cond_5

    if-ne v11, v6, :cond_9

    :cond_5
    const/4 v0, 0x2

    .line 59442
    .local v0, "subWidthC":I
    :goto_1
    if-ne v11, v1, :cond_6

    const/4 v1, 0x2

    .line 59443
    .local v6, "subHeightC":I
    :cond_6
    add-int/2addr v10, v9

    mul-int/2addr v10, v0

    sub-int/2addr v12, v10

    .line 59444
    add-int/2addr v8, v2

    mul-int/2addr v8, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_15

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "C"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Xyf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sub-int/2addr v13, v8

    .line 59445
    .end local v6    # "subHeightC":I
    .end local v1    # "confWinLeftOffset":I
    .end local v0    # "subWidthC":I
    .end local v4    # "confWinTopOffset":I
    .end local v2    # "confWinBottomOffset":I
    .end local v0
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59446
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59447
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v8

    .line 59448
    .local v6, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .local v1, "i":I
    :goto_2
    if-gt v0, v7, :cond_a

    .line 59449
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59450
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59451
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59452
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v7

    goto :goto_2

    .line 59453
    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    .line 59454
    .end local v1    # "i":I
    :cond_a
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59455
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59456
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59457
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59458
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14

    .line 59459
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "L"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "SFB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59460
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    .line 59461
    .local v1, "scalingListEnabled":Z
    if-eqz v0, :cond_b

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59462
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ve;->A05(Lcom/facebook/ads/redexgen/X/IW;)V

    .line 59463
    :cond_b
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/IW;->A07(I)V

    .line 59464
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 59465
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/IW;->A07(I)V

    .line 59466
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59467
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59468
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A06()V

    .line 59469
    :cond_c
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ve;->A06(Lcom/facebook/ads/redexgen/X/IW;)V

    .line 59470
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59471
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "Ru3iiMNyUlnrUsoUUCHNe7f8PEwOWEdx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v4, v7, :cond_e

    .line 59472
    add-int/lit8 v0, v8, 0x4

    .line 59473
    .local v4, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IW;->A07(I)V

    .line 59474
    .end local v4    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59475
    .end local v0    # "i":I
    :cond_e
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/IW;->A07(I)V

    .line 59476
    const/high16 v4, 0x3f800000    # 1.0f

    .line 59477
    .local v0, "pixelWidthHeightRatio":F
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 59478
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "kAVLrXtqzQqcb3N"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v6, :cond_f

    .line 59479
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IW;->A05(I)I

    move-result v6

    .line 59480
    .local v0, "aspectRatioIdc":I
    const/16 v7, 0xff

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "Q0asNNixqeMDgfrXMA3vs7CCA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v6, v7, :cond_11

    .line 59481
    :goto_4
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IW;->A05(I)I

    move-result v1

    .line 59482
    .local v4, "sarWidth":I
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IW;->A05(I)I

    move-result v0

    .line 59483
    .local v0, "sarHeight":I
    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 59484
    int-to-float v4, v1

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 59485
    .end local v0    # "sarHeight":I
    :cond_f
    :goto_5
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    .line 59486
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, -0x1

    const/16 p1, 0x0

    .line 59487
    const/16 v2, 0x2d

    const/16 v1, 0xa

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ve;->A01(III)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v7, p0

    move/from16 p0, v4

    invoke-static/range {v7 .. v18}, Lcom/facebook/ads/internal/exoplayer2/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_10
    if-ne v6, v7, :cond_11

    goto :goto_4

    .line 59488
    :cond_11
    sget-object v0, Lcom/facebook/ads/redexgen/X/IR;->A04:[F

    array-length v0, v0

    if-ge v6, v0, :cond_12

    .line 59489
    sget-object v0, Lcom/facebook/ads/redexgen/X/IR;->A04:[F

    aget v4, v0, v6

    .end local v0
    .local v7, "pixelWidthHeightRatio":F
    goto :goto_5

    .line 59490
    .end local v7    # "pixelWidthHeightRatio":F
    .restart local v0    # "sarHeight":I
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    const/16 v1, 0x23

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ve;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ve;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ve;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ve;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x41t
        -0x57t
        -0x53t
        -0x54t
        -0x37t
        -0x24t
        -0x28t
        -0x25t
        -0x24t
        -0x17t
        -0x14t
        0x5t
        -0x4t
        0xft
        0x7t
        -0x4t
        -0x6t
        0xbt
        -0x4t
        -0x5t
        -0x49t
        -0x8t
        0xat
        0x7t
        -0x4t
        -0x6t
        0xbt
        -0xat
        0x9t
        -0x8t
        0xbt
        0x0t
        0x6t
        -0xat
        0x0t
        -0x5t
        -0x6t
        -0x49t
        0xdt
        -0x8t
        0x3t
        0xct
        -0x4t
        -0x2ft
        -0x49t
        0x31t
        0x24t
        0x1ft
        0x20t
        0x2at
        -0x16t
        0x23t
        0x20t
        0x31t
        0x1et
    .end array-data
.end method

.method private A03(JIIJ)V
    .locals 5

    .line 59491
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Z

    if-eqz v0, :cond_3

    .line 59492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Lcom/facebook/ads/redexgen/X/Da;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Da;->A02(JI)V

    .line 59493
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A07:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Db;->A04(I)Z

    move-result v0

    const/4 v3, 0x5

    if-eqz v0, :cond_1

    .line 59494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A07:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A07:Lcom/facebook/ads/redexgen/X/Db;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IR;->A02([BI)I

    move-result v2

    .line 59495
    .local p0, "unescapedLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A07:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0b([BI)V

    .line 59496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 59497
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0B:Lcom/facebook/ads/redexgen/X/De;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v1, p5, p6, v0}, Lcom/facebook/ads/redexgen/X/De;->A02(JLcom/facebook/ads/redexgen/X/IV;)V

    .line 59498
    .end local p0    # "unescapedLength":I
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ve;->A09:Lcom/facebook/ads/redexgen/X/Db;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "rXihwUdCpNaITwqC54bRxWTmSWKYNVR8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, p4}, Lcom/facebook/ads/redexgen/X/Db;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A09:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A09:Lcom/facebook/ads/redexgen/X/Db;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IR;->A02([BI)I

    move-result v2

    .line 59500
    .restart local p0    # "unescapedLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A09:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Db;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0b([BI)V

    .line 59501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 59502
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0B:Lcom/facebook/ads/redexgen/X/De;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v1, p5, p6, v0}, Lcom/facebook/ads/redexgen/X/De;->A02(JLcom/facebook/ads/redexgen/X/IV;)V

    .line 59503
    .end local p0    # "unescapedLength":I
    :cond_2
    return-void

    .line 59504
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0A:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Db;->A04(I)Z

    .line 59505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Db;->A04(I)Z

    .line 59506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Db;->A04(I)Z

    .line 59507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0A:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ve;->A06:Lcom/facebook/ads/redexgen/X/Db;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Db;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59508
    :goto_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ve;->A02:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ve;->A04:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0A:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A08:Lcom/facebook/ads/redexgen/X/Db;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ve;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Db;Lcom/facebook/ads/redexgen/X/Db;Lcom/facebook/ads/redexgen/X/Db;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "5brHzm0RAmJK5ZmRzslUlW25gn0hU7nI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Db;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 59509
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "ZjqETcMPlDZxu07sDnjN9sy4wI9cybTG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Z

    goto/16 :goto_0
.end method

.method private A04(JIIJ)V
    .locals 7

    .line 59510
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Z

    move v4, p4

    if-eqz v0, :cond_0

    .line 59511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Lcom/facebook/ads/redexgen/X/Da;

    move v3, p3

    move-wide v1, p1

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Da;->A03(JIIJ)V

    .line 59512
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A07:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Db;->A01(I)V

    .line 59513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A09:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Db;->A01(I)V

    .line 59514
    return-void

    .line 59515
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0A:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Db;->A01(I)V

    .line 59516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Db;->A01(I)V

    .line 59517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Db;->A01(I)V

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IW;)V
    .locals 6

    .line 59518
    const/4 v5, 0x0

    .local p0, "sizeId":I
    :goto_0
    const/4 v4, 0x4

    if-ge v5, v4, :cond_5

    .line 59519
    const/4 v3, 0x0

    .local v4, "matrixId":I
    :goto_1
    const/4 v0, 0x6

    if-ge v3, v0, :cond_4

    .line 59520
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 59521
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59522
    .end local v3
    .end local v0
    :cond_0
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    :goto_2
    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 59523
    :cond_2
    const/16 v1, 0x40

    shl-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v4

    shl-int v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59524
    .local v3, "coefNum":I
    if-le v5, v2, :cond_3

    .line 59525
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A03()I

    .line 59526
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_0

    .line 59527
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A03()I

    .line 59528
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 59529
    .end local v4    # "matrixId":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59530
    .end local p0    # "sizeId":I
    :cond_5
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/IW;)V
    .locals 9

    .line 59531
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v7

    .line 59532
    .local p0, "numShortTermRefPicSets":I
    const/4 v8, 0x0

    .line 59533
    .local v7, "interRefPicSetPredictionFlag":Z
    const/4 v6, 0x0

    .line 59534
    .local v8, "previousNumDeltaPocs":I
    const/4 v5, 0x0

    .local v6, "stRpsIdx":I
    :goto_0
    if-ge v5, v7, :cond_6

    .line 59535
    if-eqz v5, :cond_0

    .line 59536
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v8

    .line 59537
    :cond_0
    if-eqz v8, :cond_2

    .line 59538
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A06()V

    .line 59539
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59540
    const/4 v1, 0x0

    .local v5, "j":I
    :goto_1
    if-gt v1, v6, :cond_5

    .line 59541
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59542
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A06()V

    .line 59543
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59544
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v1

    .line 59545
    .local v5, "numNegativePics":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    move-result v4

    .line 59546
    .local v1, "numPositivePics":I
    add-int v6, v1, v4

    .line 59547
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 59548
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    .line 59549
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A06()V

    .line 59550
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 59551
    .end local v0    # "i":I
    :cond_3
    const/4 v3, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 59552
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A04()I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59553
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A0F:[Ljava/lang/String;

    const-string v1, "29HJBmKLkgSGGX3jFY36NCeZA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IW;->A06()V

    .line 59554
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 59555
    .end local v5    # "numNegativePics":I
    .end local v1    # "numPositivePics":I
    .end local v0    # "i":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59556
    .end local v6    # "stRpsIdx":I
    :cond_6
    return-void
.end method

.method private A07([BII)V
    .locals 1

    .line 59557
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Z

    if-eqz v0, :cond_0

    .line 59558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Lcom/facebook/ads/redexgen/X/Da;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Da;->A04([BII)V

    .line 59559
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A07:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Db;->A02([BII)V

    .line 59560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A09:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Db;->A02([BII)V

    .line 59561
    return-void

    .line 59562
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0A:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Db;->A02([BII)V

    .line 59563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Db;->A02([BII)V

    .line 59564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Db;->A02([BII)V

    goto :goto_0
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 18

    move-object/from16 v6, p0

    .line 59565
    :cond_0
    move-object/from16 v8, p1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    if-lez v0, :cond_4

    .line 59566
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v7

    .line 59567
    .local p0, "offset":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v5

    .line 59568
    .local v9, "limit":I
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 59569
    .local v0, "dataArray":[B
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Ve;->A01:J

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/Ve;->A01:J

    .line 59570
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Ve;->A02:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    invoke-interface {v1, v8, v0}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 59571
    .end local p0    # "offset":I
    .local v0, "offset":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 59572
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Ve;->A0D:[Z

    invoke-static {v4, v7, v5, v0}, Lcom/facebook/ads/redexgen/X/IR;->A04([BII[Z)I

    move-result v3

    .line 59573
    .local v12, "nalUnitOffset":I
    if-ne v3, v5, :cond_1

    .line 59574
    invoke-direct {v6, v4, v7, v5}, Lcom/facebook/ads/redexgen/X/Ve;->A07([BII)V

    .line 59575
    return-void

    .line 59576
    :cond_1
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/IR;->A00([BI)I

    move-result v15

    .line 59577
    .local v2, "nalUnitType":I
    sub-int v2, v3, v7

    .line 59578
    .local v14, "lengthToNalUnit":I
    if-lez v2, :cond_2

    .line 59579
    invoke-direct {v6, v4, v7, v3}, Lcom/facebook/ads/redexgen/X/Ve;->A07([BII)V

    .line 59580
    :cond_2
    sub-int v10, v5, v3

    .line 59581
    .local v1, "bytesWrittenPastPosition":I
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/Ve;->A01:J

    int-to-long v0, v10

    sub-long/2addr v8, v0

    .line 59582
    .local v0, "absolutePosition":J
    if-gez v2, :cond_3

    neg-int v11, v2

    :goto_1
    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/Ve;->A00:J

    .line 59583
    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Ve;->A03(JIIJ)V

    .line 59584
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Ve;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move v14, v10

    move-wide/from16 v16, v0

    invoke-direct/range {v11 .. v17}, Lcom/facebook/ads/redexgen/X/Ve;->A04(JIIJ)V

    .line 59585
    add-int/lit8 v7, v3, 0x3

    .line 59586
    .end local v12    # "nalUnitOffset":I
    .end local v2    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v1    # "bytesWrittenPastPosition":I
    .end local v0    # "absolutePosition":J
    goto :goto_0

    .line 59587
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 59588
    :cond_4
    return-void
.end method

.method public final A4T(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 2

    .line 59589
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A05()V

    .line 59590
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A04:Ljava/lang/String;

    .line 59591
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A02:Lcom/facebook/ads/redexgen/X/Cb;

    .line 59592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A02:Lcom/facebook/ads/redexgen/X/Cb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Da;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Lcom/facebook/ads/redexgen/X/Da;

    .line 59593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0B:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/De;->A03(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V

    .line 59594
    return-void
.end method

.method public final ACl()V
    .locals 0

    .line 59595
    return-void
.end method

.method public final ACm(JZ)V
    .locals 0

    .line 59596
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:J

    .line 59597
    return-void
.end method

.method public final AE8()V
    .locals 2

    .line 59598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0D:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0B([Z)V

    .line 59599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A0A:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A08:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A06:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A07:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A09:Lcom/facebook/ads/redexgen/X/Db;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Db;->A00()V

    .line 59604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Lcom/facebook/ads/redexgen/X/Da;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Da;->A01()V

    .line 59605
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A01:J

    .line 59606
    return-void
.end method
