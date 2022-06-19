.class public final Lcom/facebook/ads/redexgen/X/AR;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/AP;

.field public A05:Lcom/facebook/ads/redexgen/X/AP;

.field public A06:Lcom/facebook/ads/redexgen/X/AP;

.field public A07:Lcom/facebook/ads/redexgen/X/Ao;

.field public A08:Ljava/lang/Object;

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/Am;

.field public final A0B:Lcom/facebook/ads/redexgen/X/An;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L0u3smBC6U6OaYtXppAd31iOC3v5Qhxz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DMmTpdJrujAgbmCwwmXMokmpSOB8XVVu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Fa0SCWKpXCwAFqaC3HE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LFAAfAeIJjtENyizMXbJJCIXxkMYQ2BS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EOXOixXcPNGoqbhwUMphXmxbz6TL9K"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ydRMenJrqCbsHYuDZ17G4nGASKkEf2si"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4zZeHgY0eMzISLpxtPc37pmrQXWGSxn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    .line 21835
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21837
    new-instance v0, Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Am;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    .line 21838
    new-instance v0, Lcom/facebook/ads/redexgen/X/An;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/An;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0B:Lcom/facebook/ads/redexgen/X/An;

    .line 21839
    return-void
.end method

.method private A00(I)J
    .locals 6

    .line 21840
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    .line 21841
    .local p0, "periodUid":Ljava/lang/Object;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 21842
    .local p1, "windowIndex":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A08:Ljava/lang/Object;

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 21843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A04(Ljava/lang/Object;)I

    move-result v2

    .line 21844
    .local v2, "oldFrontPeriodIndex":I
    if-eq v2, v4, :cond_0

    .line 21845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 21846
    .local v0, "oldFrontWindowIndex":I
    if-ne v0, v5, :cond_0

    .line 21847
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A03:J

    return-wide v0

    .line 21848
    .end local v2    # "oldFrontPeriodIndex":I
    .end local v0    # "oldFrontWindowIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A0E()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v1

    .line 21849
    .local v2, "mediaPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    :goto_0
    if-eqz v1, :cond_2

    .line 21850
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AP;->A09:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21851
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    return-wide v0

    .line 21852
    :cond_1
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    goto :goto_0

    .line 21853
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A0E()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v3

    .line 21854
    :goto_1
    if-eqz v3, :cond_4

    .line 21855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A04(Ljava/lang/Object;)I

    move-result v2

    .line 21856
    .local v0, "indexOfHolderInTimeline":I
    if-eq v2, v4, :cond_3

    .line 21857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 21858
    .local v0, "holderWindowIndex":I
    if-ne v0, v5, :cond_3

    .line 21859
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    return-wide v0

    .line 21860
    .end local v0    # "holderWindowIndex":I
    :cond_3
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    .line 21861
    .end local v0
    goto :goto_1

    .line 21862
    :cond_4
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A02:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A02:J

    return-wide v2
.end method

