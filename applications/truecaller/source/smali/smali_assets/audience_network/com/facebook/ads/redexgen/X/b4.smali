.class public final Lcom/facebook/ads/redexgen/X/b4;
.super Lcom/facebook/ads/redexgen/X/Ki;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/b1;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/b1;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/K3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b1;Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 0

    .line 68490
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/b1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b4;->A01:Lcom/facebook/ads/redexgen/X/K3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ki;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 68491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/b1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A00:Lcom/facebook/ads/redexgen/X/b1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;

    move-result-object v0

    .line 68493
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b4;->A01:Lcom/facebook/ads/redexgen/X/K3;

    .line 68494
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LK;->A00(Lcom/facebook/ads/redexgen/X/K3;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdError(Lcom/facebook/ads/AdError;)V

    .line 68495
    :cond_0
    return-void
.end method
