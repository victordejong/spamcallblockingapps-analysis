.class public final Lcom/facebook/ads/redexgen/X/Dr;
.super Lcom/facebook/ads/redexgen/X/XT;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;Lcom/facebook/ads/redexgen/X/0U;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/redexgen/X/0U;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29600
    if-nez p3, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fd;-><init>()V

    .line 29601
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/XT;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 29602
    return-void

    .line 29603
    :cond_0
    invoke-interface {p3}, Lcom/facebook/ads/redexgen/X/0U;->A9I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A0D()Lcom/facebook/ads/redexgen/X/0R;
    .locals 1

    .line 29604
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/dF;
    .locals 1

    .line 29605
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/dF;

    return-object v0
.end method