.method private A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 17

    .line 21863
    move-object/from16 v3, p0

    new-instance v6, Lcom/facebook/ads/redexgen/X/FL;

    move/from16 v5, p2

    move/from16 v7, p1

    move-wide/from16 v10, p6

    move/from16 v4, p3

    move-object v6, v6

    move v8, v5

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/FL;-><init>(IIIJ)V

    .line 21864
    .local v7, "id":Lcom/facebook/ads/redexgen/X/FL;
    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {v3, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/AR;->A0A(Lcom/facebook/ads/redexgen/X/FL;J)Z

    move-result v15

    .line 21865
    .local v5, "isLastInPeriod":Z
    invoke-direct {v3, v6, v15}, Lcom/facebook/ads/redexgen/X/AR;->A0B(Lcom/facebook/ads/redexgen/X/FL;Z)Z

    move-result v16

    .line 21866
    .local v4, "isLastInTimeline":Z
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    .line 21867
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/FL;->A00:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/FL;->A01:I

    .line 21868
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A0A(II)J

    move-result-wide v13

    .line 21869
    .local v11, "durationUs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Am;->A02(I)I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 21870
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A06()J

    move-result-wide v7

    .line 21871
    .local v6, "startPositionUs":J
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/AQ;

    const-wide/high16 v9, -0x8000000000000000L

    move-wide/from16 v11, p4

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Lcom/facebook/ads/redexgen/X/FL;JJJJZZ)V

    return-object v5

    .line 21872
    :cond_0
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method private A02(IJJ)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 16

    .line 21873
    move-object/from16 v4, p0

    new-instance v5, Lcom/facebook/ads/redexgen/X/FL;

    move-wide/from16 v0, p4

    move/from16 v2, p1

    invoke-direct {v5, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/FL;-><init>(IJ)V

    .line 21874
    .local v2, "id":Lcom/facebook/ads/redexgen/X/FL;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    .line 21875
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    move-wide/from16 v6, p2

    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/Am;->A04(J)I

    move-result v3

    .line 21876
    .local v6, "nextAdGroupIndex":I
    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 21877
    move-wide v8, v1

    .line 21878
    .local v9, "endUs":J
    :goto_0
    invoke-direct {v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/AR;->A0A(Lcom/facebook/ads/redexgen/X/FL;J)Z

    move-result v14

    .line 21879
    .local v2, "isLastInPeriod":Z
    invoke-direct {v4, v5, v14}, Lcom/facebook/ads/redexgen/X/AR;->A0B(Lcom/facebook/ads/redexgen/X/FL;Z)Z

    move-result v15

    .line 21880
    .local v3, "isLastInTimeline":Z
    cmp-long v0, v8, v1

    if-nez v0, :cond_0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A07()J

    move-result-wide v12

    .line 21881
    .local v0, "durationUs":J
    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/AQ;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .end local v2    # "isLastInPeriod":Z
    .local v8, "isLastInPeriod":Z
    .end local v9    # "endUs":J
    .local p6, "endUs":J
    .end local v6    # "nextAdGroupIndex":I
    .local p3, "nextAdGroupIndex":I
    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Lcom/facebook/ads/redexgen/X/FL;JJJJZZ)V

    return-object v4

    .line 21882
    :cond_0
    move-wide v12, v8

    goto :goto_1

    .line 21883
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Am;->A09(I)J

    move-result-wide v8

    goto :goto_0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/AP;J)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21884
    move-object v0, p0

    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    .line 21885
    .local v5, "mediaPeriodInfo":Lcom/facebook/ads/redexgen/X/AQ;
    iget-boolean v1, v2, Lcom/facebook/ads/redexgen/X/AQ;->A06:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 21886
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v6, v1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/AR;->A0B:Lcom/facebook/ads/redexgen/X/An;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/AR;->A01:I

    iget-boolean v10, v0, Lcom/facebook/ads/redexgen/X/AR;->A09:Z

    .line 21887
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ao;->A03(ILcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/An;IZ)I

    move-result v7

    .line 21888
    .local p0, "nextPeriodIndex":I
    if-ne v7, v3, :cond_0

    .line 21889
    return-object v4

    .line 21890
    :cond_0
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    .line 21891
    const/4 v1, 0x1

    invoke-virtual {v4, v7, v3, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v1

    iget v9, v1, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 21892
    .local v2, "nextWindowIndex":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    .line 21893
    .local v1, "nextPeriodUid":Ljava/lang/Object;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    .line 21894
    .local v3, "windowSequenceNumber":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AR;->A0B:Lcom/facebook/ads/redexgen/X/An;

    invoke-virtual {v3, v9, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A0B(ILcom/facebook/ads/redexgen/X/An;)Lcom/facebook/ads/redexgen/X/An;

    move-result-object v1

    iget v1, v1, Lcom/facebook/ads/redexgen/X/An;->A00:I

    if-ne v1, v7, :cond_3

    .line 21895
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AP;->A07()J

    move-result-wide v3

    iget-wide v1, v2, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    add-long/2addr v3, v1

    sub-long v3, v3, p2

    .line 21896
    .local v8, "defaultPositionProjectionUs":J
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/AR;->A0B:Lcom/facebook/ads/redexgen/X/An;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .end local v3    # "windowSequenceNumber":J
    .local v4, "windowSequenceNumber":J
    const-wide/16 v1, 0x0

    .line 21897
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 21898
    .end local v8    # "defaultPositionProjectionUs":J
    .local v3, "defaultPositionProjectionUs":J
    invoke-virtual/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/Ao;->A08(Lcom/facebook/ads/redexgen/X/An;Lcom/facebook/ads/redexgen/X/Am;IJJ)Landroid/util/Pair;

    move-result-object v2

    .line 21899
    .local p1, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v2, :cond_1

    .line 21900
    const/4 v0, 0x0

    return-object v0

    .line 21901
    :cond_1
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 21902
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 21903
    .local v1, "startPositionUs":J
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/AP;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21904
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    .end local v4    # "windowSequenceNumber":J
    .local v7, "windowSequenceNumber":J
    goto :goto_0

    .line 21905
    .end local v7    # "windowSequenceNumber":J
    .restart local v4    # "windowSequenceNumber":J
    :cond_2
    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/AR;->A02:J

    const-wide/16 v3, 0x1

    .end local p0    # "nextPeriodIndex":I
    .end local p1    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p2, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p1, "nextPeriodIndex":I
    add-long v1, v10, v3

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/AR;->A02:J

    goto :goto_0

    .line 21906
    .end local p1    # "nextPeriodIndex":I
    .end local v1    # "startPositionUs":J
    .end local v7
    .restart local p0    # "nextPeriodIndex":I
    .local v3, "windowSequenceNumber":J
    .end local v3    # "windowSequenceNumber":J
    .restart local v4    # "windowSequenceNumber":J
    :cond_3
    const-wide/16 v8, 0x0

    .line 21907
    .end local p0    # "nextPeriodIndex":I
    .local v1, "nextPeriodIndex":I
    .local v6, "startPositionUs":J
    :goto_0
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/AR;->A07(IJJ)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v7

    .line 21908
    .local v8, "periodId":Lcom/facebook/ads/redexgen/X/FL;
    move-wide v10, v8

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/AR;->A06(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    return-object v0

    .line 21909
    .end local v2    # "nextWindowIndex":I
    .end local v1    # "nextPeriodIndex":I
    .end local v1
    .end local v6    # "startPositionUs":J
    .end local v8    # "periodId":Lcom/facebook/ads/redexgen/X/FL;
    .end local v4    # "windowSequenceNumber":J
    :cond_4
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 21910
    .local v1, "currentPeriodId":Lcom/facebook/ads/redexgen/X/FL;
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget v5, v1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    .line 21911
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 21912
    iget v6, v1, Lcom/facebook/ads/redexgen/X/FL;->A00:I

    .line 21913
    .local v6, "adGroupIndex":I
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/Am;->A01(I)I

    move-result v5

    .line 21914
    .local v7, "adCountInCurrentAdGroup":I
    if-ne v5, v3, :cond_5

    .line 21915
    const/4 v0, 0x0

    return-object v0

    .line 21916
    :cond_5
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget v3, v1, Lcom/facebook/ads/redexgen/X/FL;->A01:I

    .line 21917
    invoke-virtual {v4, v6, v3}, Lcom/facebook/ads/redexgen/X/Am;->A03(II)I

    move-result v7

    .line 21918
    .local v8, "nextAdIndexInAdGroup":I
    if-ge v7, v5, :cond_7

    .line 21919
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/Am;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 21920
    const/4 v0, 0x0

    .line 21921
    :goto_1
    return-object v0

    .line 21922
    :cond_6
    iget v5, v1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-wide v8, v2, Lcom/facebook/ads/redexgen/X/AQ;->A00:J

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/AR;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    goto :goto_1

    .line 21923
    :cond_7
    iget v3, v1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-wide v4, v2, Lcom/facebook/ads/redexgen/X/AQ;->A00:J

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AR;->A02(IJJ)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    return-object v0

    .line 21924
    .end local v6    # "adGroupIndex":I
    .end local v7    # "adCountInCurrentAdGroup":I
    .end local v8    # "nextAdIndexInAdGroup":I
    :cond_8
    iget-wide v5, v2, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    sget-object v7, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v7, v7, v4

    const/16 v4, 0x17

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v4, 0x41

    if-eq v7, v4, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v8, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const-string v7, "6G"

    const/4 v4, 0x1

    aput-object v7, v8, v4

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v4, v5, v7

    if-eqz v4, :cond_c

    .line 21925
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget-wide v4, v2, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    invoke-virtual {v6, v4, v5}, Lcom/facebook/ads/redexgen/X/Am;->A05(J)I

    move-result v4

    .line 21926
    .local v6, "nextAdGroupIndex":I
    if-ne v4, v3, :cond_a

    .line 21927
    iget v3, v1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-wide v4, v2, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AR;->A02(IJJ)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    return-object v0

    .line 21928
    :cond_a
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Am;->A02(I)I

    move-result v5

    .line 21929
    .local v7, "adIndexInAdGroup":I
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/Am;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 21930
    const/4 v0, 0x0

    .line 21931
    :goto_2
    return-object v0

    .line 21932
    :cond_b
    iget v3, v1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    iget-wide v8, v1, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/AR;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    goto :goto_2

    .line 21933
    .end local v6    # "nextAdGroupIndex":I
    .end local v7    # "adIndexInAdGroup":I
    :cond_c
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Am;->A00()I

    move-result v2

    .line 21934
    .local v6, "adGroupCount":I
    if-nez v2, :cond_d

    .line 21935
    const/4 v0, 0x0

    return-object v0

    .line 21936
    :cond_d
    add-int/lit8 v5, v2, -0x1

    .line 21937
    .local v7, "adGroupIndex":I
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Am;->A09(I)J

    move-result-wide v3

    cmp-long v2, v3, v7

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    .line 21938
    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Am;->A0D(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 21939
    .end local v8
    .end local v9
    :cond_e
    const/4 v0, 0x0

    return-object v0

    .line 21940
    :cond_f
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Am;->A02(I)I

    move-result v6

    .line 21941
    .local v8, "adIndexInAdGroup":I
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v5, v6}, Lcom/facebook/ads/redexgen/X/Am;->A0E(II)Z

    move-result v2

    if-nez v2, :cond_10

    .line 21942
    const/4 v0, 0x0

    return-object v0

    .line 21943
    :cond_10
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A07()J

    move-result-wide v7

    .line 21944
    .local v9, "contentDurationUs":J
    iget v4, v1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-wide v9, v1, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/AR;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/AQ;Lcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 19

    .line 21945
    move-object/from16 v5, p0

    move-object/from16 v4, p1

    iget-wide v9, v4, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    .line 21946
    .local v3, "startPositionUs":J
    iget-wide v11, v4, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    .line 21947
    .local v11, "endPositionUs":J
    move-object/from16 v8, p2

    invoke-direct {v5, v8, v11, v12}, Lcom/facebook/ads/redexgen/X/AR;->A0A(Lcom/facebook/ads/redexgen/X/FL;J)Z

    move-result v2

    .line 21948
    .local v0, "isLastInPeriod":Z
    invoke-direct {v5, v8, v2}, Lcom/facebook/ads/redexgen/X/AR;->A0B(Lcom/facebook/ads/redexgen/X/FL;Z)Z

    move-result v18

    .line 21949
    .local v3, "isLastInTimeline":Z
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget v1, v8, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    .line 21950
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21951
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget v1, v8, Lcom/facebook/ads/redexgen/X/FL;->A00:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/FL;->A01:I

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A0A(II)J

    move-result-wide v15

    .line 21952
    .local v2, "durationUs":J
    :goto_0
    new-instance v7, Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v13, v4, Lcom/facebook/ads/redexgen/X/AQ;->A00:J

    .end local v11    # "endPositionUs":J
    .local p1, "endPositionUs":J
    .end local v3    # "isLastInTimeline":Z
    .local v0, "startPositionUs":J
    move/from16 v17, v2

    invoke-direct/range {v7 .. v18}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Lcom/facebook/ads/redexgen/X/FL;JJJJZZ)V

    return-object v7

    .line 21953
    :cond_0
    const-wide/high16 v6, -0x8000000000000000L

    sget-object v1, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const-string v1, "zTzAUiYM1BrQqeObFTyCKDEgqKKR2HVC"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    cmp-long v0, v11, v6

    if-nez v0, :cond_2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A07()J

    move-result-wide v15

    goto :goto_0

    :cond_2
    move-wide v15, v11

    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/AT;)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 6

    .line 21954
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AR;->A06(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    return-object v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 8

    .line 21955
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    .line 21956
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21957
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FL;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/FL;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21958
    const/4 v0, 0x0

    return-object v0

    .line 21959
    :cond_0
    iget v1, p1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/FL;->A00:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/FL;->A01:I

    iget-wide v6, p1, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/AR;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    return-object v0

    .line 21960
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AR;->A02(IJJ)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    return-object v0
.end method

.method private A07(IJJ)Lcom/facebook/ads/redexgen/X/FL;
    .locals 7

    .line 21961
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    move v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    .line 21962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Am;->A05(J)I

    move-result v3

    .line 21963
    .local p0, "adGroupIndex":I
    const/4 v0, -0x1

    move-wide v5, p4

    if-ne v3, v0, :cond_0

    .line 21964
    new-instance v0, Lcom/facebook/ads/redexgen/X/FL;

    invoke-direct {v0, v2, v5, v6}, Lcom/facebook/ads/redexgen/X/FL;-><init>(IJ)V

    return-object v0

    .line 21965
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Am;->A02(I)I

    move-result v4

    .line 21966
    .local v0, "adIndexInAdGroup":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/FL;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/FL;-><init>(IIIJ)V

    return-object v1
.end method

.method private A08()Z
    .locals 11

    .line 21967
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A0E()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v3

    .line 21968
    .local p0, "lastValidPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 21969
    return v4

    .line 21970
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/AR;->A0B:Lcom/facebook/ads/redexgen/X/An;

    iget v9, p0, Lcom/facebook/ads/redexgen/X/AR;->A01:I

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/AR;->A09:Z

    .line 21971
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ao;->A03(ILcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/An;IZ)I

    move-result v1

    .line 21972
    .local v4, "nextPeriodIndex":I
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A06:Z

    if-nez v0, :cond_1

    .line 21973
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    goto :goto_1

    .line 21974
    :cond_1
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    if-eq v0, v1, :cond_3

    .line 21975
    :cond_2
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/AR;->A0S(Lcom/facebook/ads/redexgen/X/AP;)Z

    move-result v2

    .line 21976
    .local v4, "readingPeriodRemoved":Z
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 21977
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/AR;->A04(Lcom/facebook/ads/redexgen/X/AQ;Lcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    .line 21978
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A0P()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21979
    :cond_3
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    .line 21980
    .end local v4    # "readingPeriodRemoved":Z
    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const-string v1, "GuDKwHudSgXHMcEdzJg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "TrxgVcYEVqGsLQMDNrMk5TDxlvQhmk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_6

    .line 21981
    :cond_5
    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/AP;Lcom/facebook/ads/redexgen/X/AQ;)Z
    .locals 6

    .line 21982
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    .line 21983
    .local p0, "periodHolderInfo":Lcom/facebook/ads/redexgen/X/AQ;
    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 21984
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 21985
    :goto_0
    return v0

    .line 21986
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/FL;J)Z
    .locals 10

    .line 21987
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A00()I

    move-result v0

    .line 21988
    .local p0, "adGroupCount":I
    const/4 v9, 0x1

    if-nez v0, :cond_0

    .line 21989
    return v9

    .line 21990
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 21991
    .local p2, "lastAdGroupIndex":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v8

    .line 21992
    .local v3, "isAd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Am;->A09(I)J

    move-result-wide v6

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v1, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    .line 21993
    if-nez v8, :cond_1

    cmp-long v0, p2, v4

    if-nez v0, :cond_1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 21994
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Am;->A01(I)I

    move-result v2

    .line 21995
    .local v2, "postrollAdCount":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_3

    .line 21996
    return v1

    .line 21997
    :cond_3
    if-eqz v8, :cond_6

    iget v0, p1, Lcom/facebook/ads/redexgen/X/FL;->A00:I

    if-ne v0, v3, :cond_6

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FL;->A01:I

    add-int/lit8 v0, v2, -0x1

    if-ne v1, v0, :cond_6

    const/4 v0, 0x1

    .line 21998
    .local v1, "isLastAd":Z
    :goto_1
    if-nez v0, :cond_4

    if-nez v8, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Am;->A02(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    :cond_4
    :goto_2
    return v9

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 21999
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/FL;Z)Z
    .locals 6

    .line 22000
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A09(ILcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:I

    .line 22001
    .local p0, "windowIndex":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0B:Lcom/facebook/ads/redexgen/X/An;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0B(ILcom/facebook/ads/redexgen/X/An;)Lcom/facebook/ads/redexgen/X/An;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/An;->A08:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AR;->A0B:Lcom/facebook/ads/redexgen/X/An;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/AR;->A01:I

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/AR;->A09:Z

    .line 22002
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ao;->A0F(ILcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/An;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 22003
    :goto_0
    return v0

    .line 22004
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0C()Lcom/facebook/ads/redexgen/X/AP;
    .locals 2

    .line 22005
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v1, :cond_2

    .line 22006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    if-ne v1, v0, :cond_0

    .line 22007
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    .line 22008
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AP;->A0D()V

    .line 22009
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:I

    .line 22010
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:I

    if-nez v0, :cond_1

    .line 22011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    .line 22012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A09:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A08:Ljava/lang/Object;

    .line 22013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A03:J

    .line 22014
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    .line 22015
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    return-object v0

    .line 22016
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    .line 22017
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    goto :goto_0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/AP;
    .locals 3

    .line 22018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 22019
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const-string v1, "7koWfuH1ta1EVLUWQFGgmnLKJoN2uwxl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "1LlHzPavDhI1SmiN1gPMgWkfsuEkohyV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    .line 22020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    return-object v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/AP;
    .locals 1

    .line 22021
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A0P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    goto :goto_0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/AP;
    .locals 1

    .line 22022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/AP;
    .locals 1

    .line 22023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/AP;
    .locals 1

    .line 22024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    return-object v0
.end method

.method public final A0I(JLcom/facebook/ads/redexgen/X/AT;)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    if-nez v0, :cond_0

    .line 22026
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/AR;->A05(Lcom/facebook/ads/redexgen/X/AT;)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    .line 22027
    :goto_0
    return-object v0

    .line 22028
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/AR;->A03(Lcom/facebook/ads/redexgen/X/AP;J)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/AQ;I)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 1

    .line 22029
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 22030
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/FL;->A00(I)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v0

    .line 22031
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/AR;->A04(Lcom/facebook/ads/redexgen/X/AQ;Lcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    return-object v0
.end method

.method public final A0K([Lcom/facebook/ads/redexgen/X/Ah;Lcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/HJ;Lcom/facebook/ads/redexgen/X/FN;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/AQ;)Lcom/facebook/ads/redexgen/X/V3;
    .locals 12

    .line 22032
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    move-object/from16 v11, p6

    if-nez v0, :cond_1

    .line 22033
    iget-wide v5, v11, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    .line 22034
    .local v9, "rendererPositionOffsetUs":J
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/AP;

    move-object/from16 v10, p5

    move-object v7, p2

    move-object v4, p1

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/AP;-><init>([Lcom/facebook/ads/redexgen/X/Ah;JLcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/HJ;Lcom/facebook/ads/redexgen/X/FN;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/AQ;)V

    .line 22035
    .local v4, "newPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_0

    .line 22036
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A0P()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 22037
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    .line 22038
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AR;->A08:Ljava/lang/Object;

    .line 22039
    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    .line 22040
    iget v0, v2, Lcom/facebook/ads/redexgen/X/AR;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/AR;->A00:I

    .line 22041
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    return-object v0

    .line 22042
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AP;->A07()J

    move-result-wide v5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    add-long/2addr v5, v0

    goto :goto_0
.end method

.method public final A0L(IJ)Lcom/facebook/ads/redexgen/X/FL;
    .locals 6

    .line 22043
    move v1, p1

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/AR;->A00(I)J

    move-result-wide v4

    .line 22044
    .local v0, "windowSequenceNumber":J
    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AR;->A07(IJJ)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v0

    return-object v0
.end method

.method public final A0M(J)V
    .locals 1

    .line 22045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_0

    .line 22046
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/AP;->A0G(J)V

    .line 22047
    :cond_0
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/Ao;)V
    .locals 0

    .line 22048
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    .line 22049
    return-void
.end method

.method public final A0O(Z)V
    .locals 4

    .line 22050
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A0E()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v3

    .line 22051
    .local p0, "front":Lcom/facebook/ads/redexgen/X/AP;
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    .line 22052
    if-eqz p1, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A09:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A08:Ljava/lang/Object;

    .line 22053
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A03:J

    .line 22054
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AP;->A0D()V

    .line 22055
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/AR;->A0S(Lcom/facebook/ads/redexgen/X/AP;)Z

    .line 22056
    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    .line 22057
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    .line 22058
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    .line 22059
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:I

    .line 22060
    return-void

    .line 22061
    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 22062
    :cond_2
    if-nez p1, :cond_0

    .line 22063
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AR;->A08:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final A0P()Z
    .locals 1

    .line 22064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Q()Z
    .locals 5

    .line 22065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A05:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    .line 22066
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AP;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:I

    const/16 v0, 0x64

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 22067
    :goto_0
    return v0

    .line 22068
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0R(I)Z
    .locals 1

    .line 22069
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AR;->A01:I

    .line 22070
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AR;->A08()Z

    move-result v0

    return v0
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/AP;)Z
    .locals 3

    .line 22071
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 22072
    const/4 v2, 0x0

    .line 22073
    .local p1, "removedReading":Z
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    .line 22074
    :goto_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_2

    .line 22075
    iget-object p1, p1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    .line 22076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    if-ne p1, v0, :cond_0

    .line 22077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A05:Lcom/facebook/ads/redexgen/X/AP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A06:Lcom/facebook/ads/redexgen/X/AP;

    .line 22078
    const/4 v2, 0x1

    .line 22079
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AP;->A0D()V

    .line 22080
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:I

    goto :goto_1

    .line 22081
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 22082
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    .line 22083
    return v2
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/V3;)Z
    .locals 1

    .line 22084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A04:Lcom/facebook/ads/redexgen/X/AP;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0U(Lcom/facebook/ads/redexgen/X/FL;J)Z
    .locals 12

    .line 22085
    iget v7, p1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    .line 22086
    .local p0, "periodIndex":I
    const/4 v4, 0x0

    .line 22087
    .local p1, "previousPeriodHolder":Lcom/facebook/ads/redexgen/X/AP;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AR;->A0E()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v2

    .line 22088
    .local p2, "periodHolder":Lcom/facebook/ads/redexgen/X/AP;
    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 22089
    if-nez v4, :cond_2

    .line 22090
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    invoke-virtual {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/AR;->A0J(Lcom/facebook/ads/redexgen/X/AQ;I)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    .line 22091
    .end local v7
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A06:Z

    if-eqz v0, :cond_1

    .line 22092
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/AR;->A0B:Lcom/facebook/ads/redexgen/X/An;

    iget v10, p0, Lcom/facebook/ads/redexgen/X/AR;->A01:I

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/AR;->A09:Z

    .line 22093
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Ao;->A03(ILcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/An;IZ)I

    move-result v7

    .line 22094
    :cond_1
    move-object v4, v2

    .line 22095
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/AP;->A01:Lcom/facebook/ads/redexgen/X/AP;

    goto :goto_0

    .line 22096
    :cond_2
    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/AP;->A09:Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/AR;->A0C:[Ljava/lang/String;

    const-string v1, "cRCq0i1JCmFgPvSHr0NI30IAvGtOkPUO"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "aqPjT6JpLbsnsfh6iIpVbm4IivKwupA2"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A07:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A0A:Lcom/facebook/ads/redexgen/X/Am;

    .line 22097
    invoke-virtual {v1, v7, v0, v3}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(ILcom/facebook/ads/redexgen/X/Am;Z)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A03:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 22098
    :cond_4
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/AR;->A0S(Lcom/facebook/ads/redexgen/X/AP;)Z

    move-result v0

    xor-int/2addr v3, v0

    return v3

    .line 22099
    :cond_5
    invoke-direct {p0, v4, p2, p3}, Lcom/facebook/ads/redexgen/X/AR;->A03(Lcom/facebook/ads/redexgen/X/AP;J)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v1

    .line 22100
    .local v7, "periodInfo":Lcom/facebook/ads/redexgen/X/AQ;
    if-nez v1, :cond_6

    .line 22101
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/AR;->A0S(Lcom/facebook/ads/redexgen/X/AP;)Z

    move-result v0

    xor-int/2addr v3, v0

    return v3

    .line 22102
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    invoke-virtual {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/AR;->A0J(Lcom/facebook/ads/redexgen/X/AQ;I)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    .line 22103
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/AR;->A09(Lcom/facebook/ads/redexgen/X/AP;Lcom/facebook/ads/redexgen/X/AQ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22104
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/AR;->A0S(Lcom/facebook/ads/redexgen/X/AP;)Z

    move-result v0

    xor-int/2addr v3, v0

    return v3

    .line 22105
    :cond_7
    return v3
.end method

.method public final A0V(Z)Z
    .locals 1

    .line 22106
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/AR;->A09:Z

    .line 22107
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AR;->A08()Z

    move-result v0

    return v0
.end method
