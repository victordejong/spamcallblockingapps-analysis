.class public final Lcom/facebook/ads/redexgen/X/3p;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ev;->A0X(Lcom/facebook/ads/redexgen/X/4e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ev;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/4e;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ev;Lcom/facebook/ads/redexgen/X/4e;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 10295
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3p;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3p;->A03:Lcom/facebook/ads/redexgen/X/4e;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Landroid/view/View;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/3p;->A01:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 10296
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10297
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 10298
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3p;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 10299
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3p;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A03:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A0N(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 10300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A03:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A0V()V

    .line 10302
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 10303
    return-void
.end method
