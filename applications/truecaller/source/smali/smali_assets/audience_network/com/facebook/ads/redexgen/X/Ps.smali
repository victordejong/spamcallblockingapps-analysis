.class public final Lcom/facebook/ads/redexgen/X/Ps;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Po;->A0H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Po;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 0

    .line 49282
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 49283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0T(Lcom/facebook/ads/redexgen/X/Po;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getCurrentPositionInMillis()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7t;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A07(Lcom/facebook/ads/redexgen/X/Po;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A06(Lcom/facebook/ads/redexgen/X/Po;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49286
    :cond_0
    return-void
.end method
