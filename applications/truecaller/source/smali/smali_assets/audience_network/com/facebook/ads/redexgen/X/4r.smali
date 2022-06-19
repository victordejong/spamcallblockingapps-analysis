.class public final Lcom/facebook/ads/redexgen/X/4r;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)V
    .locals 2

    .line 12740
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/59;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/4q;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/4q;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/4o;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/4o;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/4q;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->start()V

    .line 12741
    return-void
.end method
