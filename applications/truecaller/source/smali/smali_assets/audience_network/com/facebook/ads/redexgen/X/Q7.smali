.class public final Lcom/facebook/ads/redexgen/X/Q7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/I5;->A08(Z)V
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

    .line 49615
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 49616
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/I5;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A05(Lcom/facebook/ads/redexgen/X/I5;Z)V

    .line 49617
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 49618
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/I5;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A02(Lcom/facebook/ads/redexgen/X/I5;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 49619
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q7;->A00:Lcom/facebook/ads/redexgen/X/I5;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A04(Lcom/facebook/ads/redexgen/X/I5;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    .line 49620
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 49621
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 49622
    return-void
.end method
