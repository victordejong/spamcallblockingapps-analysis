.class public final Lcom/facebook/ads/redexgen/X/W8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/W9;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/CS;

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/CR;

.field public A05:Lcom/facebook/ads/redexgen/X/Cb;

.field public A06:Lcom/facebook/ads/redexgen/X/W9;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

.field public final A08:I

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/CT;

.field public final A0B:Lcom/facebook/ads/redexgen/X/CU;

.field public final A0C:Lcom/facebook/ads/redexgen/X/CV;

.field public final A0D:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ydp2W5xsf3wxxmCItZRtLRLpaCcQN61V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZzeQ67WJ6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MfxT7BiZm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QAZkmCdKFAHfN7ilsO4NsWCm7AIOdsAB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uXA2W"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sq6CLgUZZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GhmTF3RrY3ydpwpSZCJZy8aIHeXkOr61"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "710SvX7FP4z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0F:[Ljava/lang/String;

    .line 61743
    invoke-static {}, Lcom/facebook/ads/redexgen/X/W8;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WA;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/W8;->A0G:Lcom/facebook/ads/redexgen/X/CS;

    .line 61744
    const/16 v2, 0x20

    const/4 v1, 0x4

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/W8;->A0J:I

    .line 61745
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/W8;->A0H:I

    .line 61746
    const/16 v2, 0x1c

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/W8;->A0I:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61747
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W8;-><init>(I)V

    .line 61748
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 61749
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/W8;-><init>(IJ)V

    .line 61750
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 61751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61752
    iput p1, p0, Lcom/facebook/ads/redexgen/X/W8;->A08:I

    .line 61753
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/W8;->A09:J

    .line 61754
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    .line 61755
    new-instance v0, Lcom/facebook/ads/redexgen/X/CV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    .line 61756
    new-instance v0, Lcom/facebook/ads/redexgen/X/CT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CT;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0A:Lcom/facebook/ads/redexgen/X/CT;

    .line 61757
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:J

    .line 61758
    new-instance v0, Lcom/facebook/ads/redexgen/X/CU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CU;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0B:Lcom/facebook/ads/redexgen/X/CU;

    .line 61759
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CQ;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61760
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5

    .line 61761
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 61762
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0F:[Ljava/lang/String;

    const-string v1, "k6Z5PTGWNQqxWVGEWp2g14fMjsllqw2H"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "hJNgcdrxKvM79jF48EqDHnrsGOClnbxU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v0, 0x4

    invoke-interface {p1, v1, v4, v0, v6}, Lcom/facebook/ads/redexgen/X/CQ;->ACq([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61763
    return v5

    .line 61764
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v2

    .line 61766
    .local p0, "sampleHeaderData":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/W8;->A06(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61767
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/CV;->A00(I)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 61768
    :cond_1
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61769
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    .line 61770
    return v4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61771
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/CV;->A04(ILcom/facebook/ads/redexgen/X/CV;)Z

    .line 61772
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v7

    if-nez v2, :cond_4

    .line 61773
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A06:Lcom/facebook/ads/redexgen/X/W9;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/W9;->A7X(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:J

    .line 61774
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A09:J

    cmp-long v2, v0, v7

    if-eqz v2, :cond_4

    .line 61775
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A06:Lcom/facebook/ads/redexgen/X/W9;

    const-wide/16 v0, 0x0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/W9;->A7X(J)J

    move-result-wide v7

    .line 61776
    .local v5, "embeddedFirstSampleTimestampUs":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A09:J

    sub-long/2addr v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:J

    .line 61777
    .end local v5    # "embeddedFirstSampleTimestampUs":J
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    .line 61778
    .end local p0    # "sampleHeaderData":I
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    invoke-interface {v1, p1, v0, v6}, Lcom/facebook/ads/redexgen/X/Cb;->AE3(Lcom/facebook/ads/redexgen/X/CQ;IZ)I

    move-result v1

    .line 61779
    .local p0, "bytesAppended":I
    if-ne v1, v5, :cond_6

    .line 61780
    return v5

    .line 61781
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    .line 61782
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    if-lez v0, :cond_7

    .line 61783
    return v4

    .line 61784
    :cond_7
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A03:J

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A03:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    add-long/2addr v6, v2

    .line 61785
    .local p1, "timeUs":J
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/W8;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/CV;->A02:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 61786
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A04:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A03:J

    .line 61787
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    .line 61788
    return v4
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IV;I)I
    .locals 2

    .line 61789
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v1

    add-int/lit8 v0, p1, 0x4

    if-lt v1, v0, :cond_1

    .line 61790
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61791
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    .line 61792
    .local p0, "headerData":I
    sget v0, Lcom/facebook/ads/redexgen/X/W8;->A0J:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/W8;->A0H:I

    if-ne v1, v0, :cond_1

    .line 61793
    :cond_0
    return v1

    .line 61794
    .end local p0    # "headerData":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v1

    const/16 v0, 0x28

    if-lt v1, v0, :cond_2

    .line 61795
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61796
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/W8;->A0I:I

    if-ne v1, v0, :cond_2

    .line 61797
    return v0

    .line 61798
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/CQ;)Lcom/facebook/ads/redexgen/X/W9;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 61800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CV;->A04(ILcom/facebook/ads/redexgen/X/CV;)Z

    .line 61802
    new-instance v0, Lcom/facebook/ads/redexgen/X/D6;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A6p()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/D6;-><init>(JJLcom/facebook/ads/redexgen/X/CV;)V

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/CQ;)Lcom/facebook/ads/redexgen/X/W9;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A02:I

    new-instance v9, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    .line 61804
    .local p0, "frame":Lcom/facebook/ads/redexgen/X/IV;
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A02:I

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 61805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A05:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x15

    if-eqz v0, :cond_3

    .line 61806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A01:I

    if-eq v0, v1, :cond_0

    const/16 v2, 0x24

    .line 61807
    .local p1, "xingBase":I
    :cond_0
    :goto_0
    invoke-static {v9, v2}, Lcom/facebook/ads/redexgen/X/W8;->A01(Lcom/facebook/ads/redexgen/X/IV;I)I

    move-result v1

    .line 61808
    .local v0, "seekHeader":I
    sget v0, Lcom/facebook/ads/redexgen/X/W8;->A0J:I

    if-eq v1, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/W8;->A0H:I

    if-ne v1, v0, :cond_5

    .line 61809
    .end local v0    # "seekHeader":I
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A6p()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/D0;->A01(JJLcom/facebook/ads/redexgen/X/CV;Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/D0;

    move-result-object v4

    .line 61810
    .restart local v0    # "seekHeader":I
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0A:Lcom/facebook/ads/redexgen/X/CT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CT;->A03()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61811
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 61812
    add-int/lit16 v0, v2, 0x8d

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 61813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v0, 0x3

    invoke-interface {p1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 61814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61815
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A0A:Lcom/facebook/ads/redexgen/X/CT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0G()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/CT;->A04(I)Z

    .line 61816
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61817
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/D0;->A8Y()Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/facebook/ads/redexgen/X/W8;->A0H:I

    if-ne v1, v0, :cond_6

    .line 61818
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A02(Lcom/facebook/ads/redexgen/X/CQ;)Lcom/facebook/ads/redexgen/X/W9;

    move-result-object v0

    return-object v0

    .line 61819
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A01:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0xd

    goto :goto_0

    .line 61820
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/W8;->A0I:I

    if-ne v1, v0, :cond_7

    .line 61821
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A6p()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/D4;->A00(JJLcom/facebook/ads/redexgen/X/CV;Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/D4;

    move-result-object v4

    .line 61822
    .local v0, "seeker":Lcom/facebook/ads/redexgen/X/W9;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61823
    :cond_6
    :goto_1
    return-object v4

    .line 61824
    .end local v0    # "seeker":Lcom/facebook/ads/redexgen/X/W9;
    :cond_7
    const/4 v4, 0x0

    .line 61825
    .restart local v0    # "seeker":Lcom/facebook/ads/redexgen/X/W9;
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    goto :goto_1
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0E:[B

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

.method public static A05()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W8;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x52t
        0x5at
        0x53t
        0x61t
        0x57t
        0x53t
        0x40t
        0x51t
        0x5at
        0x57t
        0x56t
        0x12t
        0x46t
        0x5dt
        0x5dt
        0x12t
        0x5ft
        0x53t
        0x5ct
        0x4bt
        0x12t
        0x50t
        0x4bt
        0x46t
        0x57t
        0x41t
        0x1ct
        0x0t
        0x14t
        0x4t
        0x1ft
        0xbt
        0x3at
        0x3dt
        0x34t
    .end array-data
.end method

.method public static A06(IJ)Z
    .locals 4

    .line 61826
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v3, v0

    const-wide/32 v1, -0x1f400

    and-long/2addr v1, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/CQ;Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61827
    const/4 v6, 0x0

    .line 61828
    .local p0, "validFrameCount":I
    const/4 v8, 0x0

    .line 61829
    .local p1, "candidateSynchronizedHeaderData":I
    const/4 v5, 0x0

    .line 61830
    .local p2, "peekedId3Bytes":I
    const/4 v7, 0x0

    .line 61831
    .local v6, "searchedBytes":I
    if-eqz p2, :cond_10

    const/16 v4, 0x4000

    .line 61832
    .local v8, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 61833
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v11

    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    cmp-long v0, v11, v9

    if-nez v0, :cond_1

    .line 61834
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A08:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 61835
    .local v5, "onlyDecodeGaplessInfoFrames":Z
    :goto_1
    if-eqz v0, :cond_e

    sget-object v1, Lcom/facebook/ads/redexgen/X/CT;->A04:Lcom/facebook/ads/redexgen/X/EF;

    .line 61836
    .local v7, "id3FramePredicate":Lcom/facebook/ads/redexgen/X/EF;
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0B:Lcom/facebook/ads/redexgen/X/CU;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CU;->A00(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/EF;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    .line 61837
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_0

    .line 61838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0A:Lcom/facebook/ads/redexgen/X/CT;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/CT;->A05(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Z

    .line 61839
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A74()J

    move-result-wide v0

    long-to-int v5, v0

    .line 61840
    if-nez p2, :cond_1

    .line 61841
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61842
    .end local v5    # "onlyDecodeGaplessInfoFrames":Z
    .end local v7    # "id3FramePredicate":Lcom/facebook/ads/redexgen/X/EF;
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    if-lez v6, :cond_d

    const/4 v0, 0x1

    :goto_4
    const/4 v11, 0x4

    invoke-interface {p1, v1, v3, v11, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACq([BIIZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 61843
    .end local v5
    .end local v11
    :goto_5
    if-eqz p2, :cond_2

    .line 61844
    add-int/2addr v5, v7

    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 61845
    :goto_6
    iput v8, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    .line 61846
    return v2

    .line 61847
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    goto :goto_6

    .line 61848
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v9

    .line 61850
    .local v5, "headerData":I
    if-eqz v8, :cond_6

    int-to-long v0, v8

    .line 61851
    invoke-static {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/W8;->A06(IJ)Z

    move-result v12

    sget-object v10, Lcom/facebook/ads/redexgen/X/W8;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v10, v0

    const/4 v0, 0x5

    aget-object v0, v10, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v10, Lcom/facebook/ads/redexgen/X/W8;->A0F:[Ljava/lang/String;

    const-string v1, "nssPeb4tx"

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const-string v1, "z93zYtEja"

    const/4 v0, 0x5

    aput-object v1, v10, v0

    if-eqz v12, :cond_7

    .line 61852
    :cond_6
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/CV;->A00(I)I

    move-result v10

    .local v11, "frameSize":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_8

    .line 61853
    .end local v11    # "frameSize":I
    :cond_7
    add-int/lit8 v1, v7, 0x1

    .end local v6    # "searchedBytes":I
    .local v7, "searchedBytes":I
    if-ne v7, v4, :cond_b

    .line 61854
    if-eqz p2, :cond_11

    .line 61855
    return v3

    .line 61856
    .end local v7    # "searchedBytes":I
    .restart local v6    # "searchedBytes":I
    .restart local v5    # "headerData":I
    .restart local v11    # "frameSize":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 61857
    if-ne v6, v2, :cond_a

    .line 61858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/CV;->A04(ILcom/facebook/ads/redexgen/X/CV;)Z

    sget-object v8, Lcom/facebook/ads/redexgen/X/W8;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v8, v0

    const/4 v0, 0x4

    aget-object v0, v8, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 61859
    sget-object v8, Lcom/facebook/ads/redexgen/X/W8;->A0F:[Ljava/lang/String;

    const-string v1, "7zrNMK9WlizC5ZgtVSnCLN45BdGxm2zl"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v1, "9rqhFN3Qk74SkJ0Nh6RYQs7QnFKhXl33"

    const/4 v0, 0x6

    aput-object v1, v8, v0

    move v8, v9

    .line 61860
    .restart local v5    # "headerData":I
    .restart local v11    # "frameSize":I
    :cond_9
    add-int/lit8 v0, v10, -0x4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    goto/16 :goto_3

    .line 61861
    :cond_a
    if-ne v6, v11, :cond_9

    goto/16 :goto_5

    .line 61862
    :cond_b
    const/4 v6, 0x0

    .line 61863
    const/4 v8, 0x0

    .line 61864
    if-eqz p2, :cond_c

    .line 61865
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 61866
    add-int v0, v5, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 61867
    .end local v5    # "headerData":I
    :goto_7
    move v7, v1

    goto/16 :goto_3

    .line 61868
    :cond_c
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    goto :goto_7

    .line 61869
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 61870
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 61871
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 61872
    :cond_10
    const/high16 v4, 0x20000

    goto/16 :goto_0

    .line 61873
    :cond_11
    const/4 v2, 0x4

    const/16 v1, 0x18

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A8A(Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 3

    .line 61874
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W8;->A04:Lcom/facebook/ads/redexgen/X/CR;

    .line 61875
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A04:Lcom/facebook/ads/redexgen/X/CR;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    .line 61876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A04:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 61877
    return-void
.end method

.method public final ADD(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61878
    move-object/from16 v1, p0

    move-object v1, v1

    iget v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    move-object/from16 v0, p1

    if-nez v2, :cond_0

    .line 61879
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/W8;->A07(Lcom/facebook/ads/redexgen/X/CQ;Z)Z

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61880
    .local v1, "e":Ljava/io/EOFException;
    :catch_0
    const/4 v0, -0x1

    return v0

    .line 61881
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A06:Lcom/facebook/ads/redexgen/X/W9;

    if-nez v2, :cond_4

    .line 61882
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A03(Lcom/facebook/ads/redexgen/X/CQ;)Lcom/facebook/ads/redexgen/X/W9;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A06:Lcom/facebook/ads/redexgen/X/W9;

    .line 61883
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A06:Lcom/facebook/ads/redexgen/X/W9;

    if-eqz v2, :cond_1

    .line 61884
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/CY;->A8Y()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A08:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 61885
    :cond_1
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A02(Lcom/facebook/ads/redexgen/X/CQ;)Lcom/facebook/ads/redexgen/X/W9;

    move-result-object v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/W8;->A0F:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v4, v2

    const/4 v2, 0x5

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/W8;->A0F:[Ljava/lang/String;

    const-string v3, "vRoDRHRtSRtNnEEJ64K4r5ogXxosELXw"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    iput-object v5, v1, Lcom/facebook/ads/redexgen/X/W8;->A06:Lcom/facebook/ads/redexgen/X/W9;

    .line 61886
    :cond_3
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/W8;->A04:Lcom/facebook/ads/redexgen/X/CR;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A06:Lcom/facebook/ads/redexgen/X/W9;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 61887
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/W8;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    const/4 v4, 0x0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/CV;->A06:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x1000

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v9, v2, Lcom/facebook/ads/redexgen/X/CV;->A01:I

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/CV;

    iget v10, v2, Lcom/facebook/ads/redexgen/X/CV;->A03:I

    const/4 v11, -0x1

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A0A:Lcom/facebook/ads/redexgen/X/CT;

    iget v12, v2, Lcom/facebook/ads/redexgen/X/CT;->A00:I

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A0A:Lcom/facebook/ads/redexgen/X/CT;

    iget v13, v2, Lcom/facebook/ads/redexgen/X/CT;->A01:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 61888
    iget v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A08:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 61889
    :goto_1
    const/16 v16, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v4 .. v18}, Lcom/facebook/ads/internal/exoplayer2/Format;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 61890
    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 61891
    :cond_4
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A00(Lcom/facebook/ads/redexgen/X/CQ;)I

    move-result v0

    return v0

    .line 61892
    :cond_5
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/W8;->A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    goto :goto_1
.end method

.method public final AE9(JJ)V
    .locals 3

    .line 61893
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    .line 61894
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:J

    .line 61895
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A03:J

    .line 61896
    iput v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    .line 61897
    return-void
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61898
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A07(Lcom/facebook/ads/redexgen/X/CQ;Z)Z

    move-result v0

    return v0
.end method
