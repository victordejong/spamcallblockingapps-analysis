.class public Lcom/facebook/ads/redexgen/X/F1;
.super Lcom/facebook/ads/redexgen/X/br;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi16Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32780
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/br;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03(Landroid/view/View;)I
    .locals 1

    .line 32781
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public final A05(Landroid/view/View;)I
    .locals 1

    .line 32782
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final A06(Landroid/view/View;)I
    .locals 1

    .line 32783
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final A0A(Landroid/view/View;)V
    .locals 0

    .line 32784
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 32785
    return-void
.end method

.method public A0C(Landroid/view/View;I)V
    .locals 1

    .line 32786
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 32787
    const/4 p2, 0x2

    .line 32788
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 32789
    return-void
.end method

.method public final A0D(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 32790
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32791
    return-void
.end method

.method public final A0G(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 32792
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 32793
    return-void
.end method

.method public final A0H(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    .line 32794
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 32795
    return-void
.end method

.method public final A0I(Landroid/view/View;)Z
    .locals 1

    .line 32796
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method
