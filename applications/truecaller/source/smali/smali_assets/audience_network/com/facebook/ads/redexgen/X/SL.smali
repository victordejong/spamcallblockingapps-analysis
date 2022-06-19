.class public final Lcom/facebook/ads/redexgen/X/SL;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SK;->A0P(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SK;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SK;Z)V
    .locals 0

    .line 51780
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SL;->A00:Lcom/facebook/ads/redexgen/X/SK;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/SL;->A01:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 51781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SL;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A08(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A08()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v1

    .line 51782
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/MT;
    if-eqz v1, :cond_0

    .line 51783
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SL;->A01:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/MT;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setPageDetailsVisible(Z)V

    .line 51784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SL;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SK;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMode(I)V

    .line 51785
    :cond_0
    return-void

    .line 51786
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
