.class public Lcom/facebook/ads/redexgen/X/2F;
.super Lcom/facebook/ads/redexgen/X/Eq;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 5008
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Eq;-><init>(Landroid/content/Context;)V

    .line 5009
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2F;->setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 5010
    return-void
.end method

.method private setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 3

    .line 5016
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/be;

    invoke-direct {v2, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/be;-><init>(Landroid/content/Context;IZ)V

    .line 5017
    .local p0, "linearLayoutManager":Lcom/facebook/ads/redexgen/X/be;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 5018
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4M;->A1V(Z)V

    .line 5019
    :cond_0
    invoke-super {p0, v2}, Lcom/facebook/ads/redexgen/X/Eq;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4M;)V

    .line 5020
    return-void
.end method


# virtual methods
.method public getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/Rg;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/4A;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Rg;

    if-eqz v0, :cond_0

    .line 5012
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/4A;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rg;

    return-object v0

    .line 5013
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLayoutManager()Lcom/facebook/ads/redexgen/X/4M;
    .locals 1

    .line 5014
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2F;->getLayoutManager()Lcom/facebook/ads/redexgen/X/be;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/facebook/ads/redexgen/X/be;
    .locals 1

    .line 5015
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/be;

    return-object v0
.end method

.method public setLayoutManager(Lcom/facebook/ads/redexgen/X/4M;)V
    .locals 0

    .line 5021
    return-void
.end method
