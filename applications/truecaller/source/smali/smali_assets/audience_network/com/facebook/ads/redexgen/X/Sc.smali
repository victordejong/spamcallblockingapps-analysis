.class public final Lcom/facebook/ads/redexgen/X/Sc;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ns;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ns;)V
    .locals 0

    .line 52339
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 52340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A05(Lcom/facebook/ads/redexgen/X/Ns;)V

    .line 52341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A06(Lcom/facebook/ads/redexgen/X/Ns;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A00(Lcom/facebook/ads/redexgen/X/Ns;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A01(Lcom/facebook/ads/redexgen/X/Ns;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52343
    :cond_0
    return-void
.end method
