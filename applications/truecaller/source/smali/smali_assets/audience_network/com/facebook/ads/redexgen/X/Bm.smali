.class public final Lcom/facebook/ads/redexgen/X/Bm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/V3;
.implements Lcom/facebook/ads/redexgen/X/V4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/V9;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/V4;

.field public A04:[Lcom/facebook/ads/redexgen/X/V9;

.field public final A05:Lcom/facebook/ads/redexgen/X/V3;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xZ98n6jXZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "w0wM6S1AW5kwd8mBaLXb8IJFUPLi1ZSY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5GeP1Ey0MjdLLaKEOlMigJbDmIHcG3Ps"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Q5WYazqpabUa99ZYxsI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Gm0HQrfOciURdkrLDtJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cUS8ttxVNiquYZeS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9hpvQN9G3pxye3p4YcQpNMMd2GK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bm;->A06:[Ljava/lang/String;

    .line 24648
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/V3;ZJJ)V
    .locals 2

    .line 24649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24650
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    .line 24651
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/V9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A04:[Lcom/facebook/ads/redexgen/X/V9;

    .line 24652
    if-eqz p2, :cond_0

    move-wide v0, p3

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A02:J

    .line 24653
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Bm;->A01:J

    .line 24654
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Bm;->A00:J

    .line 24655
    return-void

    .line 24656
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private A00(JLcom/facebook/ads/redexgen/X/Ak;)Lcom/facebook/ads/redexgen/X/Ak;
    .locals 11

    .line 24657
    iget-wide v2, p3, Lcom/facebook/ads/redexgen/X/Ak;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A01:J

    sub-long v6, p1, v0

    .line 24658
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Il;->A0E(JJJ)J

    move-result-wide v0

    .line 24659
    .local p0, "toleranceBeforeUs":J
    iget-wide v5, p3, Lcom/facebook/ads/redexgen/X/Ak;->A00:J

    .line 24660
    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/Bm;->A00:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v2, v9, v3

    if-nez v2, :cond_0

    const-wide v9, 0x7fffffffffffffffL

    .line 24661
    :goto_0
    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Il;->A0E(JJJ)J

    move-result-wide v3

    .line 24662
    .local v2, "toleranceAfterUs":J
    iget-wide v5, p3, Lcom/facebook/ads/redexgen/X/Ak;->A01:J

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    iget-wide v5, p3, Lcom/facebook/ads/redexgen/X/Ak;->A00:J

    cmp-long v2, v3, v5

    if-nez v2, :cond_1

    .line 24663
    return-object p3

    .line 24664
    :cond_0
    sub-long/2addr v9, p1

    goto :goto_0

    .line 24665
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ak;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Ak;-><init>(JJ)V

    return-object v2
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/V3;)V
    .locals 1

    .line 24666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A03:Lcom/facebook/ads/redexgen/X/V4;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Fj;->AAD(Lcom/facebook/ads/redexgen/X/Fk;)V

    .line 24667
    return-void
.end method

.method public static A02(J[Lcom/facebook/ads/redexgen/X/HD;)Z
    .locals 4

    .line 24668
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-eqz v0, :cond_1

    .line 24669
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 24670
    .local v3, "trackSelection":Lcom/facebook/ads/redexgen/X/HD;
    if-eqz v0, :cond_0

    .line 24671
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HD;->A7J()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 24672
    .local v1, "selectedFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IO;->A09(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24673
    const/4 v0, 0x1

    return v0

    .line 24674
    .end local v3    # "trackSelection":Lcom/facebook/ads/redexgen/X/HD;
    .end local v1    # "selectedFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24675
    :cond_1
    return v3
.end method


# virtual methods
.method public final A03()Z
    .locals 5

    .line 24676
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bm;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A48(J)Z
    .locals 1

    .line 24677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/V3;->A48(J)Z

    move-result v0

    return v0
.end method

.method public final A4n(JZ)V
    .locals 1

    .line 24678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/V3;->A4n(JZ)V

    .line 24679
    return-void
.end method

.method public final A5b(JLcom/facebook/ads/redexgen/X/Ak;)J
    .locals 3

    .line 24680
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A01:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 24681
    return-wide v1

    .line 24682
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bm;->A00(JLcom/facebook/ads/redexgen/X/Ak;)Lcom/facebook/ads/redexgen/X/Ak;

    move-result-object v1

    .line 24683
    .local p0, "clippedSeekParameters":Lcom/facebook/ads/redexgen/X/Ak;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/V3;->A5b(JLcom/facebook/ads/redexgen/X/Ak;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A5q()J
    .locals 7

    .line 24684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->A5q()J

    move-result-wide v5

    .line 24685
    .local p0, "bufferedPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A00:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 24686
    :cond_0
    return-wide v3

    .line 24687
    :cond_1
    return-wide v5
.end method

.method public final A6w()J
    .locals 7

    .line 24688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->A6w()J

    move-result-wide v5

    .line 24689
    .local p0, "nextLoadPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A00:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 24690
    :cond_0
    return-wide v3

    .line 24691
    :cond_1
    return-wide v5
.end method

.method public final A7a()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 24692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->A7a()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public final A9O()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->A9O()V

    .line 24694
    return-void
.end method

.method public final bridge synthetic AAD(Lcom/facebook/ads/redexgen/X/Fk;)V
    .locals 0

    .line 24695
    check-cast p1, Lcom/facebook/ads/redexgen/X/V3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bm;->A01(Lcom/facebook/ads/redexgen/X/V3;)V

    return-void
.end method

.method public final ABh(Lcom/facebook/ads/redexgen/X/V3;)V
    .locals 1

    .line 24696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A03:Lcom/facebook/ads/redexgen/X/V4;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/V4;->ABh(Lcom/facebook/ads/redexgen/X/V3;)V

    .line 24697
    return-void
.end method

.method public final ACy(Lcom/facebook/ads/redexgen/X/V4;J)V
    .locals 1

    .line 24698
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A03:Lcom/facebook/ads/redexgen/X/V4;

    .line 24699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/V3;->ACy(Lcom/facebook/ads/redexgen/X/V4;J)V

    .line 24700
    return-void
.end method

.method public final ADH()J
    .locals 8

    .line 24701
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bm;->A03()Z

    move-result v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 24702
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Bm;->A02:J

    .line 24703
    .local v3, "initialDiscontinuityUs":J
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Bm;->A02:J

    .line 24704
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bm;->ADH()J

    move-result-wide v4

    .line 24705
    .local v5, "childDiscontinuityUs":J
    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    :goto_0
    return-wide v4

    :cond_0
    move-wide v4, v6

    goto :goto_0

    .line 24706
    .end local v3    # "initialDiscontinuityUs":J
    .end local v5    # "childDiscontinuityUs":J
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->ADH()J

    move-result-wide v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bm;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 24707
    .local v3, "discontinuityUs":J
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bm;->A06:[Ljava/lang/String;

    const-string v1, "JN4lYhgdVtJugUzGLO1"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "V7PIoeFvQi5pkabjQnk"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 24708
    return-wide v2

    .line 24709
    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A01:J

    const/4 v5, 0x1

    cmp-long v0, v6, v1

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24710
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bm;->A00:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    cmp-long v0, v6, v3

    if-gtz v0, :cond_4

    :cond_3
    :goto_2
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24711
    return-wide v6

    .line 24712
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 24713
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADO(J)V
    .locals 1

    .line 24714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/V3;->ADO(J)V

    .line 24715
    return-void
.end method

.method public final AED(J)J
    .locals 8

    .line 24716
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A02:J

    .line 24717
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bm;->A04:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v2, v3

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 24718
    .local v4, "sampleStream":Lcom/facebook/ads/redexgen/X/V9;
    if-eqz v0, :cond_0

    .line 24719
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A00()V

    .line 24720
    .end local v4    # "sampleStream":Lcom/facebook/ads/redexgen/X/V9;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24721
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/V3;->AED(J)J

    move-result-wide v5

    .line 24722
    .local p0, "seekUs":J
    cmp-long v0, v5, p1

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A01:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Bm;->A00:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    cmp-long v0, v5, v3

    if-gtz v0, :cond_3

    :cond_2
    const/4 v7, 0x1

    :cond_3
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24723
    return-wide v5
.end method

.method public final AEE([Lcom/facebook/ads/redexgen/X/HD;[Z[Lcom/facebook/ads/redexgen/X/Fi;[ZJ)J
    .locals 15

    .line 24724
    move-object/from16 v4, p3

    array-length v0, v4

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/V9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A04:[Lcom/facebook/ads/redexgen/X/V9;

    .line 24725
    array-length v0, v4

    new-array v11, v0, [Lcom/facebook/ads/redexgen/X/Fi;

    .line 24726
    .local p0, "childStreams":[Lcom/facebook/ads/redexgen/X/Fi;
    const/4 v2, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v4

    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    .line 24727
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A04:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v0, v4, v2

    check-cast v0, Lcom/facebook/ads/redexgen/X/V9;

    aput-object v0, v1, v2

    .line 24728
    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    aget-object v0, v1, v2

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/V9;->A01:Lcom/facebook/ads/redexgen/X/Fi;

    :cond_0
    aput-object v3, v11, v2

    .line 24729
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24730
    .end local v9    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    .line 24731
    move-object/from16 v10, p2

    move-object/from16 v9, p1

    move-wide/from16 v13, p5

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/V3;->AEE([Lcom/facebook/ads/redexgen/X/HD;[Z[Lcom/facebook/ads/redexgen/X/Fi;[ZJ)J

    move-result-wide v7

    .line 24732
    .local v9, "enablePositionUs":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bm;->A03()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A01:J

    cmp-long v2, v13, v0

    if-nez v2, :cond_7

    .line 24733
    invoke-static {v0, v1, v9}, Lcom/facebook/ads/redexgen/X/Bm;->A02(J[Lcom/facebook/ads/redexgen/X/HD;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24734
    move-wide v0, v7

    .line 24735
    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A02:J

    .line 24736
    cmp-long v0, v7, v13

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A01:J

    cmp-long v0, v7, v1

    if-ltz v0, :cond_6

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A00:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v1, v5

    if-eqz v0, :cond_2

    cmp-long v0, v7, v1

    if-gtz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 24737
    const/4 v5, 0x0

    .local v4, "i":I
    :goto_3
    array-length v0, v4

    if-ge v5, v0, :cond_8

    .line 24738
    aget-object v0, v11, v5

    if-nez v0, :cond_4

    .line 24739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A04:[Lcom/facebook/ads/redexgen/X/V9;

    aput-object v3, v0, v5

    .line 24740
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A04:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v0, v0, v5

    aput-object v0, v4, v5

    .line 24741
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 24742
    :cond_4
    aget-object v0, v4, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bm;->A04:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v0, v0, v5

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/V9;->A01:Lcom/facebook/ads/redexgen/X/Fi;

    aget-object v0, v11, v5

    if-eq v1, v0, :cond_3

    .line 24743
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bm;->A04:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v1, v11, v5

    new-instance v0, Lcom/facebook/ads/redexgen/X/V9;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/V9;-><init>(Lcom/facebook/ads/redexgen/X/Bm;Lcom/facebook/ads/redexgen/X/Fi;)V

    aput-object v0, v2, v5

    goto :goto_4

    .line 24744
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 24745
    :cond_7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 24746
    .end local v4    # "i":I
    :cond_8
    return-wide v7
.end method
