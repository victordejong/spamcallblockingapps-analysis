.class public final Lcom/facebook/ads/redexgen/X/QE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ht;->A08(Z)V
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

    .line 49701
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QE;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 49702
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QE;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ht;->A07(Lcom/facebook/ads/redexgen/X/Ht;Z)V

    .line 49703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QE;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ht;->A05(Lcom/facebook/ads/redexgen/X/Ht;)V

    .line 49704
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 49705
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QE;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ht;->A03(Lcom/facebook/ads/redexgen/X/Ht;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    .line 49706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QE;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ht;->A02(Lcom/facebook/ads/redexgen/X/Ht;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 49707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QE;->A00:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ht;->A05(Lcom/facebook/ads/redexgen/X/Ht;)V

    .line 49708
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 49709
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 49710
    return-void
.end method
