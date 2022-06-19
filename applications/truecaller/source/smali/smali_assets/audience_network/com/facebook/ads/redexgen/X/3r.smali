.class public final Lcom/facebook/ads/redexgen/X/3r;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ev;->A0W(Lcom/facebook/ads/redexgen/X/3t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/3t;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Ev;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ev;Lcom/facebook/ads/redexgen/X/3t;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 10316
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3r;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3r;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3r;->A01:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/3r;->A00:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 10317
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3r;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 10318
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3r;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3r;->A00:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 10320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3r;->A00:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 10321
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3r;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3r;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/3t;->A05:Lcom/facebook/ads/redexgen/X/4e;

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A0Q(Lcom/facebook/ads/redexgen/X/4e;Z)V

    .line 10322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3r;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ev;->A02:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3r;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3t;->A05:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3r;->A03:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A0V()V

    .line 10324
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 10325
    return-void
.end method
