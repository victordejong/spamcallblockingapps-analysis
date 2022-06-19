.class public final Lcom/facebook/ads/redexgen/X/AQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:Lcom/facebook/ads/redexgen/X/FL;

.field public final A05:Z

.field public final A06:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FL;JJJJZZ)V
    .locals 0

    .line 21822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21823
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 21824
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    .line 21825
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    .line 21826
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/AQ;->A00:J

    .line 21827
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    .line 21828
    iput-boolean p10, p0, Lcom/facebook/ads/redexgen/X/AQ;->A06:Z

    .line 21829
    iput-boolean p11, p0, Lcom/facebook/ads/redexgen/X/AQ;->A05:Z

    .line 21830
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 13

    .line 21831
    new-instance v1, Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 21832
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FL;->A00(I)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/AQ;->A00:J

    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/AQ;->A06:Z

    iget-boolean v12, p0, Lcom/facebook/ads/redexgen/X/AQ;->A05:Z

    invoke-direct/range {v1 .. v12}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Lcom/facebook/ads/redexgen/X/FL;JJJJZZ)V

    .line 21833
    return-object v1
.end method

.method public final A01(J)Lcom/facebook/ads/redexgen/X/AQ;
    .locals 12

    .line 21834
    new-instance v0, Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AQ;->A00:J

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/AQ;->A06:Z

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/AQ;->A05:Z

    move-wide v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Lcom/facebook/ads/redexgen/X/FL;JJJJZZ)V

    return-object v0
.end method
