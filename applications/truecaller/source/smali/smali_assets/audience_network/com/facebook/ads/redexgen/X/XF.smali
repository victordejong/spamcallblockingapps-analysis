.class public final Lcom/facebook/ads/redexgen/X/XF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9A;->A00()Lcom/facebook/ads/redexgen/X/Kl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADg(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 65952
    instance-of v0, p2, Lcom/facebook/ads/redexgen/X/8H;

    if-eqz v0, :cond_1

    .line 65953
    check-cast p2, Lcom/facebook/ads/redexgen/X/8H;

    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/8H;->A5Y()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 65954
    .local p0, "adContext":Lcom/facebook/ads/redexgen/X/XT;
    if-eqz v0, :cond_0

    .line 65955
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/XT;->A0H(Ljava/lang/Throwable;)V

    .line 65956
    .end local p0    # "adContext":Lcom/facebook/ads/redexgen/X/XT;
    .end local p1    # null:Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 65957
    :cond_1
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65958
    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65959
    .local p0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/XT;

    if-eqz v0, :cond_0

    .line 65960
    check-cast v1, Lcom/facebook/ads/redexgen/X/XT;

    .line 65961
    .local p1, "adContext":Lcom/facebook/ads/redexgen/X/XT;
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/XT;->A0H(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
