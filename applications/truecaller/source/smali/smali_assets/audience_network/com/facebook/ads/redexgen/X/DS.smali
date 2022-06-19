.class public final Lcom/facebook/ads/redexgen/X/DS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DQ;,
        Lcom/facebook/ads/redexgen/X/DR;,
        Lcom/facebook/ads/redexgen/X/DP;,
        Lcom/facebook/ads/redexgen/X/DO;
    }
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

    const-string v0, "97CkWcXqrjyz7Qw2gcwWTf0UsRxLJkLY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KmKspjn8yBhlsuKfHc5dD1By4HqwQES7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tM7dEAyUMmHTAlM7QEv8AsYa9vZW08DW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cnFzSmdUdmsM2SVrr3BadDXsi4nDpClW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tMN7ldEkNAphgvj5y1u3W8bdaUauudV5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yEIP5bnoN3ttum2IDgG23FKNyE9RzpP8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "N0hhc3G9NfQEzjT9vQvNmE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ceiH1Z9CkPvfm4IJnpqvFzCjzC6OBPie"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    .line 27428
    invoke-static {}, Lcom/facebook/ads/redexgen/X/DS;->A06()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27430
    return-void
.end method

.method public static A00(I)I
    .locals 4

    .line 27431
    const/4 v3, 0x0

    .line 27432
    .local p0, "val":I
    :goto_0
    if-lez p0, :cond_1

    .line 27433
    add-int/lit8 v3, v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27434
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const-string v1, "aCblbtCs51TFarEUteijDfi4L2eIPPB5"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 27435
    :cond_1
    return v3
.end method

