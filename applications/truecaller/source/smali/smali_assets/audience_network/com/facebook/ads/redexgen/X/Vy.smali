.class public final Lcom/facebook/ads/redexgen/X/Vy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OggSeekMap"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Vx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vx;)V
    .locals 0

    .line 60631
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Vx;Lcom/facebook/ads/redexgen/X/DF;)V
    .locals 0

    .line 60632
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vy;-><init>(Lcom/facebook/ads/redexgen/X/Vx;)V

    return-void
.end method


# virtual methods
.method public final A6O()J
    .locals 3

    .line 60633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vx;->A08(Lcom/facebook/ads/redexgen/X/Vx;)Lcom/facebook/ads/redexgen/X/DL;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vx;->A05(Lcom/facebook/ads/redexgen/X/Vx;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A03(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7I(J)Lcom/facebook/ads/redexgen/X/CX;
    .locals 7

    .line 60634
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    .line 60635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vx;->A04(Lcom/facebook/ads/redexgen/X/Vx;)J

    move-result-wide v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/CZ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;)V

    return-object v0

    .line 60636
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vx;->A08(Lcom/facebook/ads/redexgen/X/Vx;)Lcom/facebook/ads/redexgen/X/DL;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A04(J)J

    move-result-wide v3

    .line 60637
    .local p1, "granule":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vx;->A04(Lcom/facebook/ads/redexgen/X/Vx;)J

    move-result-wide v1

    const-wide/16 v5, 0x7530

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Vx;->A06(Lcom/facebook/ads/redexgen/X/Vx;JJJ)J

    move-result-wide v2

    .line 60638
    .local p0, "estimatedPosition":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/facebook/ads/redexgen/X/CZ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;)V

    return-object v0
.end method

.method public final A8Y()Z
    .locals 1

    .line 60639
    const/4 v0, 0x1

    return v0
.end method
