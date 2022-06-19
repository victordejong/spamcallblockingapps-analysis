.class public final Lcom/facebook/ads/redexgen/X/bb;
.super Lcom/facebook/ads/redexgen/X/46;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/46;->A01(Lcom/facebook/ads/redexgen/X/4M;)Lcom/facebook/ads/redexgen/X/46;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4M;)V
    .locals 1

    .line 69418
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/46;-><init>(Lcom/facebook/ads/redexgen/X/4M;Lcom/facebook/ads/redexgen/X/bc;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 69419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0X()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 69420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0X()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 69421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0d()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 69422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0Y()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 69423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0g()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 69424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0X()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    .line 69425
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    .line 69426
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 69427
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4N;

    .line 69428
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4N;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0j(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4N;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 69429
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4N;

    .line 69430
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4N;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0l(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4N;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4N;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 69431
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4N;

    .line 69432
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4N;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0m(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4N;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4N;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 69433
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4N;

    .line 69434
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4N;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0o(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4N;->topMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 69435
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/46;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 69436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 69437
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/46;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 69438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 69439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A02:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A10(I)V

    .line 69440
    return-void
.end method
