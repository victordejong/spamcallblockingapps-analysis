.class public final Lcom/facebook/ads/redexgen/X/3q;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ev;->A0Y(Lcom/facebook/ads/redexgen/X/4e;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Landroid/view/View;

.field public final synthetic A03:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/Ev;

.field public final synthetic A05:Lcom/facebook/ads/redexgen/X/4e;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ev;Lcom/facebook/ads/redexgen/X/4e;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 10304
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3q;->A04:Lcom/facebook/ads/redexgen/X/Ev;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3q;->A05:Lcom/facebook/ads/redexgen/X/4e;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/3q;->A00:I

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/3q;->A02:Landroid/view/View;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/3q;->A01:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/3q;->A03:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 10305
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A00:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 10307
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A01:I

    if-eqz v0, :cond_1

    .line 10308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 10309
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 10310
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3q;->A03:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 10311
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3q;->A04:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A05:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A0O(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 10312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A04:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ev;->A04:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A05:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A04:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A0V()V

    .line 10314
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 10315
    return-void
.end method
