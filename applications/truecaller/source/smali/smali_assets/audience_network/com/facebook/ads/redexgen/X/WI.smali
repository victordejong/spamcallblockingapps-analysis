.class public final Lcom/facebook/ads/redexgen/X/WI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/extractor/flv/FlvExtractor$States;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/CS;

.field public static final A0I:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/CR;

.field public A07:Lcom/facebook/ads/redexgen/X/WK;

.field public A08:Lcom/facebook/ads/redexgen/X/WF;

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/WH;

.field public final A0B:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0C:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0D:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0E:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "F9KwQMNMxiTjkayDhPM6gvDLkPvUNcLn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Em4FZTw9NeUBCVsnasMEsqdbQrmSbGq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tDq5h6G1X4d5RY1LfaFLZXWqT85DrCya"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "B5R7X"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Zp00UWtElOmikRSXEs37FpNUTZ5eWL9Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wqRNyyxlEoRi9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    .line 62734
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WI;->A03()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WJ;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WI;->A0H:Lcom/facebook/ads/redexgen/X/CS;

    .line 62735
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WI;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/WI;->A0I:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62737
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    .line 62738
    const/16 v1, 0x9

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0B:Lcom/facebook/ads/redexgen/X/IV;

    .line 62739
    const/16 v1, 0xb

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    .line 62740
    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    .line 62741
    new-instance v0, Lcom/facebook/ads/redexgen/X/WH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0A:Lcom/facebook/ads/redexgen/X/WH;

    .line 62742
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A01:I

    .line 62743
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A04:J

    .line 62744
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CQ;)Lcom/facebook/ads/redexgen/X/IV;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62745
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A05()I

    move-result v0

    const/4 v3, 0x0

    if-le v1, v0, :cond_0

    .line 62746
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WI;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IV;->A05()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A02:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0b([BI)V

    .line 62747
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0X(I)V

    .line 62748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A02:I

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/CQ;->readFully([BII)V

    .line 62749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    return-object v0

    .line 62750
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WI;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 5

    .line 62751
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A09:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    .line 62752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/CR;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/WN;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 62753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A09:Z

    .line 62754
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A04:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 62755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0A:Lcom/facebook/ads/redexgen/X/WH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WH;->A0D()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WI;->A05:J

    neg-long v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A04:J

    .line 62756
    :cond_1
    return-void

    .line 62757
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WI;->A0F:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x75t
        -0x6ft
        -0x65t
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/CQ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62758
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A00:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 62759
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A00:I

    .line 62760
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A01:I

    .line 62761
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0B:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/16 v4, 0x9

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/CQ;->ADI([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62763
    return v6

    .line 62764
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WI;->A0B:Lcom/facebook/ads/redexgen/X/IV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    const-string v1, "xxv79KM5VyarLmUhQqEOMlbbyGFtPWOG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "n0W8PrJEyrqWl4lCbLWkK9bcjvpbO2Fn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 62765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0B:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 62766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0B:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v2

    .line 62767
    .local p0, "flags":I
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 62768
    .local v6, "hasAudio":Z
    :goto_0
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 62769
    .local v0, "hasVideo":Z
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/WK;

    if-nez v0, :cond_2

    .line 62770
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/CR;

    const/16 v0, 0x8

    .line 62771
    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/WK;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WK;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/WK;

    .line 62772
    :cond_2
    const/4 v2, 0x2

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/WF;

    if-nez v0, :cond_3

    .line 62773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/CR;

    .line 62774
    invoke-interface {v0, v4, v2}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/WF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WF;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/WF;

    .line 62775
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 62776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0B:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A00:I

    .line 62777
    iput v2, p0, Lcom/facebook/ads/redexgen/X/WI;->A01:I

    .line 62778
    return v3

    .line 62779
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62780
    const/4 v6, 0x1

    .line 62781
    .local p0, "wasConsumed":Z
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/WK;

    if-eqz v0, :cond_1

    .line 62782
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WI;->A02()V

    .line 62783
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/WK;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WI;->A00(Lcom/facebook/ads/redexgen/X/CQ;)Lcom/facebook/ads/redexgen/X/IV;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WI;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A05:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Cd;->A00(Lcom/facebook/ads/redexgen/X/IV;J)V

    .line 62784
    :cond_0
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A00:I

    .line 62785
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A01:I

    .line 62786
    return v6

    .line 62787
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:I

    const/16 v0, 0x9

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/WF;

    if-eqz v0, :cond_2

    .line 62788
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WI;->A02()V

    .line 62789
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/WF;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WI;->A00(Lcom/facebook/ads/redexgen/X/CQ;)Lcom/facebook/ads/redexgen/X/IV;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WI;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A05:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Cd;->A00(Lcom/facebook/ads/redexgen/X/IV;J)V

    goto :goto_0

    .line 62790
    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:I

    const/16 v0, 0x12

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A09:Z

    if-nez v0, :cond_3

    .line 62791
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WI;->A0A:Lcom/facebook/ads/redexgen/X/WH;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WI;->A00(Lcom/facebook/ads/redexgen/X/CQ;)Lcom/facebook/ads/redexgen/X/IV;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A05:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Cd;->A00(Lcom/facebook/ads/redexgen/X/IV;J)V

    .line 62792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0A:Lcom/facebook/ads/redexgen/X/WH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WH;->A0D()J

    move-result-wide v2

    .line 62793
    .local p1, "durationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 62794
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/CR;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/WN;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 62795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A09:Z

    goto :goto_0

    .line 62796
    :cond_3
    iget v3, p0, Lcom/facebook/ads/redexgen/X/WI;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    const-string v1, "mShHrd4Vu2jNkvRJUK8UrhhXjzgbGKl1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 62797
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xb

    invoke-interface {p1, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/CQ;->ADI([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62799
    return v1

    .line 62800
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 62801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:I

    .line 62802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0G()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A02:I

    .line 62803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0G()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A05:J

    .line 62804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A05:J

    or-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/WI;->A05:J

    .line 62805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A0E:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 62806
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A01:I

    .line 62807
    return v4
.end method


# virtual methods
.method public final A8A(Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 0

    .line 62808
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/CR;

    .line 62809
    return-void
.end method

.method public final ADD(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62810
    :cond_0
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/WI;->A01:I

    const/4 v0, 0x1

    const/4 v4, -0x1

    if-eq v5, v0, :cond_3

    const/4 v0, 0x2

    if-eq v5, v0, :cond_2

    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    const-string v1, "ncW0XwKX3pgCRaaT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_1

    const/4 v0, 0x4

    if-ne v5, v0, :cond_5

    .line 62811
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WI;->A06(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62812
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    const-string v1, "5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 62813
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WI;->A07(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62814
    return v4

    .line 62815
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WI;->A04(Lcom/facebook/ads/redexgen/X/CQ;)V

    .line 62816
    goto :goto_0

    .line 62817
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WI;->A05(Lcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62818
    return v4

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/WI;->A0G:[Ljava/lang/String;

    const-string v1, "DR5iBP2XCUKx659t"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 62819
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AE9(JJ)V
    .locals 2

    .line 62820
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A01:I

    .line 62821
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A04:J

    .line 62822
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A00:I

    .line 62823
    return-void
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 62825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 62826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/WI;->A0I:I

    if-eq v1, v0, :cond_0

    .line 62827
    return v2

    .line 62828
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v0, 0x2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 62829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 62830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    .line 62831
    return v2

    .line 62832
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 62833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 62834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    .line 62835
    .local p0, "dataOffset":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 62836
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 62837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 62838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 62839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
