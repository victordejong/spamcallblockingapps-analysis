.class public final Lcom/facebook/ads/redexgen/X/b3;
.super Lcom/facebook/ads/redexgen/X/Ki;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/b2;->A00()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/b2;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b2;)V
    .locals 0

    .line 68486
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/b2;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ki;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 68487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/b2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/b2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/b2;->A01:Lcom/facebook/ads/redexgen/X/b1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b1;->A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdsLoaded()V

    .line 68489
    :cond_0
    return-void
.end method
