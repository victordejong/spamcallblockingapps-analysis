.class public Lcom/facebook/ads/redexgen/X/b7;
.super Lcom/facebook/ads/redexgen/X/57;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdLayoutApi;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/NativeAdLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68547
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/57;-><init>()V

    .line 68548
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A01:I

    .line 68549
    iput v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:I

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 68550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 68551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b7;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->removeView(Landroid/view/View;)V

    .line 68552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A02:Landroid/view/View;

    .line 68553
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/N1;)V
    .locals 2

    .line 68554
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b7;->A02:Landroid/view/View;

    .line 68555
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/N1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 68557
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b7;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 68558
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 68559
    return-object p0
.end method

.method public final initialize(Lcom/facebook/ads/NativeAdLayout;)V
    .locals 0

    .line 68560
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b7;->A03:Lcom/facebook/ads/NativeAdLayout;

    .line 68561
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 68562
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/57;->onMeasure(II)V

    .line 68563
    iget v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:I

    if-le v0, v1, :cond_1

    .line 68564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/57;->setMeasuredDimension(II)V

    .line 68565
    :cond_0
    :goto_0
    return-void

    .line 68566
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/b7;->A01:I

    if-ge v0, v1, :cond_0

    .line 68567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/57;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final setMaxWidth(I)V
    .locals 0

    .line 68568
    iput p1, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:I

    .line 68569
    return-void
.end method

.method public final setMinWidth(I)V
    .locals 0

    .line 68570
    iput p1, p0, Lcom/facebook/ads/redexgen/X/b7;->A01:I

    .line 68571
    return-void
.end method
