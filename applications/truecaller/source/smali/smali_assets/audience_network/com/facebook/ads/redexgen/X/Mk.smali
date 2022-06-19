.class public abstract Lcom/facebook/ads/redexgen/X/Mk;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pk;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Po;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 44782
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44783
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 44784
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44785
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44786
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44787
    return-void
.end method


# virtual methods
.method public A07()V
    .locals 0

    .line 44788
    return-void
.end method

.method public A08()V
    .locals 0

    .line 44789
    return-void
.end method

.method public final A8f(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 0

    .line 44790
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mk;->A00:Lcom/facebook/ads/redexgen/X/Po;

    .line 44791
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()V

    .line 44792
    return-void
.end method

.method public final AF4(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 1

    .line 44793
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A08()V

    .line 44794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mk;->A00:Lcom/facebook/ads/redexgen/X/Po;

    .line 44795
    return-void
.end method

.method public getVideoView()Lcom/facebook/ads/redexgen/X/Po;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 44796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mk;->A00:Lcom/facebook/ads/redexgen/X/Po;

    return-object v0
.end method
