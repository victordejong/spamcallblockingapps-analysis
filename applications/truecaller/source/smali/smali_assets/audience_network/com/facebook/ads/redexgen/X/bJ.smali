.class public final Lcom/facebook/ads/redexgen/X/bJ;
.super Lcom/facebook/ads/redexgen/X/Ki;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bF;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bF;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/K3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bF;Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 0

    .line 69020
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/bF;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:Lcom/facebook/ads/redexgen/X/K3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ki;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 69021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/bF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bF;->A01(Lcom/facebook/ads/redexgen/X/bF;)Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/bF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bF;->A01(Lcom/facebook/ads/redexgen/X/bF;)Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v0

    .line 69023
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/bF;

    .line 69024
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bF;->A01(Lcom/facebook/ads/redexgen/X/bF;)Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:Lcom/facebook/ads/redexgen/X/K3;

    .line 69025
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LK;->A00(Lcom/facebook/ads/redexgen/X/K3;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 69026
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69027
    :cond_0
    return-void
.end method