.method public static A01(JJ)J
    .locals 6

    .line 27436
    long-to-double v4, p0

    long-to-double v2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v0, v2

    return-wide v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/DM;)Lcom/facebook/ads/redexgen/X/DO;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 27437
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v1

    const v0, 0x564342

    if-ne v1, v0, :cond_b

    .line 27438
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v7

    .line 27439
    .local v2, "dimensions":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v8

    .line 27440
    .local p0, "entries":I
    new-array v9, v8, [J

    .line 27441
    .local v11, "lengthMap":[J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DM;->A04()Z

    move-result v11

    .line 27442
    .local v4, "isOrdered":Z
    const/4 v4, 0x5

    const/4 v2, 0x1

    if-nez v11, :cond_2

    .line 27443
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DM;->A04()Z

    move-result v5

    .line 27444
    .local v0, "isSparse":Z
    const/4 v3, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v9

    if-ge v3, v0, :cond_4

    .line 27445
    if-eqz v5, :cond_1

    .line 27446
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DM;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27447
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v9, v3

    .line 27448
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27449
    :cond_0
    const-wide/16 v0, 0x0

    aput-wide v0, v9, v3

    goto :goto_1

    .line 27450
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v9, v3

    goto :goto_1

    .line 27451
    :cond_2
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 27452
    .local v1, "length":I
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_2
    array-length v0, v9

    if-ge v5, v0, :cond_4

    .line 27453
    sub-int v0, v8, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DS;->A00(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v4

    .line 27454
    .local v7, "num":I
    const/4 v3, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v3, v4, :cond_3

    array-length v0, v9

    if-ge v5, v0, :cond_3

    .line 27455
    int-to-long v0, v6

    aput-wide v0, v9, v5

    .line 27456
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 27457
    .end local v8    # "j":I
    .end local v7    # "num":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 27458
    goto :goto_2

    .line 27459
    .end local v1    # "length":I
    .end local v0    # "i":I
    :cond_4
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v10

    sget-object v3, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27460
    .local v2, "lookupType":I
    :cond_5
    sget-object v3, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const-string v1, "k7eMGEO3QgprNsh6neXNKI6AQGFtvYrM"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const/4 v0, 0x2

    if-gt v10, v0, :cond_a

    .line 27461
    if-eq v10, v2, :cond_6

    if-ne v10, v0, :cond_7

    .line 27462
    :cond_6
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27463
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27464
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 27465
    .local v1, "valueBits":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27466
    if-ne v10, v2, :cond_9

    .line 27467
    if-eqz v7, :cond_8

    .line 27468
    int-to-long v2, v8

    int-to-long v0, v7

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DS;->A01(JJ)J

    move-result-wide v2

    .line 27469
    .local v0, "lookupValuesCount":J
    .restart local v0    # "lookupValuesCount":J
    :goto_4
    int-to-long v0, v4

    mul-long/2addr v0, v2

    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27470
    .end local v1    # "valueBits":I
    .end local v0    # "lookupValuesCount":J
    :cond_7
    new-instance v6, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/DO;-><init>(II[JIZ)V

    return-object v6

    .line 27471
    .end local v0
    :cond_8
    const-wide/16 v2, 0x0

    .restart local v0    # "lookupValuesCount":J
    goto :goto_4

    .line 27472
    .end local v0    # "lookupValuesCount":J
    :cond_9
    int-to-long v2, v8

    int-to-long v0, v7

    mul-long/2addr v2, v0

    goto :goto_4

    .line 27473
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe4

    const/16 v1, 0x2a

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27474
    .end local p0    # "entries":I
    .end local v2    # "lookupType":I
    .end local v11    # "lengthMap":[J
    .end local v4    # "isOrdered":Z
    .end local v2
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0x37

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27475
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DM;->A01()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/DP;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 27476
    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/DS;->A0A(ILcom/facebook/ads/redexgen/X/IV;Z)Z

    .line 27477
    const/4 v3, 0x7

    .line 27478
    .local p0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0K()J

    move-result-wide v1

    long-to-int v0, v1

    .line 27479
    .local v0, "len":I
    add-int/lit8 v3, v3, 0x4

    .line 27480
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0S(I)Ljava/lang/String;

    move-result-object v5

    .line 27481
    .local v1, "vendor":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 27482
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0K()J

    move-result-wide v1

    .line 27483
    .local v3, "commentListLen":J
    long-to-int v0, v1

    new-array v4, v0, [Ljava/lang/String;

    .line 27484
    .local v5, "comments":[Ljava/lang/String;
    add-int/lit8 v6, v3, 0x4

    .line 27485
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v7, v3

    cmp-long v0, v7, v1

    if-gez v0, :cond_0

    .line 27486
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0K()J

    move-result-wide v7

    long-to-int v0, v7

    .line 27487
    add-int/lit8 v6, v6, 0x4

    .line 27488
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0S(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 27489
    aget-object v0, v4, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v6, v0

    .line 27490
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27491
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    and-int/lit8 v3, v0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const-string v1, "uufDOlXzPXn7e2vsUzYQOzPoYhXCwGZ3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 27492
    add-int/lit8 v1, v6, 0x1

    .line 27493
    new-instance v0, Lcom/facebook/ads/redexgen/X/DP;

    invoke-direct {v0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/DP;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    .line 27494
    :cond_2
    const/16 v2, 0xc6

    const/16 v1, 0x1e

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/DR;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 27495
    const/4 v0, 0x0

    const/4 v5, 0x1

    move-object/from16 v6, p0

    invoke-static {v5, v6, v0}, Lcom/facebook/ads/redexgen/X/DS;->A0A(ILcom/facebook/ads/redexgen/X/IV;Z)Z

    .line 27496
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0K()J

    move-result-wide v7

    .line 27497
    .local v0, "version":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v9

    .line 27498
    .local v2, "channels":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0K()J

    move-result-wide v10

    .line 27499
    .local p1, "sampleRate":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0A()I

    move-result v12

    .line 27500
    .local v2, "bitrateMax":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0A()I

    move-result v13

    .line 27501
    .local v2, "bitrateNominal":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0A()I

    move-result v14

    .line 27502
    .local v2, "bitrateMin":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v4

    .line 27503
    .local v15, "blockSize":I
    and-int/lit8 v0, v4, 0xf

    int-to-double v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v15, v2

    .line 27504
    .local v0, "blockSize0":I
    and-int/lit16 v2, v4, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v2, v0

    .line 27505
    .local v4, "blockSize1":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    and-int/2addr v0, v5

    if-lez v0, :cond_0

    const/16 v17, 0x1

    .line 27506
    .local v2, "framingFlag":Z
    :goto_0
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 27507
    .local v6, "data":[B
    new-instance v6, Lcom/facebook/ads/redexgen/X/DR;

    .end local v4    # "blockSize1":I
    .local p6, "blockSize1":I
    .end local v0    # "blockSize0":I
    .local v0, "blockSize0":I
    .end local v15    # "blockSize":I
    .local p8, "blockSize":I
    move/from16 v16, v2

    invoke-direct/range {v6 .. v18}, Lcom/facebook/ads/redexgen/X/DR;-><init>(JIJIIIIIZ[B)V

    return-object v6

    .line 27508
    :cond_0
    const/16 v17, 0x0

    goto :goto_0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/DS;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x1e2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DS;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x1at
        0x7t
        0x17t
        0x1ct
        0x6t
        0x20t
        0x1t
        0x1ct
        0x19t
        0x4at
        0x57t
        0x5ft
        0x4at
        0x4ct
        0x5bt
        0x4at
        0x4bt
        0xft
        0x4ct
        0x47t
        0x4et
        0x5dt
        0x4et
        0x4ct
        0x5bt
        0x4at
        0x5dt
        0x5ct
        0xft
        0x8t
        0x59t
        0x40t
        0x5dt
        0x4dt
        0x46t
        0x5ct
        0x8t
        0x64t
        0x79t
        0x71t
        0x64t
        0x62t
        0x75t
        0x64t
        0x65t
        0x21t
        0x62t
        0x6et
        0x65t
        0x64t
        0x21t
        0x63t
        0x6et
        0x6et
        0x6at
        0x21t
        0x75t
        0x6et
        0x21t
        0x72t
        0x75t
        0x60t
        0x73t
        0x75t
        0x21t
        0x76t
        0x68t
        0x75t
        0x69t
        0x21t
        0x5at
        0x31t
        0x79t
        0x34t
        0x37t
        0x2dt
        0x21t
        0x31t
        0x79t
        0x35t
        0x32t
        0x2dt
        0x21t
        0x31t
        0x79t
        0x35t
        0x33t
        0x5ct
        0x21t
        0x60t
        0x75t
        0x21t
        0x58t
        0x45t
        0x4dt
        0x58t
        0x5et
        0x49t
        0x58t
        0x59t
        0x1dt
        0x55t
        0x58t
        0x5ct
        0x59t
        0x58t
        0x4ft
        0x1dt
        0x49t
        0x44t
        0x4dt
        0x58t
        0x1dt
        0x2ft
        0x25t
        0x26t
        0x26t
        0x3bt
        0x69t
        0x3dt
        0x30t
        0x39t
        0x2ct
        0x69t
        0x2et
        0x3bt
        0x2ct
        0x28t
        0x3dt
        0x2ct
        0x3bt
        0x69t
        0x3dt
        0x21t
        0x28t
        0x27t
        0x69t
        0x78t
        0x69t
        0x27t
        0x26t
        0x3dt
        0x69t
        0x2dt
        0x2ct
        0x2at
        0x26t
        0x2dt
        0x28t
        0x2bt
        0x25t
        0x2ct
        0x73t
        0x69t
        0x14t
        0x0t
        0x13t
        0x1ft
        0x1bt
        0x1ct
        0x15t
        0x52t
        0x10t
        0x1bt
        0x6t
        0x52t
        0x13t
        0x14t
        0x6t
        0x17t
        0x0t
        0x52t
        0x1ft
        0x1dt
        0x16t
        0x17t
        0x1t
        0x52t
        0x1ct
        0x1dt
        0x6t
        0x52t
        0x1t
        0x17t
        0x6t
        0x52t
        0x13t
        0x1t
        0x52t
        0x17t
        0xat
        0x2t
        0x17t
        0x11t
        0x6t
        0x17t
        0x16t
        0x57t
        0x43t
        0x50t
        0x5ct
        0x58t
        0x5ft
        0x56t
        0x11t
        0x53t
        0x58t
        0x45t
        0x11t
        0x54t
        0x49t
        0x41t
        0x54t
        0x52t
        0x45t
        0x54t
        0x55t
        0x11t
        0x45t
        0x5et
        0x11t
        0x53t
        0x54t
        0x11t
        0x42t
        0x54t
        0x45t
        0x42t
        0x41t
        0x41t
        0x45t
        0x5bt
        0x5et
        0xet
        0x5at
        0x57t
        0x5et
        0x4bt
        0xet
        0x49t
        0x5ct
        0x4bt
        0x4ft
        0x5at
        0x4bt
        0x5ct
        0xet
        0x5at
        0x46t
        0x4ft
        0x40t
        0xet
        0x1ct
        0xet
        0x40t
        0x41t
        0x5at
        0xet
        0x4at
        0x4bt
        0x4dt
        0x41t
        0x4at
        0x4ft
        0x4ct
        0x42t
        0x4bt
        0x14t
        0xet
        0x26t
        0x2at
        0x3bt
        0x3bt
        0x22t
        0x25t
        0x2ct
        0x6bt
        0x3ft
        0x32t
        0x3bt
        0x2et
        0x6bt
        0x24t
        0x3ft
        0x23t
        0x2et
        0x39t
        0x6bt
        0x3ft
        0x23t
        0x2at
        0x25t
        0x6bt
        0x7bt
        0x6bt
        0x25t
        0x24t
        0x3ft
        0x6bt
        0x38t
        0x3et
        0x3bt
        0x3bt
        0x24t
        0x39t
        0x3ft
        0x2et
        0x2ft
        0x71t
        0x6bt
        0x29t
        0x35t
        0x38t
        0x3at
        0x3ct
        0x31t
        0x36t
        0x35t
        0x3dt
        0x3ct
        0x2bt
        0x79t
        0x36t
        0x3ft
        0x79t
        0x2dt
        0x30t
        0x34t
        0x3ct
        0x79t
        0x3dt
        0x36t
        0x34t
        0x38t
        0x30t
        0x37t
        0x79t
        0x2dt
        0x2bt
        0x38t
        0x37t
        0x2at
        0x3ft
        0x36t
        0x2bt
        0x34t
        0x2at
        0x79t
        0x37t
        0x36t
        0x2dt
        0x79t
        0x23t
        0x3ct
        0x2bt
        0x36t
        0x3ct
        0x3dt
        0x79t
        0x36t
        0x2ct
        0x2dt
        0x54t
        0x43t
        0x55t
        0x4ft
        0x42t
        0x53t
        0x43t
        0x72t
        0x5ft
        0x56t
        0x43t
        0x6t
        0x41t
        0x54t
        0x43t
        0x47t
        0x52t
        0x43t
        0x54t
        0x6t
        0x52t
        0x4et
        0x47t
        0x48t
        0x6t
        0x14t
        0x6t
        0x4ft
        0x55t
        0x6t
        0x48t
        0x49t
        0x52t
        0x6t
        0x42t
        0x43t
        0x45t
        0x49t
        0x42t
        0x47t
        0x44t
        0x4at
        0x43t
        0x71t
        0x6at
        0x25t
        0x77t
        0x60t
        0x76t
        0x60t
        0x77t
        0x73t
        0x60t
        0x61t
        0x25t
        0x67t
        0x6ct
        0x71t
        0x76t
        0x25t
        0x68t
        0x70t
        0x76t
        0x71t
        0x25t
        0x67t
        0x60t
        0x25t
        0x7ft
        0x60t
        0x77t
        0x6at
        0x25t
        0x64t
        0x63t
        0x71t
        0x60t
        0x77t
        0x25t
        0x68t
        0x64t
        0x75t
        0x75t
        0x6ct
        0x6bt
        0x62t
        0x25t
        0x66t
        0x6at
        0x70t
        0x75t
        0x69t
        0x6ct
        0x6bt
        0x62t
        0x25t
        0x76t
        0x71t
        0x60t
        0x75t
        0x76t
        0x3t
        0x18t
        0x18t
        0x57t
        0x4t
        0x1ft
        0x18t
        0x5t
        0x3t
        0x57t
        0x1ft
        0x12t
        0x16t
        0x13t
        0x12t
        0x5t
        0x4dt
        0x57t
    .end array-data
.end method

.method public static A07(ILcom/facebook/ads/redexgen/X/DM;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 27509
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v6

    const/4 v5, 0x1

    add-int/2addr v6, v5

    .line 27510
    .local p0, "mappingsCount":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v6, :cond_7

    .line 27511
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v7

    .line 27512
    .local v6, "mappingType":I
    if-eqz v7, :cond_1

    .line 27513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10e

    const/16 v1, 0x29

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27514
    .end local v6    # "mappingType":I
    .end local v5
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27515
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DM;->A04()Z

    move-result v0

    const/4 v7, 0x4

    if-eqz v0, :cond_2

    .line 27516
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v3

    add-int/2addr v3, v5

    .line 27517
    .local v5, "submaps":I
    .restart local v5    # "submaps":I
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DM;->A04()Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const-string v1, "2d5iZcFzMvct5JxqCcZ0JFUoYSVZwGiZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "NTut6iZFc5ITOEQfsc6CPFa8BEeWuqD1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v2, 0x8

    if-eqz v8, :cond_3

    .line 27518
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v8

    add-int/2addr v8, v5

    .line 27519
    .local v4, "couplingSteps":I
    const/4 v1, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v1, v8, :cond_3

    .line 27520
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DS;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27521
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DS;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27522
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 27523
    .end local v5    # "submaps":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 27524
    .end local v4    # "couplingSteps":I
    .end local v7    # "j":I
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 27525
    if-le v3, v5, :cond_4

    .line 27526
    const/4 v0, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v0, p0, :cond_4

    .line 27527
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27528
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 27529
    .end local v4    # "j":I
    :cond_4
    const/4 v0, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v0, v3, :cond_0

    .line 27530
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27531
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27532
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27533
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 27534
    .restart local v6    # "j":I
    .restart local v5    # "submaps":I
    :cond_5
    const/16 v2, 0x196

    const/16 v1, 0x3a

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27535
    .end local v0    # "i":I
    .end local v6    # "j":I
    .end local v5    # "submaps":I
    :cond_7
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/DM;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 27536
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v8

    const/4 v7, 0x1

    add-int/2addr v8, v7

    .line 27537
    .local v9, "floorCount":I
    const/4 v6, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v6, v8, :cond_a

    .line 27538
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v4

    .line 27539
    .local v6, "floorType":I
    const/4 v12, 0x4

    const/16 v3, 0x8

    if-eqz v4, :cond_7

    if-ne v4, v7, :cond_9

    .line 27540
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v11

    .line 27541
    .local v8, "partitions":I
    const/4 v2, -0x1

    .line 27542
    .local v12, "maximumClass":I
    new-array v10, v11, [I

    .line 27543
    .local v3, "partitionClassList":[I
    const/4 v1, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v1, v11, :cond_1

    .line 27544
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v0

    aput v0, v10, v1

    .line 27545
    aget v0, v10, v1

    if-le v0, v2, :cond_0

    .line 27546
    aget v2, v10, v1

    .line 27547
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27548
    .end local v0    # "j":I
    :cond_1
    add-int/lit8 v0, v2, 0x1

    new-array v5, v0, [I

    .line 27549
    .local v0, "classDimensions":[I
    const/4 v4, 0x0

    .local v11, "j":I
    :goto_2
    array-length v14, v5

    const/4 v2, 0x2

    sget-object v13, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v13, v0

    const/4 v0, 0x0

    aget-object v13, v13, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v13, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const-string v1, "G5LXKc5ovtw5smiaOglq2UN4xBS1bXIF"

    const/4 v0, 0x5

    aput-object v1, v13, v0

    if-ge v4, v14, :cond_5

    .line 27550
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v0

    add-int/2addr v0, v7

    aput v0, v5, v4

    .line 27551
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v2

    .line 27552
    .local v2, "classSubclasses":I
    if-lez v2, :cond_3

    .line 27553
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27554
    :cond_3
    const/4 v1, 0x0

    .local v10, "k":I
    :goto_3
    shl-int v0, v7, v2

    if-ge v1, v0, :cond_4

    .line 27555
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27556
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 27557
    .end local v2    # "classSubclasses":I
    .end local v10    # "k":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 27558
    .end local v11    # "j":I
    :cond_5
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27559
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v4

    .line 27560
    .local v0, "rangeBits":I
    const/4 v3, 0x0

    .line 27561
    .local v4, "count":I
    const/4 v2, 0x0

    .restart local v11    # "j":I
    const/4 v1, 0x0

    .local v2, "k":I
    :goto_4
    if-ge v2, v11, :cond_8

    .line 27562
    aget v0, v10, v2

    .line 27563
    .local v10, "idx":I
    aget v0, v5, v0

    add-int/2addr v3, v0

    .line 27564
    :goto_5
    if-ge v1, v3, :cond_6

    .line 27565
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27566
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 27567
    .end local v10    # "idx":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 27568
    :cond_7
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27569
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27570
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27571
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27572
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27573
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 27574
    .local v8, "floorNumberOfBooks":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6
    if-ge v0, v1, :cond_8

    .line 27575
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27576
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 27577
    .end local v8    # "floorNumberOfBooks":I
    .end local v6    # "floorType":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 27578
    .end local v8
    .end local v0    # "j":I
    .end local v4    # "count":I
    .end local v12    # "maximumClass":I
    .end local v3    # "partitionClassList":[I
    .end local v0
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x72

    const/16 v1, 0x29

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27579
    .end local v7    # "i":I
    :cond_a
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/DM;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 27580
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v8

    const/4 v10, 0x1

    add-int/2addr v8, v10

    .line 27581
    .local v9, "residueCount":I
    const/4 v7, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 27582
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v1

    .line 27583
    .local v8, "residueType":I
    const/4 v0, 0x2

    if-gt v1, v0, :cond_5

    .line 27584
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27585
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27586
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27587
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v6

    add-int/2addr v6, v10

    .line 27588
    .local v7, "classifications":I
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27589
    new-array v4, v6, [I

    .line 27590
    .local v1, "cascade":[I
    const/4 v3, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 27591
    const/4 v2, 0x0

    .line 27592
    .local v0, "highBits":I
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v1

    .line 27593
    .local v6, "lowBits":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DM;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27594
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v2

    .line 27595
    :cond_0
    mul-int/lit8 v0, v2, 0x8

    add-int/2addr v0, v1

    aput v0, v4, v3

    .line 27596
    .end local v0    # "highBits":I
    .end local v6    # "lowBits":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 27597
    .end local v0
    :cond_1
    const/4 v3, 0x0

    .restart local v0    # "highBits":I
    :goto_2
    if-ge v3, v6, :cond_4

    .line 27598
    const/4 v2, 0x0

    .local v0, "k":I
    :goto_3
    if-ge v2, v5, :cond_3

    .line 27599
    aget v1, v4, v3

    shl-int v0, v10, v2

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 27600
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27601
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 27602
    .end local v0    # "k":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 27603
    .end local v8    # "residueType":I
    .end local v7    # "classifications":I
    .end local v1    # "cascade":[I
    .end local v0
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 27604
    .restart local v8    # "residueType":I
    :cond_5
    const/16 v2, 0x16b

    const/16 v1, 0x2b

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27605
    .end local v10    # "i":I
    .end local v8    # "residueType":I
    :cond_6
    return-void
.end method

.method public static A0A(ILcom/facebook/ads/redexgen/X/IV;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 27606
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v1

    const/4 v2, 0x0

    const/4 v0, 0x7

    if-ge v1, v0, :cond_1

    .line 27607
    if-eqz p2, :cond_0

    .line 27608
    return v2

    .line 27609
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d0

    const/16 v1, 0x12

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27610
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    if-eq v0, p0, :cond_3

    .line 27611
    if-eqz p2, :cond_2

    .line 27612
    return v2

    .line 27613
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    const/16 v1, 0x15

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27614
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    const/16 v0, 0x76

    if-ne v1, v0, :cond_4

    .line 27615
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_4

    .line 27616
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    const/16 v0, 0x72

    if-ne v1, v0, :cond_4

    .line 27617
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    const/16 v0, 0x62

    if-ne v1, v0, :cond_4

    .line 27618
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    const/16 v0, 0x69

    if-ne v1, v0, :cond_4

    .line 27619
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_6

    .line 27620
    :cond_4
    if-eqz p2, :cond_5

    .line 27621
    return v2

    .line 27622
    :cond_5
    const/16 v2, 0xa

    const/16 v1, 0x1c

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27623
    :cond_6
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/DS;->A01:[Ljava/lang/String;

    const-string v1, "3PFcydRg4Lp36gDWvcJwdxiXGhHOWBjb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "aGBtdcQRGSwkEsynEcaJAL8zRbeII6kr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/DM;)[Lcom/facebook/ads/redexgen/X/DQ;
    .locals 8

    .line 27624
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 27625
    .local p0, "modeCount":I
    new-array v6, v7, [Lcom/facebook/ads/redexgen/X/DQ;

    .line 27626
    .local v0, "modes":[Lcom/facebook/ads/redexgen/X/DQ;
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 27627
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DM;->A04()Z

    move-result v4

    .line 27628
    .local v7, "blockFlag":Z
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v3

    .line 27629
    .local v5, "windowType":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v2

    .line 27630
    .local v6, "transformType":I
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v1

    .line 27631
    .local v4, "mapping":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/DQ;-><init>(ZIII)V

    aput-object v0, v6, v5

    .line 27632
    .end local v7    # "blockFlag":Z
    .end local v6    # "transformType":I
    .end local v5    # "windowType":I
    .end local v4    # "mapping":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 27633
    .end local v0    # "i":I
    :cond_0
    return-object v6
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/IV;I)[Lcom/facebook/ads/redexgen/X/DQ;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 27634
    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/DS;->A0A(ILcom/facebook/ads/redexgen/X/IV;Z)Z

    .line 27635
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 27636
    .local p0, "numberOfBooks":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    new-instance v3, Lcom/facebook/ads/redexgen/X/DM;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/DM;-><init>([B)V

    .line 27637
    .local p1, "bitArray":Lcom/facebook/ads/redexgen/X/DM;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/DM;->A03(I)V

    .line 27638
    const/4 v0, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 27639
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/DS;->A02(Lcom/facebook/ads/redexgen/X/DM;)Lcom/facebook/ads/redexgen/X/DO;

    .line 27640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27641
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 27642
    .local v1, "timeCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 27643
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/DM;->A02(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 27644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27645
    :cond_1
    const/16 v2, 0x137

    const/16 v1, 0x34

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27646
    .end local v0    # "i":I
    :cond_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/DS;->A08(Lcom/facebook/ads/redexgen/X/DM;)V

    .line 27647
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/DS;->A09(Lcom/facebook/ads/redexgen/X/DM;)V

    .line 27648
    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/DS;->A07(ILcom/facebook/ads/redexgen/X/DM;)V

    .line 27649
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/DS;->A0B(Lcom/facebook/ads/redexgen/X/DM;)[Lcom/facebook/ads/redexgen/X/DQ;

    move-result-object v1

    .line 27650
    .local v0, "modes":[Lcom/facebook/ads/redexgen/X/DQ;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/DM;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27651
    return-object v1

    .line 27652
    :cond_3
    const/16 v2, 0x9b

    const/16 v1, 0x2b

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method
