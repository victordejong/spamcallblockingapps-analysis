.class public final Lcom/facebook/ads/redexgen/X/bI;
.super Lcom/facebook/ads/redexgen/X/Ki;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bF;->A0E(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bF;)V
    .locals 0

    .line 69016
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:Lcom/facebook/ads/redexgen/X/bF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ki;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 69017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:Lcom/facebook/ads/redexgen/X/bF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bF;->A01(Lcom/facebook/ads/redexgen/X/bF;)Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:Lcom/facebook/ads/redexgen/X/bF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bF;->A01(Lcom/facebook/ads/redexgen/X/bF;)Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:Lcom/facebook/ads/redexgen/X/bF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bF;->A01(Lcom/facebook/ads/redexgen/X/bF;)Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 69019
    :cond_0
    return-void
.end method
