.class public final Lcom/facebook/ads/redexgen/X/QC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hz;->A06(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Hz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hz;II)V
    .locals 0

    .line 49674
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Hz;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/QC;->A01:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/QC;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 49675
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Hz;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/QC;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/QC;->A01:I

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A08(Lcom/facebook/ads/redexgen/X/Hz;IIZ)V

    .line 49676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A01(Lcom/facebook/ads/redexgen/X/Hz;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A01(Lcom/facebook/ads/redexgen/X/Hz;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 49678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Hz;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A02(Lcom/facebook/ads/redexgen/X/Hz;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 49679
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 49680
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Hz;

    .line 49681
    iget v1, p0, Lcom/facebook/ads/redexgen/X/QC;->A01:I

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hz;->A00(Lcom/facebook/ads/redexgen/X/Hz;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 49682
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    .line 49683
    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A03(Lcom/facebook/ads/redexgen/X/Hz;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    .line 49684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A01(Lcom/facebook/ads/redexgen/X/Hz;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A01(Lcom/facebook/ads/redexgen/X/Hz;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 49686
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Hz;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A02(Lcom/facebook/ads/redexgen/X/Hz;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 49687
    :cond_0
    return-void

    .line 49688
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 49689
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 49690
    return-void
.end method
