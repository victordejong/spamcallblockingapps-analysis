.class public final Lcom/facebook/ads/redexgen/X/F9;
.super Lcom/facebook/ads/redexgen/X/cl;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/18;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/18;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tj;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/XT;",
            ")V"
        }
    .end annotation

    .line 32992
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/cl;-><init>(Lcom/facebook/ads/redexgen/X/18;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 32993
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/F9;->A00:Lcom/facebook/ads/redexgen/X/XT;

    .line 32994
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/TA;
    .locals 2

    .line 32995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A00:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ma;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ma;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/TA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/TA;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4e;
    .locals 1

    .line 32996
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F9;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/TA;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4e;I)V
    .locals 0

    .line 32997
    check-cast p1, Lcom/facebook/ads/redexgen/X/TA;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F9;->A0H(Lcom/facebook/ads/redexgen/X/TA;I)V

    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/TA;I)V
    .locals 4

    .line 32998
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/cl;->A0H(Lcom/facebook/ads/redexgen/X/TA;I)V

    .line 32999
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TA;->A0l()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ma;

    .line 33000
    .local p0, "cardView":Lcom/facebook/ads/redexgen/X/Ma;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ma;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Mm;

    .line 33001
    .local p1, "imageView":Lcom/facebook/ads/redexgen/X/Mm;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mm;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33002
    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/cl;->A0F(Landroid/widget/ImageView;I)V

    .line 33003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cl;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Tj;

    .line 33004
    .local p2, "childAd":Lcom/facebook/ads/redexgen/X/Tj;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Tj;->A10()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A00:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XT;->A0F(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 33005
    invoke-virtual {v2, v3, v3}, Lcom/facebook/ads/redexgen/X/Tj;->A1M(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    .line 33006
    return-void
.end method
