.class public final Lcom/facebook/ads/redexgen/X/Vw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DI;
.implements Lcom/facebook/ads/redexgen/X/CY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlacOggSeeker"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:[J

.field public A03:[J

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/Vv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yHlOCb8hYCUAGFBSR1KAQUls"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "juuz7zvmjSSgkVuftf6ZJcl9wJUxZwvI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9ebISPaipFvwM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wI75rrP9DnRc8cDmDq6gSrlsVWTLnppT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4k7x4VjdHI9zouAPkna3Rg4ZAMvyURep"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hKkxNrfwukp47"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HBJCJbTVml8ZYTmPInpazFF5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "aaJAILk2rqVBl9Nm5Oiw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    .line 60470
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vv;)V
    .locals 2

    .line 60471
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60472
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:J

    .line 60473
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:J

    .line 60474
    return-void
.end method


# virtual methods
.method public final A00(J)V
    .locals 0

    .line 60475
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:J

    .line 60476
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 5

    .line 60477
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 60478
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0G()I

    move-result v0

    .line 60479
    .local p0, "length":I
    div-int/lit8 v4, v0, 0x12

    .line 60480
    .local p1, "numberOfSeekPoints":I
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:[J

    .line 60481
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:[J

    .line 60482
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 60483
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:[J

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0L()J

    move-result-wide v0

    aput-wide v0, v2, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60484
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const-string v1, "w9Elnsp9xD6AY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "jAQAlpm0y2ybi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:[J

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0L()J

    move-result-wide v0

    aput-wide v0, v2, v3

    .line 60485
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 60486
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60487
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final A4Q()Lcom/facebook/ads/redexgen/X/CY;
    .locals 0

    .line 60488
    return-object p0
.end method

.method public final A6O()J
    .locals 2

    .line 60489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A01(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/II;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/II;->A01()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7I(J)Lcom/facebook/ads/redexgen/X/CX;
    .locals 10

    .line 60490
    move-object v8, p0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A04(J)J

    move-result-wide v1

    .line 60491
    .local v8, "granule":J
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vw;->A02:[J

    const/4 v9, 0x1

    invoke-static {v0, v1, v2, v9, v9}, Lcom/facebook/ads/redexgen/X/Il;->A0B([JJZZ)I

    move-result v7

    .line 60492
    .local v5, "index":I
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vw;->A02:[J

    aget-wide v0, v0, v7

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A03(J)J

    move-result-wide v1

    .line 60493
    .local v1, "seekTimeUs":J
    iget-wide v3, v8, Lcom/facebook/ads/redexgen/X/Vw;->A00:J

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vw;->A03:[J

    aget-wide v5, v0, v7

    add-long/2addr v3, v5

    .line 60494
    .local v0, "seekPosition":J
    new-instance v6, Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/facebook/ads/redexgen/X/CZ;-><init>(JJ)V

    .line 60495
    .local v7, "seekPoint":Lcom/facebook/ads/redexgen/X/CZ;
    cmp-long v0, v1, p1

    if-gez v0, :cond_0

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/Vw;->A02:[J

    array-length v0, v1

    sub-int/2addr v0, v9

    if-ne v7, v0, :cond_1

    .line 60496
    .end local v0    # "seekPosition":J
    .end local v2
    .end local v0
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;)V

    return-object v0

    .line 60497
    :cond_1
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    add-int/lit8 v0, v7, 0x1

    aget-wide v0, v1, v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A03(J)J

    move-result-wide v4

    .line 60498
    .local v2, "secondSeekTimeUs":J
    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/Vw;->A00:J

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/Vw;->A03:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v0, v1, v0

    add-long/2addr v2, v0

    .line 60499
    .local v0, "secondSeekPosition":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/CZ;-><init>(JJ)V

    .line 60500
    .local v0, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/CZ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;Lcom/facebook/ads/redexgen/X/CZ;)V

    return-object v0
.end method

.method public final A8Y()Z
    .locals 1

    .line 60501
    const/4 v0, 0x1

    return v0
.end method

.method public final ADE(Lcom/facebook/ads/redexgen/X/CQ;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60502
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:J

    const-wide/16 v2, -0x1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 60503
    const-wide/16 v0, 0x2

    add-long/2addr v4, v0

    neg-long v0, v4

    .line 60504
    .local p0, "result":J
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:J

    .line 60505
    return-wide v0

    .line 60506
    .end local p0    # "result":J
    :cond_0
    return-wide v2
.end method

.method public final AEp(J)J
    .locals 4

    .line 60507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A04(J)J

    move-result-wide v2

    .line 60508
    .local p0, "granule":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:[J

    const/4 v0, 0x1

    invoke-static {v1, v2, v3, v0, v0}, Lcom/facebook/ads/redexgen/X/Il;->A0B([JJZZ)I

    move-result v1

    .line 60509
    .local v2, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:[J

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:J

    .line 60510
    return-wide v2
.end method
