.class public final Lcom/facebook/ads/redexgen/X/OQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SK;->A0P(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 47190
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 47191
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 47192
    .local p0, "value":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A02(Lcom/facebook/ads/redexgen/X/SK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A02(Lcom/facebook/ads/redexgen/X/SK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 47194
    return-void
.end method
