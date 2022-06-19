.class public final Lcom/facebook/ads/redexgen/X/Wb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/B8;


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Lcom/facebook/ads/redexgen/X/Bd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Ljava/nio/ByteBuffer;

.field public A0A:Ljava/nio/ByteBuffer;

.field public A0B:Ljava/nio/ShortBuffer;

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iVI49d2ZLsEdnN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8nt9Mx90pYcLgm8jwIqfRxnuNB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "N5EnT7xPV04alRStuSSEb4qxGw0ypgBS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CZFk7KMkAj1VPwfzqXgnV4RMFN6v0v1b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0r4SPeKqFHrxpG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Bbc1ECWkbstPDX5EGN6JJHjdPo9FJmAx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C6RSY0Y2UTdbfyI9HBBCvYbiYc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "niyGYsc3TbIZXUeN92sM43TjCNQsZLKY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A0D:[Ljava/lang/String;

    .line 63655
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63657
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:F

    .line 63658
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:F

    .line 63659
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A02:I

    .line 63660
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A05:I

    .line 63661
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A03:I

    .line 63662
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    .line 63663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0B:Ljava/nio/ShortBuffer;

    .line 63664
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0A:Ljava/nio/ByteBuffer;

    .line 63665
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A04:I

    .line 63666
    return-void
.end method


# virtual methods
.method public final A00(F)F
    .locals 2

    .line 63667
    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A00(FFF)F

    move-result v1

    .line 63668
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 63669
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:F

    .line 63670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    .line 63671
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wb;->flush()V

    .line 63672
    return v1
.end method

.method public final A01(F)F
    .locals 2

    .line 63673
    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A00(FFF)F

    move-result v1

    .line 63674
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 63675
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:F

    .line 63676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    .line 63677
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wb;->flush()V

    .line 63678
    return v1
.end method

.method public final A02(J)J
    .locals 10

    .line 63679
    move-object v3, p0

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/Wb;->A07:J

    const-wide/16 v1, 0x400

    cmp-long v0, v8, v1

    move-wide v4, p1

    if-ltz v0, :cond_1

    .line 63680
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wb;->A03:I

    iget v2, v3, Lcom/facebook/ads/redexgen/X/Wb;->A05:I

    if-ne v0, v2, :cond_0

    .line 63681
    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/Wb;->A06:J

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Il;->A0F(JJJ)J

    move-result-wide v0

    .line 63682
    :goto_0
    return-wide v0

    .line 63683
    :cond_0
    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/Wb;->A06:J

    int-to-long v0, v0

    mul-long/2addr v6, v0

    int-to-long v0, v2

    mul-long/2addr v8, v0

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Il;->A0F(JJJ)J

    move-result-wide v0

    goto :goto_0

    .line 63684
    :cond_1
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wb;->A01:F

    float-to-double v2, v0

    long-to-double v0, v4

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public final A45(III)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B7;
        }
    .end annotation

    .line 63685
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 63686
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A04:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 63687
    move v1, p1

    .line 63688
    .local p0, "outputSampleRateHz":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A05:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A02:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A03:I

    if-ne v0, v1, :cond_1

    .line 63689
    const/4 v0, 0x0

    return v0

    .line 63690
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A05:I

    .line 63691
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Wb;->A02:I

    .line 63692
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A03:I

    .line 63693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    .line 63694
    const/4 v0, 0x1

    return v0

    .line 63695
    .end local p0    # "outputSampleRateHz":I
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/B7;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/B7;-><init>(III)V

    throw v0
.end method

.method public final A6x()Ljava/nio/ByteBuffer;
    .locals 2

    .line 63696
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0A:Ljava/nio/ByteBuffer;

    .line 63697
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0A:Ljava/nio/ByteBuffer;

    .line 63698
    return-object v1
.end method

.method public final A6y()I
    .locals 1

    .line 63699
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A02:I

    return v0
.end method

.method public final A6z()I
    .locals 1

    .line 63700
    const/4 v0, 0x2

    return v0
.end method

.method public final A70()I
    .locals 1

    .line 63701
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A03:I

    return v0
.end method

.method public final A8F()Z
    .locals 5

    .line 63702
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A05:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 63703
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:F

    sub-float/2addr v0, v1

    .line 63704
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A0D:[Ljava/lang/String;

    const-string v1, "vE55EECrsMoThx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "BaJHYxULwHsid1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    cmpl-float v0, v3, v4

    if-gez v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A05:I

    if-eq v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 63705
    :goto_0
    return v0
.end method

.method public final A8J()Z
    .locals 1

    .line 63706
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bd;->A0H()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADA()V
    .locals 2

    .line 63707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 63708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bd;->A0J()V

    .line 63709
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0C:Z

    .line 63710
    return-void

    .line 63711
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADB(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 63712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 63713
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63714
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 63715
    .local p0, "shortBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 63716
    .local p1, "inputSize":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wb;->A06:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wb;->A06:J

    .line 63717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Bd;->A0L(Ljava/nio/ShortBuffer;)V

    .line 63718
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63719
    .end local p0    # "shortBuffer":Ljava/nio/ShortBuffer;
    .end local p1    # "inputSize":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bd;->A0H()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A02:I

    mul-int/2addr v1, v0

    mul-int/lit8 v4, v1, 0x2

    .line 63720
    .local p0, "outputSize":I
    if-lez v4, :cond_1

    .line 63721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 63722
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    .line 63723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0B:Ljava/nio/ShortBuffer;

    .line 63724
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Bd;->A0K(Ljava/nio/ShortBuffer;)V

    .line 63725
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wb;->A07:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wb;->A07:J

    .line 63726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 63727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0A:Ljava/nio/ByteBuffer;

    .line 63728
    :cond_1
    return-void

    .line 63729
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 63730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 63731
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final flush()V
    .locals 6

    .line 63732
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wb;->A8F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    if-nez v0, :cond_1

    .line 63734
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A05:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Wb;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:F

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:F

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Wb;->A03:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(IIFFI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    .line 63735
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0A:Ljava/nio/ByteBuffer;

    .line 63736
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A06:J

    .line 63737
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A07:J

    .line 63738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0C:Z

    .line 63739
    return-void

    .line 63740
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bd;->A0I()V

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .line 63741
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:F

    .line 63742
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:F

    .line 63743
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A02:I

    .line 63744
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A05:I

    .line 63745
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A03:I

    .line 63746
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    .line 63747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0B:Ljava/nio/ShortBuffer;

    .line 63748
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0A:Ljava/nio/ByteBuffer;

    .line 63749
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A04:I

    .line 63750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A08:Lcom/facebook/ads/redexgen/X/Bd;

    .line 63751
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A06:J

    .line 63752
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A07:J

    .line 63753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A0C:Z

    .line 63754
    return-void
.end method
