.class public final Lcom/facebook/ads/redexgen/X/QB;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/I4;->A05(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/I4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/I4;)V
    .locals 0

    .line 49658
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 49659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I4;->A06(Lcom/facebook/ads/redexgen/X/I4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I4;->A00(Lcom/facebook/ads/redexgen/X/I4;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0L(Landroid/view/View;)V

    .line 49661
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I4;->A00(Lcom/facebook/ads/redexgen/X/I4;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 49662
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I4;->A03(Lcom/facebook/ads/redexgen/X/I4;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    .line 49663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I4;->A01(Lcom/facebook/ads/redexgen/X/I4;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I4;->A01(Lcom/facebook/ads/redexgen/X/I4;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 49665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/I4;->A02(Lcom/facebook/ads/redexgen/X/I4;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 49666
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 49667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I4;->A06(Lcom/facebook/ads/redexgen/X/I4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I4;->A00(Lcom/facebook/ads/redexgen/X/I4;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 49669
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I4;->A03(Lcom/facebook/ads/redexgen/X/I4;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    .line 49670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I4;->A01(Lcom/facebook/ads/redexgen/X/I4;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I4;->A01(Lcom/facebook/ads/redexgen/X/I4;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 49672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/I4;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/I4;->A02(Lcom/facebook/ads/redexgen/X/I4;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 49673
    :cond_1
    return-void
.end method
