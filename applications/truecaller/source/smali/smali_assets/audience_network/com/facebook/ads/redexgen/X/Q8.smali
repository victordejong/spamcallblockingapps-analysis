.class public final Lcom/facebook/ads/redexgen/X/Q8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/I5;->A07(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/I5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/I5;)V
    .locals 0

    .line 49623
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 49624
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A06(Lcom/facebook/ads/redexgen/X/I5;Z)V

    .line 49625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I5;->A01(Lcom/facebook/ads/redexgen/X/I5;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I5;->A01(Lcom/facebook/ads/redexgen/X/I5;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 49627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A02(Lcom/facebook/ads/redexgen/X/I5;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 49628
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 49629
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A04(Lcom/facebook/ads/redexgen/X/I5;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    .line 49630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I5;->A03(Lcom/facebook/ads/redexgen/X/I5;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 49631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I5;->A01(Lcom/facebook/ads/redexgen/X/I5;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I5;->A01(Lcom/facebook/ads/redexgen/X/I5;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 49633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Lcom/facebook/ads/redexgen/X/I5;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A02(Lcom/facebook/ads/redexgen/X/I5;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 49634
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 49635
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 49636
    return-void
.end method
