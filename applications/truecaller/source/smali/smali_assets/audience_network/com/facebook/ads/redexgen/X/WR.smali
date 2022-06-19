.class public final Lcom/facebook/ads/redexgen/X/WR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CQ;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:[B

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/HR;

.field public final A06:[B


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HR;JJ)V
    .locals 1

    .line 63024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63025
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WR;->A05:Lcom/facebook/ads/redexgen/X/HR;

    .line 63026
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:J

    .line 63027
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/WR;->A04:J

    .line 63028
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    .line 63029
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A06:[B

    .line 63030
    return-void
.end method

.method private A00(I)I
    .locals 1

    .line 63031
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63032
    .local p0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WR;->A05(I)V

    .line 63033
    return v0
.end method

.method private A01([BII)I
    .locals 3

    .line 63034
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 63035
    return v2

    .line 63036
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 63037
    .local p0, "peekBytes":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63038
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/WR;->A05(I)V

    .line 63039
    return v1
.end method

.method private A02([BIIIZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63040
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A05:Lcom/facebook/ads/redexgen/X/HR;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HR;->read([BII)I

    move-result v1

    .line 63042
    .local p0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 63043
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 63044
    return v0

    .line 63045
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 63046
    :cond_1
    add-int/2addr p4, v1

    return p4

    .line 63047
    .end local p0    # "bytesRead":I
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private A03(I)V
    .locals 4

    .line 63048
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 63049
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:J

    .line 63050
    :cond_0
    return-void
.end method

.method private A04(I)V
    .locals 4

    .line 63051
    iget v3, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    add-int/2addr v3, p1

    .line 63052
    .local p0, "requiredLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    array-length v0, v1

    if-le v3, v0, :cond_0

    .line 63053
    array-length v0, v1

    mul-int/lit8 v2, v0, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v3

    const/high16 v0, 0x80000

    add-int/2addr v0, v3

    .line 63054
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A06(III)I

    move-result v1

    .line 63055
    .local p1, "newPeekCapacity":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    .line 63056
    .end local p1    # "newPeekCapacity":I
    :cond_0
    return-void
.end method

.method private A05(I)V
    .locals 5

    .line 63057
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:I

    .line 63058
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    .line 63059
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    .line 63060
    .local p1, "newPeekBuffer":[B
    iget v2, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    array-length v1, v0

    const/high16 v0, 0x80000

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_0

    .line 63061
    const/high16 v0, 0x10000

    add-int/2addr v2, v0

    new-array v3, v2, [B

    .line 63062
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:I

    invoke-static {v1, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63063
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    .line 63064
    return-void
.end method


# virtual methods
.method public final A06(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63065
    move v3, p1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/WR;->A04(I)V

    .line 63066
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 63067
    .local p0, "bytesPeeked":I
    :cond_0
    if-ge v4, v3, :cond_1

    .line 63068
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    .line 63069
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WR;->A02([BIIIZ)I

    move-result v4

    .line 63070
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 63071
    const/4 v0, 0x0

    return v0

    .line 63072
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    .line 63073
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:I

    .line 63074
    const/4 v0, 0x1

    return v0
.end method

.method public final A07(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63075
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WR;->A00(I)I

    move-result v4

    .line 63076
    .local p0, "bytesSkipped":I
    :goto_0
    const/4 v0, -0x1

    if-ge v4, p1, :cond_0

    if-eq v4, v0, :cond_0

    .line 63077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A06:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 63078
    .local v0, "minLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A06:[B

    neg-int v2, v4

    .line 63079
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WR;->A02([BIIIZ)I

    move-result v4

    .line 63080
    .end local v0    # "minLength":I
    goto :goto_0

    .line 63081
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/WR;->A03(I)V

    .line 63082
    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final A3J(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63083
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A06(IZ)Z

    .line 63084
    return-void
.end method

.method public final A6p()J
    .locals 2

    .line 63085
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A04:J

    return-wide v0
.end method

.method public final A74()J
    .locals 4

    .line 63086
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A79()J
    .locals 2

    .line 63087
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:J

    return-wide v0
.end method

.method public final ACp([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63088
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/WR;->ACq([BIIZ)Z

    .line 63089
    return-void
.end method

.method public final ACq([BIIZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63090
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/WR;->A06(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63091
    const/4 v0, 0x0

    return v0

    .line 63092
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    sub-int/2addr v0, p3

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63093
    const/4 v0, 0x1

    return v0
.end method

.method public final ADI([BIIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63094
    move v2, p2

    move-object v1, p1

    move v3, p3

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/WR;->A01([BII)I

    move-result v4

    .line 63095
    .local p0, "bytesRead":I
    :goto_0
    const/4 v0, -0x1

    if-ge v4, v3, :cond_0

    if-eq v4, v0, :cond_0

    .line 63096
    move-object v0, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WR;->A02([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 63097
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/WR;->A03(I)V

    .line 63098
    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final ADr()V
    .locals 1

    .line 63099
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:I

    .line 63100
    return-void
.end method

.method public final AEe(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63101
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WR;->A00(I)I

    move-result v0

    .line 63102
    .local p0, "bytesSkipped":I
    if-nez v0, :cond_0

    .line 63103
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A06:[B

    const/4 v2, 0x0

    array-length v0, v1

    .line 63104
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WR;->A02([BIIIZ)I

    move-result v0

    .line 63105
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WR;->A03(I)V

    .line 63106
    return v0
.end method

.method public final AEh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A07(IZ)Z

    .line 63108
    return-void
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63109
    move v2, p2

    move v3, p3

    move-object v1, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/WR;->A01([BII)I

    move-result v0

    .line 63110
    .local p0, "bytesRead":I
    if-nez v0, :cond_0

    .line 63111
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WR;->A02([BIIIZ)I

    move-result v0

    .line 63112
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WR;->A03(I)V

    .line 63113
    return v0
.end method

.method public final readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/WR;->ADI([BIIZ)Z

    .line 63115
    return-void
.end method
