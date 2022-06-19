.class public final Lcom/facebook/ads/redexgen/X/V2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fg;,
        Lcom/facebook/ads/redexgen/X/Fh;
    }
.end annotation


# static fields
.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A03:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A04:Lcom/facebook/ads/redexgen/X/Fg;

.field public A05:Lcom/facebook/ads/redexgen/X/Fg;

.field public A06:Lcom/facebook/ads/redexgen/X/Fg;

.field public A07:Lcom/facebook/ads/redexgen/X/Fh;

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/Fe;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Ff;

.field public final A0D:Lcom/facebook/ads/redexgen/X/HJ;

.field public final A0E:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "I0oQBEUbvXwmLkE4WWtRMgz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xnniIxRr7DxSpuMWabRYn3WDpy4qBN9b"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Y7uRaXgz80uNyvcPATB9r3b0PwOkuM1V"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hSCUvOutOZqOqVGgCzlnUKxaNOAoeOWK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Xz3O4WRIuCzLKbQHyaIDpuywePn7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cSGy8Fn9cMgpPa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oA7ibzMCvoxqvUcH1m6Eely4XW9nrCN1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6CG0cGfKidBjxaDlKmMoUzgrmHvkLCHY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    .line 57627
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HJ;)V
    .locals 4

    .line 57628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57629
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V2;->A0D:Lcom/facebook/ads/redexgen/X/HJ;

    .line 57630
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/HJ;->A6k()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0A:I

    .line 57631
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ff;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ff;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    .line 57632
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fe;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fe;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0B:Lcom/facebook/ads/redexgen/X/Fe;

    .line 57633
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    .line 57634
    iget v3, p0, Lcom/facebook/ads/redexgen/X/V2;->A0A:I

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fg;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Fg;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57636
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57637
    return-void
.end method

