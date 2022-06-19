.class public final Lcom/facebook/ads/redexgen/X/Vz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;
.implements Lcom/facebook/ads/redexgen/X/CY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/D5;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Mp4Extractor$State;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/CS;

.field public static final A0M:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:Lcom/facebook/ads/redexgen/X/CR;

.field public A0A:Lcom/facebook/ads/redexgen/X/IV;

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/D5;

.field public A0D:[[J

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0G:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0H:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0I:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/W7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0jSfxoXEMfCjtmnyDugkNcQJRjSOySMa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bnCyjA5DcUmWUqivzOXdDI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "awYt8cnKxKdhDKIItvFTiUYUED9yM0q1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Luabopmg5NHaS5SoCXeHIbwAQFsLRvJ0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "odfzLqPoxtdmNhQ8QVXSS2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Wo8IxRBaFRXe4oQbEdt7BomqryNllMGC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1wQy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sEQm6Nsu4XqoPKwwi3EdYrJfunZcOKFC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    .line 60640
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vz;->A07()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/W0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W0;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vz;->A0L:Lcom/facebook/ads/redexgen/X/CS;

    .line 60641
    const/16 v2, 0x30

    const/4 v1, 0x4

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Vz;->A0M:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60642
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vz;-><init>(I)V

    .line 60643
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 60644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60645
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0E:I

    .line 60646
    const/16 v1, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/IV;

    .line 60647
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    .line 60648
    sget-object v1, Lcom/facebook/ads/redexgen/X/IR;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0H:Lcom/facebook/ads/redexgen/X/IV;

    .line 60649
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0G:Lcom/facebook/ads/redexgen/X/IV;

    .line 60650
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A06:I

    .line 60651
    return-void
.end method

.method private A00(J)I
    .locals 19

    .line 60652
    move-object/from16 v7, p0

    const-wide v17, 0x7fffffffffffffffL

    .line 60653
    .local p1, "preferredSkipAmount":J
    const/4 v6, 0x1

    .line 60654
    .local v7, "preferredRequiresReload":Z
    const/16 v16, -0x1

    .line 60655
    .local v17, "preferredTrackIndex":I
    const-wide v14, 0x7fffffffffffffffL

    .line 60656
    .local v5, "preferredAccumulatedBytes":J
    const-wide v12, 0x7fffffffffffffffL

    .line 60657
    .local v16, "minAccumulatedBytes":J
    const/4 v11, 0x1

    .line 60658
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v10, -0x1

    .line 60659
    .local v12, "minAccumulatedBytesTrackIndex":I
    const/4 v5, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Vz;->A0C:[Lcom/facebook/ads/redexgen/X/D5;

    array-length v0, v1

    if-ge v5, v0, :cond_7

    .line 60660
    aget-object v2, v1, v5

    .line 60661
    .local v11, "track":Lcom/facebook/ads/redexgen/X/D5;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/D5;->A00:I

    .line 60662
    .local v10, "sampleIndex":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DE;->A01:I

    if-ne v1, v0, :cond_1

    .line 60663
    .end local v11    # "track":Lcom/facebook/ads/redexgen/X/D5;
    .end local v10    # "sampleIndex":I
    .end local v5    # "preferredAccumulatedBytes":J
    .end local v1
    .end local v2
    .end local v0
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60664
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DE;->A06:[J

    aget-wide v8, v0, v1

    .line 60665
    .local v1, "sampleOffset":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Vz;->A0D:[[J

    aget-object v0, v0, v5

    aget-wide v3, v0, v1

    .line 60666
    .local v2, "sampleAccumulatedBytes":J
    sub-long v8, v8, p1

    .line 60667
    .local v0, "skipAmount":J
    const-wide/16 v1, 0x0

    cmp-long v0, v8, v1

    if-ltz v0, :cond_2

    const-wide/32 v1, 0x40000

    cmp-long v0, v8, v1

    if-ltz v0, :cond_6

    :cond_2
    const/4 v1, 0x1

    .line 60668
    .local v5, "requiresReload":Z
    :goto_2
    if-nez v1, :cond_3

    if-nez v6, :cond_4

    :cond_3
    if-ne v1, v6, :cond_5

    cmp-long v0, v8, v17

    if-gez v0, :cond_5

    .line 60669
    :cond_4
    move v6, v1

    .line 60670
    move-wide/from16 v17, v8

    .line 60671
    move/from16 v16, v5

    .line 60672
    move-wide v14, v3

    .line 60673
    :cond_5
    cmp-long v0, v3, v12

    if-gez v0, :cond_0

    .line 60674
    move-wide v12, v3

    .line 60675
    move v11, v1

    .line 60676
    move v10, v5

    goto :goto_1

    .line 60677
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 60678
    .end local v11
    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v3, v12, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const-string v1, "2rf3IkD44HipF2iEZWYVpECLVHr0uALb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2zlrhAiZVnIklu1FhIrlCsqVaSaq97eM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_9

    if-eqz v11, :cond_9

    const-wide/32 v1, 0xa00000

    add-long/2addr v1, v12

    cmp-long v0, v14, v1

    if-gez v0, :cond_a

    .line 60679
    :cond_9
    :goto_3
    return v16

    .line 60680
    :cond_a
    move/from16 v16, v10

    goto :goto_3
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60681
    move-object/from16 v8, p0

    move-object/from16 v10, p1

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v5

    .line 60682
    .local v0, "inputPosition":J
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A06:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60683
    invoke-direct {v8, v5, v6}, Lcom/facebook/ads/redexgen/X/Vz;->A00(J)I

    move-result v0

    iput v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A06:I

    .line 60684
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A06:I

    if-ne v0, v1, :cond_0

    .line 60685
    return v1

    .line 60686
    :cond_0
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/Vz;->A0C:[Lcom/facebook/ads/redexgen/X/D5;

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A06:I

    aget-object v7, v1, v0

    .line 60687
    .local v10, "track":Lcom/facebook/ads/redexgen/X/D5;
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/D5;->A01:Lcom/facebook/ads/redexgen/X/Cb;

    .line 60688
    .local v7, "trackOutput":Lcom/facebook/ads/redexgen/X/Cb;
    iget v9, v7, Lcom/facebook/ads/redexgen/X/D5;->A00:I

    .line 60689
    .local v13, "sampleIndex":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DE;->A06:[J

    aget-wide v3, v0, v9

    .line 60690
    .local v1, "position":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DE;->A05:[I

    aget v2, v0, v9

    .line 60691
    .local v6, "sampleSize":I
    sub-long v0, v3, v5

    iget v5, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 60692
    .local v0, "skipAmount":J
    const-wide/16 v11, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v11

    if-ltz v6, :cond_1

    const-wide/32 v11, 0x40000

    cmp-long v6, v0, v11

    if-ltz v6, :cond_2

    .line 60693
    .end local v0    # "skipAmount":J
    .end local v1    # "position":J
    .restart local v3
    .restart local v2
    .end local v2
    .local v0, "position":J
    :cond_1
    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/facebook/ads/redexgen/X/CW;->A00:J

    .line 60694
    const/4 v0, 0x1

    return v0

    .line 60695
    :cond_2
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/D5;->A02:Lcom/facebook/ads/redexgen/X/DB;

    iget v3, v3, Lcom/facebook/ads/redexgen/X/DB;->A02:I

    if-ne v3, v5, :cond_3

    .line 60696
    const-wide/16 v3, 0x8

    add-long/2addr v0, v3

    .line 60697
    add-int/lit8 v2, v2, -0x8

    .line 60698
    .end local v0    # "position":J
    .local v0, "skipAmount":J
    :cond_3
    long-to-int v3, v0

    invoke-interface {v10, v3}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 60699
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/D5;->A02:Lcom/facebook/ads/redexgen/X/DB;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A01:I

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 60700
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A0G:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 60701
    .local v0, "nalLengthData":[B
    aput-byte v3, v1, v3

    .line 60702
    aput-byte v3, v1, v5

    .line 60703
    const/4 v0, 0x2

    aput-byte v3, v1, v0

    .line 60704
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/D5;->A02:Lcom/facebook/ads/redexgen/X/DB;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/DB;->A01:I

    .line 60705
    .local v5, "nalUnitLengthFieldLength":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/D5;->A02:Lcom/facebook/ads/redexgen/X/DB;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A01:I

    rsub-int/lit8 v3, v0, 0x4

    .line 60706
    .local v9, "nalUnitLengthFieldLengthDiff":I
    :goto_0
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    if-ge v0, v2, :cond_7

    .line 60707
    iget v1, v8, Lcom/facebook/ads/redexgen/X/Vz;->A05:I

    if-nez v1, :cond_4

    .line 60708
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A0G:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {v10, v0, v3, v4}, Lcom/facebook/ads/redexgen/X/CQ;->readFully([BII)V

    .line 60709
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A0G:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v1, 0x0

    .end local v0    # "nalLengthData":[B
    .local v3, "inputPosition":J
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60710
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A0G:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    iput v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A05:I

    .line 60711
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A0H:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60712
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A0H:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v1, 0x4

    invoke-interface {v13, v0, v1}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 60713
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    .line 60714
    add-int/2addr v2, v3

    goto :goto_0

    .line 60715
    .end local v3    # "inputPosition":J
    .restart local v0    # "nalLengthData":[B
    .end local v0    # "nalLengthData":[B
    .restart local v3    # "inputPosition":J
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/Cb;->AE3(Lcom/facebook/ads/redexgen/X/CQ;IZ)I

    move-result v1

    .line 60716
    .local v1, "writtenBytes":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    .line 60717
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A05:I

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A05:I

    .line 60718
    .end local v1    # "writtenBytes":I
    goto :goto_0

    .line 60719
    .end local v0
    .restart local v3    # "inputPosition":J
    :cond_5
    :goto_1
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    if-ge v0, v2, :cond_6

    .line 60720
    sub-int v1, v2, v0

    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/Cb;->AE3(Lcom/facebook/ads/redexgen/X/CQ;IZ)I

    move-result v1

    .line 60721
    .local v0, "writtenBytes":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    .line 60722
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A05:I

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A05:I

    .line 60723
    .end local v0    # "writtenBytes":I
    goto :goto_1

    .line 60724
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 60725
    .end local v3    # "inputPosition":J
    .restart local v0    # "writtenBytes":I
    .end local v0    # "writtenBytes":I
    .end local v5    # "nalUnitLengthFieldLength":I
    .end local v0
    .end local v9    # "nalUnitLengthFieldLengthDiff":I
    .restart local v3    # "inputPosition":J
    :cond_7
    const/4 v3, 0x0

    .line 60726
    .end local v6    # "sampleSize":I
    .local v0, "sampleSize":I
    :goto_2
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DE;->A07:[J

    aget-wide v14, v0, v9

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DE;->A04:[I

    aget v16, v0, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    .end local v0    # "sampleSize":I
    .local v0, "skipAmount":J
    .end local v1
    .local v2, "position":J
    move/from16 v17, v2

    invoke-interface/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 60727
    iget v1, v7, Lcom/facebook/ads/redexgen/X/D5;->A00:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v7, Lcom/facebook/ads/redexgen/X/D5;->A00:I

    .line 60728
    const/4 v0, -0x1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/Vz;->A06:I

    .line 60729
    iput v3, v8, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    .line 60730
    iput v3, v8, Lcom/facebook/ads/redexgen/X/Vz;->A05:I

    .line 60731
    return v3
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/DE;J)I
    .locals 2

    .line 60732
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/DE;->A00(J)I

    move-result v1

    .line 60733
    .local p0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 60734
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/DE;->A01(J)I

    move-result v1

    .line 60735
    :cond_0
    return v1
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/DE;JJ)J
    .locals 2

    .line 60736
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vz;->A02(Lcom/facebook/ads/redexgen/X/DE;J)I

    move-result v1

    .line 60737
    .local p0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 60738
    return-wide p3

    .line 60739
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DE;->A06:[J

    aget-wide v0, v0, v1

    .line 60740
    .local p0, "sampleOffset":J
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/CT;Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/W7;",
            "Lcom/facebook/ads/redexgen/X/CT;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/DE;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 60741
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60742
    .local p0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W7;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const-string v1, "cCqXKTxpaVHnB5xhxhubewm2proDizNi"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "XNMFZPcuybbaYtAFLaJvO7GLnY5oO3YZ"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-ge v2, v5, :cond_4

    .line 60743
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W7;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/W7;

    .line 60744
    .local p2, "atom":Lcom/facebook/ads/redexgen/X/W7;
    iget v1, v5, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1L:I

    if-eq v1, v0, :cond_1

    .line 60745
    .end local p2    # "atom":Lcom/facebook/ads/redexgen/X/W7;
    .end local v10
    .end local v3
    .end local v2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60746
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0n:I

    .line 60747
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0B:Z

    .line 60748
    move v10, p3

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Cv;->A0C(Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/W6;JLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/DB;

    move-result-object v4

    .line 60749
    .local v10, "track":Lcom/facebook/ads/redexgen/X/DB;
    if-nez v4, :cond_2

    goto :goto_1

    .line 60750
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0d:I

    .line 60751
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/W7;->A06(I)Lcom/facebook/ads/redexgen/X/W7;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0h:I

    .line 60752
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/W7;->A06(I)Lcom/facebook/ads/redexgen/X/W7;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A16:I

    .line 60753
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/W7;->A06(I)Lcom/facebook/ads/redexgen/X/W7;

    move-result-object v0

    .line 60754
    .local v3, "stblAtom":Lcom/facebook/ads/redexgen/X/W7;
    invoke-static {v4, v0, p2}, Lcom/facebook/ads/redexgen/X/Cv;->A0E(Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/CT;)Lcom/facebook/ads/redexgen/X/DE;

    move-result-object v1

    .line 60755
    .local v2, "trackSampleTable":Lcom/facebook/ads/redexgen/X/DE;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/DE;->A01:I

    if-nez v0, :cond_3

    goto :goto_1

    .line 60756
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60757
    .end local p1    # "i":I
    :cond_4
    return-object v3
.end method

.method private A06()V
    .locals 1

    .line 60758
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:I

    .line 60759
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    .line 60760
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[B

    return-void

    :array_0
    .array-data 1
        0x39t
        0xct
        0x17t
        0x15t
        0x58t
        0xbt
        0x11t
        0x2t
        0x1dt
        0x58t
        0x14t
        0x1dt
        0xbt
        0xbt
        0x58t
        0xct
        0x10t
        0x19t
        0x16t
        0x58t
        0x10t
        0x1dt
        0x19t
        0x1ct
        0x1dt
        0xat
        0x58t
        0x14t
        0x1dt
        0x16t
        0x1ft
        0xct
        0x10t
        0x58t
        0x50t
        0xdt
        0x16t
        0xbt
        0xdt
        0x8t
        0x8t
        0x17t
        0xat
        0xct
        0x1dt
        0x1ct
        0x51t
        0x56t
        0x4t
        0x1t
        0x55t
        0x55t
    .end array-data
.end method

.method private A08(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 60761
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/W7;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    .line 60762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/W7;

    .line 60763
    .local p0, "containerAtom":Lcom/facebook/ads/redexgen/X/W7;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cq;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0j:I

    if-ne v1, v0, :cond_1

    .line 60764
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Vz;->A0A(Lcom/facebook/ads/redexgen/X/W7;)V

    .line 60765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 60766
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:I

    goto :goto_0

    .line 60767
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/W7;->A08(Lcom/facebook/ads/redexgen/X/W7;)V

    goto :goto_0

    .line 60769
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:I

    if-eq v0, v3, :cond_3

    .line 60770
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A06()V

    .line 60771
    :cond_3
    return-void
.end method

.method private A09(J)V
    .locals 7

    .line 60772
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0C:[Lcom/facebook/ads/redexgen/X/D5;

    array-length v5, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v6, v4

    .line 60773
    .local v6, "track":Lcom/facebook/ads/redexgen/X/D5;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    .line 60774
    .local v5, "sampleTable":Lcom/facebook/ads/redexgen/X/DE;
    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/DE;->A00(J)I

    move-result v1

    .line 60775
    .local v4, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 60776
    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/DE;->A01(J)I

    move-result v1

    .line 60777
    :cond_0
    iput v1, v3, Lcom/facebook/ads/redexgen/X/D5;->A00:I

    .line 60778
    .end local v6    # "track":Lcom/facebook/ads/redexgen/X/D5;
    .end local v5    # "sampleTable":Lcom/facebook/ads/redexgen/X/DE;
    .end local v4    # "sampleIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60779
    :cond_1
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/W7;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 60780
    move-object/from16 v5, p0

    const/4 v12, -0x1

    .line 60781
    .local v2, "firstVideoTrackIndex":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 60782
    .local v12, "durationUs":J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 60783
    .local v6, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const/4 v11, 0x0

    .line 60784
    .local p0, "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    new-instance v8, Lcom/facebook/ads/redexgen/X/CT;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/CT;-><init>()V

    .line 60785
    .local v10, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/CT;
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1P:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/W7;->A07(I)Lcom/facebook/ads/redexgen/X/W6;

    move-result-object v1

    .line 60786
    .local v10, "udta":Lcom/facebook/ads/redexgen/X/W6;
    if-eqz v1, :cond_0

    .line 60787
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/Vz;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Cv;->A0F(Lcom/facebook/ads/redexgen/X/W6;Z)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v11

    .line 60788
    if-eqz v11, :cond_0

    .line 60789
    invoke-virtual {v8, v11}, Lcom/facebook/ads/redexgen/X/CT;->A05(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Z

    .line 60790
    .end local p0    # "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .local v11, "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    :cond_0
    iget v0, v5, Lcom/facebook/ads/redexgen/X/Vz;->A0E:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 60791
    .local v0, "ignoreEditLists":Z
    :goto_0
    :try_start_0
    invoke-direct {v5, v2, v8, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A05(Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/CT;Z)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/W3; {:try_start_0 .. :try_end_0} :catch_0

    .line 60792
    .end local p0
    .local p0, "e":Lcom/facebook/ads/redexgen/X/W3;
    :catch_0
    new-instance v8, Lcom/facebook/ads/redexgen/X/CT;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/CT;-><init>()V

    .line 60793
    invoke-direct {v5, v2, v8, v1}, Lcom/facebook/ads/redexgen/X/Vz;->A05(Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/CT;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 60794
    .local p0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 60795
    .local v1, "trackCount":I
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v6, v7, :cond_6

    .line 60796
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/ads/redexgen/X/DE;

    .line 60797
    .local v11, "trackSampleTable":Lcom/facebook/ads/redexgen/X/DE;
    iget-object v13, v15, Lcom/facebook/ads/redexgen/X/DE;->A03:Lcom/facebook/ads/redexgen/X/DB;

    .line 60798
    .local v11, "track":Lcom/facebook/ads/redexgen/X/DB;
    .end local p0    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .local v0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/CR;

    iget v0, v13, Lcom/facebook/ads/redexgen/X/DB;->A03:I

    .line 60799
    invoke-interface {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/D5;

    invoke-direct {v2, v13, v15, v0}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/DB;Lcom/facebook/ads/redexgen/X/DE;Lcom/facebook/ads/redexgen/X/Cb;)V

    .line 60800
    .local p0, "mp4Track":Lcom/facebook/ads/redexgen/X/D5;
    iget v0, v15, Lcom/facebook/ads/redexgen/X/DE;->A00:I

    add-int/lit8 v1, v0, 0x1e

    .line 60801
    .local v5, "maxInputSize":I
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/DB;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 60802
    .local v8, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v5    # "maxInputSize":I
    .local v1, "maxInputSize":I
    iget v14, v13, Lcom/facebook/ads/redexgen/X/DB;->A03:I

    const/4 v0, 0x1

    .end local v10    # "udta":Lcom/facebook/ads/redexgen/X/W6;
    .local v0, "udta":Lcom/facebook/ads/redexgen/X/W6;
    if-ne v14, v0, :cond_3

    .line 60803
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/CT;->A03()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60804
    iget v14, v8, Lcom/facebook/ads/redexgen/X/CT;->A00:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/CT;->A01:I

    .line 60805
    invoke-virtual {v1, v14, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G(II)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 60806
    :cond_2
    if-eqz v11, :cond_3

    .line 60807
    invoke-virtual {v1, v11}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 60808
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/D5;->A01:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 60809
    .end local v10
    .local v5, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/CT;
    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/DB;->A04:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v0, v16

    if-eqz v14, :cond_5

    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/DB;->A04:J

    .line 60810
    :goto_3
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 60811
    iget v1, v13, Lcom/facebook/ads/redexgen/X/DB;->A03:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    const/4 v0, -0x1

    if-ne v12, v0, :cond_4

    .line 60812
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 60813
    :cond_4
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60814
    .end local p0    # "mp4Track":Lcom/facebook/ads/redexgen/X/D5;
    .end local v8    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v11    # "track":Lcom/facebook/ads/redexgen/X/DB;
    .end local v11
    .end local v1    # "maxInputSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 60815
    :cond_5
    iget-wide v0, v15, Lcom/facebook/ads/redexgen/X/DE;->A02:J

    goto :goto_3

    .line 60816
    .end local v5    # "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/CT;
    .end local v0    # "udta":Lcom/facebook/ads/redexgen/X/W6;
    .end local v0
    .local p0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .restart local v10    # "udta":Lcom/facebook/ads/redexgen/X/W6;
    .restart local v10    # "udta":Lcom/facebook/ads/redexgen/X/W6;
    .end local p0    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .end local v0
    .restart local v0    # "udta":Lcom/facebook/ads/redexgen/X/W6;
    :cond_6
    iput v12, v5, Lcom/facebook/ads/redexgen/X/Vz;->A02:I

    .line 60817
    iput-wide v3, v5, Lcom/facebook/ads/redexgen/X/Vz;->A08:J

    .line 60818
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/D5;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/D5;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Vz;->A0C:[Lcom/facebook/ads/redexgen/X/D5;

    .line 60819
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Vz;->A0C:[Lcom/facebook/ads/redexgen/X/D5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0G([Lcom/facebook/ads/redexgen/X/D5;)[[J

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Vz;->A0D:[[J

    .line 60820
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 60821
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 60822
    return-void
.end method

.method public static A0B(I)Z
    .locals 4

    .line 60823
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0j:I

    if-eq p0, v0, :cond_0

    sget v3, Lcom/facebook/ads/redexgen/X/Cq;->A1L:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const-string v1, "xHWkCkmm9lwx55Xb6ilKRbCBaMi3tx91"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ufwmFaOIh4ETn2yFiF4b2v05oMaexVS8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0d:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0h:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A16:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0N:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(I)Z
    .locals 4

    .line 60824
    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0c:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0n:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0V:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1A:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1B:I

    if-eq p0, v0, :cond_1

    sget v3, Lcom/facebook/ads/redexgen/X/Cq;->A0C:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const-string v1, "WjfYMB7jPbcUwDvfNOpuH1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0O:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A19:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A17:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1J:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0U:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A1P:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60825
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 60826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v4, v6, v5}, Lcom/facebook/ads/redexgen/X/CQ;->ADI([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60827
    return v4

    .line 60828
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    .line 60829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    .line 60831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    .line 60832
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_8

    .line 60833
    const/16 v1, 0x8

    .line 60834
    .local p0, "headerBytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CQ;->readFully([BII)V

    .line 60835
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    .line 60836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    .line 60837
    .end local p0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_a

    .line 60838
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0B(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60839
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    add-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    .line 60840
    .local p0, "endPosition":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/W7;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/W7;-><init>(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 60841
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    int-to-long v1, v0

    cmp-long v0, v6, v1

    if-nez v0, :cond_3

    .line 60842
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Vz;->A08(J)V

    .line 60843
    :goto_1
    return v5

    .line 60844
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A06()V

    goto :goto_1

    .line 60845
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60846
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    if-ne v0, v6, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 60847
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v1, v7

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 60848
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    long-to-int v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    .line 60849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60850
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:I

    goto :goto_1

    .line 60851
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 60852
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 60853
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    .line 60854
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:I

    goto :goto_1

    .line 60855
    :cond_8
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 60856
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A6p()J

    move-result-wide v2

    .line 60857
    .local v5, "endPosition":J
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 60858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/W7;->A00:J

    .line 60859
    :cond_9
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 60860
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    goto/16 :goto_0

    .line 60861
    :cond_a
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60862
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 60863
    .local p0, "atomPayloadSize":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 60864
    .local p2, "atomEndPosition":J
    const/4 v8, 0x0

    .line 60865
    .local v4, "seekRequired":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    if-eqz v0, :cond_3

    .line 60866
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    long-to-int v0, v4

    invoke-interface {p1, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->readFully([BII)V

    .line 60867
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Cq;->A0U:I

    if-ne v1, v0, :cond_2

    .line 60868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0F(Lcom/facebook/ads/redexgen/X/IV;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0B:Z

    .line 60869
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/Vz;->A08(J)V

    .line 60870
    if-eqz v8, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 60871
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/W7;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    new-instance v0, Lcom/facebook/ads/redexgen/X/W6;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/W6;-><init>(ILcom/facebook/ads/redexgen/X/IV;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/W7;->A09(Lcom/facebook/ads/redexgen/X/W6;)V

    goto :goto_0

    .line 60873
    :cond_3
    const-wide/32 v6, 0x40000

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    .line 60874
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    goto :goto_0

    .line 60875
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/CW;->A00:J

    .line 60876
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/IV;)Z
    .locals 3

    .line 60877
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60878
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    .line 60879
    .local p0, "majorBrand":I
    sget v0, Lcom/facebook/ads/redexgen/X/Vz;->A0M:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 60880
    return v2

    .line 60881
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 60882
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    if-lez v0, :cond_2

    .line 60883
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Vz;->A0M:I

    if-ne v1, v0, :cond_1

    .line 60884
    return v2

    .line 60885
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static A0G([Lcom/facebook/ads/redexgen/X/D5;)[[J
    .locals 14

    .line 60886
    array-length v0, p0

    new-array v6, v0, [[J

    .line 60887
    .local p0, "accumulatedSampleSizes":[[J
    array-length v0, p0

    new-array v5, v0, [I

    .line 60888
    .local v0, "nextSampleIndex":[I
    array-length v0, p0

    new-array v4, v0, [J

    .line 60889
    .local v6, "nextSampleTimesUs":[J
    array-length v0, p0

    new-array v3, v0, [Z

    .line 60890
    .local v0, "tracksFinished":[Z
    const/4 v2, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 60891
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DE;->A01:I

    new-array v0, v0, [J

    aput-object v0, v6, v2

    .line 60892
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DE;->A07:[J

    const/4 v0, 0x0

    aget-wide v0, v1, v0

    aput-wide v0, v4, v2

    .line 60893
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60894
    .end local v5    # "i":I
    :cond_0
    const-wide/16 v12, 0x0

    .line 60895
    .local v5, "accumulatedSampleSize":J
    const/4 v2, 0x0

    .line 60896
    .local v4, "finishedTracks":I
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_4

    .line 60897
    const-wide v10, 0x7fffffffffffffffL

    .line 60898
    .local v0, "minTimeUs":J
    const/4 v9, -0x1

    .line 60899
    .local v2, "minTimeTrackIndex":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_2
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 60900
    aget-boolean v0, v3, v1

    if-nez v0, :cond_1

    aget-wide v7, v4, v1

    cmp-long v0, v7, v10

    if-gtz v0, :cond_1

    .line 60901
    move v9, v1

    .line 60902
    aget-wide v10, v4, v1

    .line 60903
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 60904
    .end local v0    # "i":I
    :cond_2
    aget v7, v5, v9

    .line 60905
    .local v0, "trackSampleIndex":I
    aget-object v0, v6, v9

    aput-wide v12, v0, v7

    .line 60906
    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DE;->A05:[I

    aget v0, v0, v7

    int-to-long v0, v0

    add-long/2addr v12, v0

    .line 60907
    const/4 v1, 0x1

    add-int/2addr v7, v1

    aput v7, v5, v9

    .line 60908
    aget-object v0, v6, v9

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 60909
    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DE;->A07:[J

    aget-wide v0, v0, v7

    aput-wide v0, v4, v9

    goto :goto_1

    .line 60910
    :cond_3
    aput-boolean v1, v3, v9

    .line 60911
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60912
    :cond_4
    return-object v6
.end method


# virtual methods
.method public final A6O()J
    .locals 2

    .line 60913
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A08:J

    return-wide v0
.end method

.method public final A7I(J)Lcom/facebook/ads/redexgen/X/CX;
    .locals 18

    .line 60914
    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/Vz;->A0C:[Lcom/facebook/ads/redexgen/X/D5;

    array-length v0, v1

    if-nez v0, :cond_0

    .line 60915
    sget-object v1, Lcom/facebook/ads/redexgen/X/CZ;->A04:Lcom/facebook/ads/redexgen/X/CZ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;)V

    return-object v0

    .line 60916
    :cond_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 60917
    .local v8, "secondTimeUs":J
    const-wide/16 v4, -0x1

    .line 60918
    .local v1, "secondOffset":J
    iget v0, v11, Lcom/facebook/ads/redexgen/X/Vz;->A02:I

    const/4 v14, -0x1

    move-wide/from16 v8, p1

    if-eq v0, v14, :cond_1

    .line 60919
    aget-object v0, v1, v0

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    .line 60920
    .local v11, "sampleTable":Lcom/facebook/ads/redexgen/X/DE;
    invoke-static {v13, v8, v9}, Lcom/facebook/ads/redexgen/X/Vz;->A02(Lcom/facebook/ads/redexgen/X/DE;J)I

    move-result v12

    .line 60921
    .local v1, "sampleIndex":I
    if-ne v12, v14, :cond_4

    .line 60922
    sget-object v1, Lcom/facebook/ads/redexgen/X/CZ;->A04:Lcom/facebook/ads/redexgen/X/CZ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;)V

    return-object v0

    .line 60923
    .end local v13
    .end local v14
    :cond_1
    move-wide v0, v8

    .line 60924
    .restart local v13
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .line 60925
    :cond_2
    sget-object v16, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const-string v15, "wZC6PUUkwbL39FGS7qgHi4"

    const/4 v10, 0x4

    aput-object v15, v16, v10

    const-string v15, "ISWp"

    const/4 v10, 0x6

    aput-object v15, v16, v10

    move/from16 v10, v17

    if-ge v12, v10, :cond_3

    .line 60926
    invoke-virtual {v13, v8, v9}, Lcom/facebook/ads/redexgen/X/DE;->A01(J)I

    move-result v8

    .line 60927
    .local v6, "secondSampleIndex":I
    if-eq v8, v14, :cond_3

    if-eq v8, v12, :cond_3

    .line 60928
    iget-object v4, v13, Lcom/facebook/ads/redexgen/X/DE;->A07:[J

    aget-wide v6, v4, v8

    .line 60929
    iget-object v4, v13, Lcom/facebook/ads/redexgen/X/DE;->A06:[J

    aget-wide v4, v4, v8

    .line 60930
    .restart local v14
    :cond_3
    :goto_0
    const/4 v10, 0x0

    .end local v14
    .local v11, "i":I
    .local v1, "firstOffset":J
    .local v1, "secondOffset":J
    :goto_1
    iget-object v9, v11, Lcom/facebook/ads/redexgen/X/Vz;->A0C:[Lcom/facebook/ads/redexgen/X/D5;

    sget-object v12, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v12, v12, v8

    const/16 v8, 0x1c

    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v8, 0x6c

    if-eq v12, v8, :cond_5

    goto :goto_2

    .line 60931
    :cond_4
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/DE;->A07:[J

    aget-wide v0, v0, v12

    .line 60932
    .local v11, "sampleTimeUs":J
    .local v13, "firstTimeUs":J
    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/DE;->A06:[J

    aget-wide v2, v2, v12

    .line 60933
    .local v14, "firstOffset":J
    cmp-long v10, v0, v8

    if-gez v10, :cond_3

    iget v10, v13, Lcom/facebook/ads/redexgen/X/DE;->A01:I

    add-int/lit8 v17, v10, -0x1

    sget-object v15, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v15, v15, v10

    const/16 v10, 0x1c

    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v10, 0x6c

    if-eq v15, v10, :cond_2

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v13, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const-string v12, "HuKpkwhwNffVsg1qOYm34WvQGcpzf7CA"

    const/4 v8, 0x2

    aput-object v12, v13, v8

    const-string v12, "OpSxQ7AB5KpfVVm82hohcPrOWAs1xSas"

    const/4 v8, 0x3

    aput-object v12, v13, v8

    array-length v8, v9

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v8, :cond_7

    .line 60934
    iget v8, v11, Lcom/facebook/ads/redexgen/X/Vz;->A02:I

    if-eq v10, v8, :cond_6

    .line 60935
    aget-object v8, v9, v10

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/DE;

    .line 60936
    .local v6, "sampleTable":Lcom/facebook/ads/redexgen/X/DE;
    invoke-static {v9, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Vz;->A03(Lcom/facebook/ads/redexgen/X/DE;JJ)J

    move-result-wide v2

    .line 60937
    cmp-long v8, v6, v12

    if-eqz v8, :cond_6

    .line 60938
    invoke-static {v9, v6, v7, v4, v5}, Lcom/facebook/ads/redexgen/X/Vz;->A03(Lcom/facebook/ads/redexgen/X/DE;JJ)J

    move-result-wide v4

    .line 60939
    .end local v6    # "sampleTable":Lcom/facebook/ads/redexgen/X/DE;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 60940
    .end local v11    # "sampleTimeUs":J
    :cond_7
    new-instance v8, Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/CZ;-><init>(JJ)V

    .line 60941
    .local v11, "firstSeekPoint":Lcom/facebook/ads/redexgen/X/CZ;
    cmp-long v0, v6, v12

    if-nez v0, :cond_8

    .line 60942
    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;)V

    return-object v0

    .line 60943
    :cond_8
    new-instance v1, Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct {v1, v6, v7, v4, v5}, Lcom/facebook/ads/redexgen/X/CZ;-><init>(JJ)V

    .line 60944
    .local v6, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/CZ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, v8, v1}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;Lcom/facebook/ads/redexgen/X/CZ;)V

    return-object v0
.end method

.method public final A8A(Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 0

    .line 60945
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/CR;

    .line 60946
    return-void
.end method

.method public final A8Y()Z
    .locals 1

    .line 60947
    const/4 v0, 0x1

    return v0
.end method

.method public final ADD(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60948
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0K:[Ljava/lang/String;

    const-string v1, "qJxbwGisfZf9YKIw0pjhTsx78598m8MK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "kX2rligkfJBBB9teOSCW5LaSmFhGBJWo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    if-eq v3, v1, :cond_2

    const/4 v0, 0x2

    if-ne v3, v0, :cond_4

    .line 60949
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vz;->A01(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I

    move-result v0

    return v0

    .line 60950
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vz;->A0E(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60951
    return v1

    .line 60952
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vz;->A0D(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60953
    const/4 v0, -0x1

    return v0

    .line 60954
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final AE9(JJ)V
    .locals 3

    .line 60955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 60956
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    .line 60957
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A06:I

    .line 60958
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:I

    .line 60959
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A05:I

    .line 60960
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 60961
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A06()V

    .line 60962
    :cond_0
    :goto_0
    return-void

    .line 60963
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0C:[Lcom/facebook/ads/redexgen/X/D5;

    if-eqz v0, :cond_0

    .line 60964
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/Vz;->A09(J)V

    goto :goto_0
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60965
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/D9;->A04(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    return v0
.end method
