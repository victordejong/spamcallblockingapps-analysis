.class public final Lcom/facebook/ads/redexgen/X/Ag;
.super Lcom/facebook/ads/redexgen/X/bd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CenterSmoothScroller"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Aa;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Aa;Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 22300
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ag;->A00:Lcom/facebook/ads/redexgen/X/Aa;

    .line 22301
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/bd;-><init>(Landroid/content/Context;)V

    .line 22302
    return-void
.end method


# virtual methods
.method public final A0J(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 22303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ag;->A00:Lcom/facebook/ads/redexgen/X/Aa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Aa;->A02(Lcom/facebook/ads/redexgen/X/Aa;)F

    move-result v1

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public final A0K()I
    .locals 1

    .line 22304
    const/4 v0, -0x1

    return v0
.end method

.method public final A0O(Landroid/view/View;I)I
    .locals 8

    .line 22305
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A08()Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v2

    .line 22306
    .local p0, "layoutManager":Lcom/facebook/ads/redexgen/X/4M;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4M;->A24()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22307
    const/4 v0, 0x0

    return v0

    .line 22308
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4N;

    .line 22309
    .local p1, "params":Lcom/facebook/ads/redexgen/X/4N;
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0k(Landroid/view/View;)I

    move-result v3

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4N;->leftMargin:I

    sub-int/2addr v3, v0

    .line 22310
    .local v7, "left":I
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0n(Landroid/view/View;)I

    move-result v4

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4N;->rightMargin:I

    add-int/2addr v4, v0

    .line 22311
    .local v2, "right":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4M;->A0e()I

    move-result v5

    .line 22312
    .local v3, "start":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4M;->A0h()I

    move-result v6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4M;->A0f()I

    move-result v0

    sub-int/2addr v6, v0

    .line 22313
    .local v4, "end":I
    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/bd;->A0N(IIIII)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ag;->A00:Lcom/facebook/ads/redexgen/X/Aa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Aa;->A03(Lcom/facebook/ads/redexgen/X/Aa;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0P(I)Landroid/graphics/PointF;
    .locals 1

    .line 22314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ag;->A00:Lcom/facebook/ads/redexgen/X/Aa;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/be;->A43(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
