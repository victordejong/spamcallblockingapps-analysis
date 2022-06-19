.class public final Lcom/facebook/ads/redexgen/X/QD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ht;->A09(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ht;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ht;)V
    .locals 0

    .line 49691
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 49692
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ht;->A06(Lcom/facebook/ads/redexgen/X/Ht;Z)V

    .line 49693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ht;->A05(Lcom/facebook/ads/redexgen/X/Ht;)V

    .line 49694
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 49695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ht;->A01(Lcom/facebook/ads/redexgen/X/Ht;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 49696
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ht;->A03(Lcom/facebook/ads/redexgen/X/Ht;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    .line 49697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ht;->A05(Lcom/facebook/ads/redexgen/X/Ht;)V

    .line 49698
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 49699
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 49700
    return-void
.end method
