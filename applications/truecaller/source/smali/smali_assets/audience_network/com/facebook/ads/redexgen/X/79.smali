.class public final Lcom/facebook/ads/redexgen/X/79;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 16584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16585
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/79;->A00:Landroid/os/Handler;

    .line 16586
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/7A;)V
    .locals 1

    .line 16587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/79;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16588
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/7A;)V
    .locals 1

    .line 16589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/79;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16590
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/7A;J)Z
    .locals 1

    .line 16591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/79;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method
