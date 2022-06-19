.class public final Lcom/facebook/ads/redexgen/X/NZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Na;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public final A07:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 45730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45731
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NZ;->A01:J

    .line 45732
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NZ;->A03:J

    .line 45733
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NZ;->A04:J

    .line 45734
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NZ;->A00:J

    .line 45735
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NZ;->A05:J

    .line 45736
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NZ;->A02:J

    .line 45737
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NZ;->A06:J

    .line 45738
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NZ;->A07:Ljava/lang/String;

    .line 45739
    return-void
.end method


# virtual methods
.method public final A00(J)Lcom/facebook/ads/redexgen/X/NZ;
    .locals 0

    .line 45740
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NZ;->A00:J

    .line 45741
    return-object p0
.end method

.method public final A01(J)Lcom/facebook/ads/redexgen/X/NZ;
    .locals 0

    .line 45742
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NZ;->A01:J

    .line 45743
    return-object p0
.end method

.method public final A02(J)Lcom/facebook/ads/redexgen/X/NZ;
    .locals 0

    .line 45744
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NZ;->A02:J

    .line 45745
    return-object p0
.end method

.method public final A03(J)Lcom/facebook/ads/redexgen/X/NZ;
    .locals 0

    .line 45746
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NZ;->A03:J

    .line 45747
    return-object p0
.end method

.method public final A04(J)Lcom/facebook/ads/redexgen/X/NZ;
    .locals 0

    .line 45748
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NZ;->A04:J

    .line 45749
    return-object p0
.end method

.method public final A05(J)Lcom/facebook/ads/redexgen/X/NZ;
    .locals 0

    .line 45750
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NZ;->A05:J

    .line 45751
    return-object p0
.end method

.method public final A06(J)Lcom/facebook/ads/redexgen/X/NZ;
    .locals 0

    .line 45752
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NZ;->A06:J

    .line 45753
    return-object p0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/Na;
    .locals 19

    .line 45754
    move-object/from16 v0, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Na;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/NZ;->A07:Ljava/lang/String;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/NZ;->A01:J

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/NZ;->A03:J

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/NZ;->A04:J

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/NZ;->A00:J

    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/NZ;->A05:J

    iget-wide v14, v0, Lcom/facebook/ads/redexgen/X/NZ;->A02:J

    move-object v2, v2

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/NZ;->A06:J

    const/16 v18, 0x0

    move-wide/from16 v16, v0

    invoke-direct/range {v2 .. v18}, Lcom/facebook/ads/redexgen/X/Na;-><init>(Ljava/lang/String;JJJJJJJLcom/facebook/ads/redexgen/X/NY;)V

    return-object v2
.end method
