.class public final Lcom/facebook/ads/redexgen/X/Q9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/I5;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/I5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/I5;Landroid/view/View;)V
    .locals 0

    .line 49637
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A01:Lcom/facebook/ads/redexgen/X/I5;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 49638
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 49639
    .local p0, "value":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 49640
    .local p1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49642
    return-void
.end method
