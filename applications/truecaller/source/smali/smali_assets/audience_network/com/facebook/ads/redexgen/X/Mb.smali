.class public final Lcom/facebook/ads/redexgen/X/Mb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/T4;->A0W(Lcom/facebook/ads/redexgen/X/52;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/52;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/T4;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/T4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T4;Lcom/facebook/ads/redexgen/X/T4;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 0

    .line 44694
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mb;->A01:Lcom/facebook/ads/redexgen/X/T4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Mb;->A02:Lcom/facebook/ads/redexgen/X/T4;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 44695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mb;->A01:Lcom/facebook/ads/redexgen/X/T4;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/T4;->A0Q(Lcom/facebook/ads/redexgen/X/T4;Z)Z

    .line 44696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A02:Lcom/facebook/ads/redexgen/X/T4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 44697
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 44698
    .local p0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/T7;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/T7;-><init>(Lcom/facebook/ads/redexgen/X/Mb;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44699
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 44700
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 44701
    return-void
.end method