.method private A00(I)I
    .locals 6

    .line 57638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A02:Z

    if-nez v0, :cond_0

    .line 57639
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0D:Lcom/facebook/ads/redexgen/X/HJ;

    .line 57640
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HJ;->A3K()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/V2;->A0A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fg;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/Fg;-><init>(JI)V

    .line 57641
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Fg;->A02(Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/Fg;)V

    .line 57642
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/internal/exoplayer2/Format;J)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 5

    .line 57643
    if-nez p0, :cond_0

    .line 57644
    const/4 v0, 0x0

    return-object v0

    .line 57645
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 57646
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H(J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object p0

    .line 57647
    :cond_1
    return-object p0
.end method

.method private A02(I)V
    .locals 5

    .line 57648
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:J

    .line 57649
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 57650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/Fg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57651
    :cond_0
    return-void
.end method

.method private A03(J)V
    .locals 3

    .line 57652
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 57653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/Fg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    goto :goto_0

    .line 57654
    :cond_0
    return-void
.end method

.method private A04(J)V
    .locals 5

    .line 57655
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 57656
    return-void

    .line 57657
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_2

    .line 57658
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/V2;->A0D:Lcom/facebook/ads/redexgen/X/HJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/HI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const-string v1, "uyKFH8oWQ0ou8mdxvkWufQ8fbIwtl6Z0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "5GODjm0a5UxNqoFNrNo0AvXndV19DDx4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/HJ;->ADT(Lcom/facebook/ads/redexgen/X/HI;)V

    .line 57659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fg;->A01()Lcom/facebook/ads/redexgen/X/Fg;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    goto :goto_0

    .line 57660
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Fg;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Fg;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    .line 57661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57662
    :cond_3
    return-void
.end method

.method private A05(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 57663
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/V2;->A03(J)V

    .line 57664
    .local p0, "remaining":I
    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 57665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    sub-long/2addr v1, p1

    long-to-int v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 57666
    .local p1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/HI;

    .line 57667
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/HI;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fg;->A00(J)I

    move-result v0

    invoke-virtual {p3, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 57668
    sub-int/2addr p4, v2

    .line 57669
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 57670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 57671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/Fg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    goto :goto_0

    .line 57672
    :cond_1
    return-void
.end method

.method private A06(J[BI)V
    .locals 5

    .line 57673
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/V2;->A03(J)V

    .line 57674
    move v3, p4

    .line 57675
    .local p0, "remaining":I
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    .line 57676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    sub-long/2addr v0, p1

    long-to-int v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 57677
    .local p1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/HI;

    .line 57678
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/HI;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57679
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fg;->A00(J)I

    move-result v1

    sub-int v0, p4, v3

    .line 57680
    invoke-static {v2, v1, p3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57681
    sub-int/2addr v3, v4

    .line 57682
    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 57683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 57684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/Fg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    goto :goto_0

    .line 57685
    :cond_1
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/WZ;Lcom/facebook/ads/redexgen/X/Fe;)V
    .locals 19

    .line 57686
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Fe;->A01:J

    .line 57687
    .local v4, "offset":J
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 57688
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/V2;->A06(J[BI)V

    .line 57689
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 57690
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v9, 0x0

    aget-byte v3, v2, v9

    .line 57691
    .local v6, "signalByte":B
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_9

    .line 57692
    .local v0, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v10, v3, 0x7f

    .line 57693
    .local v2, "ivSize":I
    move-object/from16 v7, p1

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/WZ;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Bh;->A04:[B

    if-nez v2, :cond_2

    .line 57694
    iget-object v11, v7, Lcom/facebook/ads/redexgen/X/WZ;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    sget-object v3, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/16 v2, 0x14

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x55

    if-eq v3, v2, :cond_1

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v8, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const-string v3, "avxcN779OwCovbtwuSuiJyYUga"

    const/4 v2, 0x4

    aput-object v3, v8, v2

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, v11, Lcom/facebook/ads/redexgen/X/Bh;->A04:[B

    .line 57695
    :cond_2
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/WZ;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Bh;->A04:[B

    invoke-direct {v4, v0, v1, v2, v10}, Lcom/facebook/ads/redexgen/X/V2;->A06(J[BI)V

    sget-object v3, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v3, v3, v2

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x76

    if-eq v3, v2, :cond_3

    goto :goto_1

    .line 57696
    :cond_3
    sget-object v8, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const-string v3, "XQ5VTIZgU7cNYJl8wSWINHCEMr3M82dZ"

    const/4 v2, 0x2

    aput-object v3, v8, v2

    int-to-long v2, v10

    add-long/2addr v0, v2

    .line 57697
    if-eqz v5, :cond_8

    .line 57698
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 57699
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/V2;->A06(J[BI)V

    .line 57700
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 57701
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v11

    .line 57702
    .local v5, "subsampleCount":I
    .restart local v5    # "subsampleCount":I
    :goto_2
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/WZ;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/Bh;->A06:[I

    .line 57703
    .local v2, "clearDataSizes":[I
    if-eqz v12, :cond_4

    array-length v10, v12

    sget-object v8, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v8, v2

    const/4 v2, 0x1

    aget-object v8, v8, v2

    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_0

    sget-object v8, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const-string v3, "13b4Gtgpoqyqmo3AS7oAoqr"

    const/4 v2, 0x0

    aput-object v3, v8, v2

    const-string v3, "X95RBpGHqlYmay"

    const/4 v2, 0x5

    aput-object v3, v8, v2

    if-ge v10, v11, :cond_5

    .line 57704
    :cond_4
    new-array v12, v11, [I

    .line 57705
    .end local v2    # "clearDataSizes":[I
    .local v3, "clearDataSizes":[I
    :cond_5
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/WZ;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/Bh;->A07:[I

    .line 57706
    .local v2, "encryptedDataSizes":[I
    if-eqz v13, :cond_6

    array-length v2, v13

    if-ge v2, v11, :cond_7

    .line 57707
    :cond_6
    new-array v13, v11, [I

    .line 57708
    .end local v2    # "encryptedDataSizes":[I
    .local v2, "encryptedDataSizes":[I
    :cond_7
    if-eqz v5, :cond_a

    .line 57709
    mul-int/lit8 v3, v11, 0x6

    .line 57710
    .local v2, "subsampleDataLength":I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 57711
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/V2;->A06(J[BI)V

    .line 57712
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 57713
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v2, v9}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 57714
    const/4 v3, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v3, v11, :cond_b

    .line 57715
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v2

    aput v2, v12, v3

    .line 57716
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V2;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v2

    aput v2, v13, v3

    .line 57717
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 57718
    .end local v5    # "subsampleCount":I
    :cond_8
    const/4 v11, 0x1

    goto :goto_2

    .line 57719
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 57720
    :cond_a
    aput v9, v12, v9

    .line 57721
    iget v8, v6, Lcom/facebook/ads/redexgen/X/Fe;->A00:I

    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/Fe;->A01:J

    sub-long v2, v0, v4

    long-to-int v4, v2

    sub-int/2addr v8, v4

    aput v8, v13, v9

    .line 57722
    :cond_b
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/Fe;->A02:Lcom/facebook/ads/redexgen/X/Ca;

    .line 57723
    .local v7, "cryptoData":Lcom/facebook/ads/redexgen/X/Ca;
    iget-object v10, v7, Lcom/facebook/ads/redexgen/X/WZ;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v14, v5, Lcom/facebook/ads/redexgen/X/Ca;->A03:[B

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/WZ;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/Bh;->A04:[B

    iget v4, v5, Lcom/facebook/ads/redexgen/X/Ca;->A01:I

    iget v3, v5, Lcom/facebook/ads/redexgen/X/Ca;->A02:I

    iget v2, v5, Lcom/facebook/ads/redexgen/X/Ca;->A00:I

    move/from16 v18, v2

    move/from16 v16, v4

    move/from16 v17, v3

    invoke-virtual/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/Bh;->A03(I[I[I[B[BIII)V

    .line 57724
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Fe;->A01:J

    sub-long/2addr v0, v2

    long-to-int v4, v0

    .line 57725
    .local v2, "bytesRead":I
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Fe;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/Fe;->A01:J

    .line 57726
    iget v0, v6, Lcom/facebook/ads/redexgen/X/Fe;->A00:I

    sub-int/2addr v0, v4

    iput v0, v6, Lcom/facebook/ads/redexgen/X/Fe;->A00:I

    .line 57727
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Fg;)V
    .locals 5

    .line 57728
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Fg;->A02:Z

    if-nez v0, :cond_0

    .line 57729
    return-void

    .line 57730
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-boolean v4, v0, Lcom/facebook/ads/redexgen/X/Fg;->A02:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Fg;->A04:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Fg;->A04:J

    sub-long/2addr v2, v0

    long-to-int v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0A:I

    div-int/2addr v1, v0

    add-int/2addr v4, v1

    .line 57731
    .local p0, "allocationCount":I
    new-array v2, v4, [Lcom/facebook/ads/redexgen/X/HI;

    .line 57732
    .local p1, "allocationsToRelease":[Lcom/facebook/ads/redexgen/X/HI;
    .local v0, "currentNode":Lcom/facebook/ads/redexgen/X/Fg;
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 57733
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/HI;

    aput-object v0, v2, v1

    .line 57734
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Fg;->A01()Lcom/facebook/ads/redexgen/X/Fg;

    move-result-object p1

    .line 57735
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57736
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0D:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/HJ;->ADU([Lcom/facebook/ads/redexgen/X/HI;)V

    .line 57737
    return-void
.end method

.method private final A09(Z)V
    .locals 4

    .line 57738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ff;->A0H(Z)V

    .line 57739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V2;->A08(Lcom/facebook/ads/redexgen/X/Fg;)V

    .line 57740
    iget v3, p0, Lcom/facebook/ads/redexgen/X/V2;->A0A:I

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fg;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Fg;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57742
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57743
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:J

    .line 57744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0D:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HJ;->AF2()V

    .line 57745
    return-void
.end method


# virtual methods
.method public final A0A()I
    .locals 1

    .line 57746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ff;->A07()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 1

    .line 57747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ff;->A05()I

    move-result v0

    return v0
.end method

.method public final A0C()I
    .locals 1

    .line 57748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ff;->A06()I

    move-result v0

    return v0
.end method

.method public final A0D(JZZ)I
    .locals 1

    .line 57749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ff;->A08(JZZ)I

    move-result v0

    return v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;ZZJ)I
    .locals 11

    .line 57750
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/V2;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/V2;->A0B:Lcom/facebook/ads/redexgen/X/Fe;

    .line 57751
    move-object v6, p2

    move-object v5, p1

    move v8, p4

    move v7, p3

    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Ff;->A09(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;ZZLcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/Fe;)I

    move-result v2

    .line 57752
    .local p0, "result":I
    const/4 v1, -0x5

    if-eq v2, v1, :cond_6

    const/4 v4, -0x4

    if-eq v2, v4, :cond_1

    const/4 v0, -0x3

    if-ne v2, v0, :cond_0

    .line 57753
    return v0

    .line 57754
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 57755
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    if-nez v0, :cond_5

    .line 57756
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    sget-object v3, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x55

    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v5, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const-string v3, "VD6eroQucXdNz3MsoKHIT4kATW1JDfRN"

    const/4 v0, 0x2

    aput-object v3, v5, v0

    cmp-long v0, v1, p5

    if-gez v0, :cond_3

    .line 57757
    const/high16 v0, -0x80000000

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Be;->A00(I)V

    .line 57758
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/WZ;->A0A()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0B:Lcom/facebook/ads/redexgen/X/Fe;

    invoke-direct {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/V2;->A07(Lcom/facebook/ads/redexgen/X/WZ;Lcom/facebook/ads/redexgen/X/Fe;)V

    .line 57760
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0B:Lcom/facebook/ads/redexgen/X/Fe;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fe;->A00:I

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/WZ;->A09(I)V

    .line 57761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0B:Lcom/facebook/ads/redexgen/X/Fe;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Fe;->A01:J

    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0B:Lcom/facebook/ads/redexgen/X/Fe;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fe;->A00:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/V2;->A05(JLjava/nio/ByteBuffer;I)V

    .line 57762
    :cond_5
    return v4

    .line 57763
    :cond_6
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 57764
    return v1
.end method

.method public final A0F()J
    .locals 2

    .line 57765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ff;->A0B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0G()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 57766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ff;->A0E()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .locals 2

    .line 57767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ff;->A0A()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/V2;->A04(J)V

    .line 57768
    return-void
.end method

.method public final A0I()V
    .locals 1

    .line 57769
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V2;->A09(Z)V

    .line 57770
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 57771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ff;->A0F()V

    .line 57772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:Lcom/facebook/ads/redexgen/X/Fg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:Lcom/facebook/ads/redexgen/X/Fg;

    .line 57773
    return-void
.end method

.method public final A0K(JZZ)V
    .locals 2

    .line 57774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ff;->A0D(JZZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/V2;->A04(J)V

    .line 57775
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/Fh;)V
    .locals 0

    .line 57776
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V2;->A07:Lcom/facebook/ads/redexgen/X/Fh;

    .line 57777
    return-void
.end method

.method public final A0M()Z
    .locals 1

    .line 57778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ff;->A0I()Z

    move-result v0

    return v0
.end method

.method public final A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 3

    .line 57779
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:J

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/V2;->A01(Lcom/facebook/ads/internal/exoplayer2/Format;J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 57780
    .local p0, "adjustedFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ff;->A0K(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v1

    .line 57781
    .local p1, "formatChanged":Z
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 57782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A08:Z

    .line 57783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A07:Lcom/facebook/ads/redexgen/X/Fh;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 57784
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Fh;->ACN(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 57785
    :cond_0
    return-void
.end method

.method public final AE3(Lcom/facebook/ads/redexgen/X/CQ;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57786
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/V2;->A00(I)I

    move-result v4

    .line 57787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:J

    .line 57788
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Fg;->A00(J)I

    move-result v0

    .line 57789
    invoke-interface {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/CQ;->read([BII)I

    move-result v3

    .line 57790
    .local p0, "bytesAppended":I
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 57791
    if-eqz p3, :cond_0

    .line 57792
    return v0

    .line 57793
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 57794
    :cond_1
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/V2;->A02(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    .line 57795
    sget-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const-string v1, "gj56WjutkODHGuBsULoCjgk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "cXoHIYif5j6YkS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/IV;I)V
    .locals 5

    .line 57796
    :goto_0
    if-lez p2, :cond_0

    .line 57797
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/V2;->A00(I)I

    move-result v4

    .line 57798
    .local p0, "bytesAppended":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/HI;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/redexgen/X/Fg;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:J

    .line 57799
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Fg;->A00(J)I

    move-result v0

    .line 57800
    invoke-virtual {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 57801
    sub-int/2addr p2, v4

    .line 57802
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/V2;->A02(I)V

    .line 57803
    .end local p0    # "bytesAppended":I
    goto :goto_0

    .line 57804
    :cond_0
    return-void
.end method

.method public final AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V
    .locals 12

    move-wide v5, p1

    .line 57805
    move-object v3, p0

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/V2;->A08:Z

    if-eqz v0, :cond_0

    .line 57806
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/V2;->A03:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/V2;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 57807
    :cond_0
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/V2;->A09:Z

    move v7, p3

    if-eqz v0, :cond_4

    .line 57808
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_1

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    sget-object v1, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const-string v1, "x9Xeu0fQ5laTPGHIgNPQILpO6czCAzIw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ozcoxAULLkb5oe9KcRf5sNeK93qRoKsz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v5, v6}, Lcom/facebook/ads/redexgen/X/Ff;->A0J(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 57809
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57810
    :cond_3
    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0F:[Ljava/lang/String;

    const-string v1, "2aF6Rrv8pvM6dW2iEnwFUFag8sTvrLLb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v4, v3, Lcom/facebook/ads/redexgen/X/V2;->A09:Z

    .line 57811
    :cond_4
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/V2;->A00:J

    add-long/2addr v5, v0

    .line 57812
    .end local v0
    .local v5, "timeUs":J
    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/V2;->A01:J

    move/from16 v10, p4

    int-to-long v0, v10

    sub-long/2addr v8, v0

    move/from16 v0, p5

    int-to-long v0, v0

    sub-long/2addr v8, v0

    .line 57813
    .local v4, "absoluteOffset":J
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/V2;->A0C:Lcom/facebook/ads/redexgen/X/Ff;

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/Ff;->A0G(JIJILcom/facebook/ads/redexgen/X/Ca;)V

    .line 57814
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
