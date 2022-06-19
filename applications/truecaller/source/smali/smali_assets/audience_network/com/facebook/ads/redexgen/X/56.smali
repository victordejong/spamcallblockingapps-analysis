.class public final Lcom/facebook/ads/redexgen/X/56;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ns;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bF;Lcom/facebook/ads/redexgen/X/Ns;)V
    .locals 0

    .line 13346
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/56;->A00:Lcom/facebook/ads/redexgen/X/bF;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/56;->A01:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 13347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/56;->A00:Lcom/facebook/ads/redexgen/X/bF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bF;->A00(Lcom/facebook/ads/redexgen/X/bF;)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 13348
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/56;->A01:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/56;->A00:Lcom/facebook/ads/redexgen/X/bF;

    .line 13349
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bF;->A00(Lcom/facebook/ads/redexgen/X/bF;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/56;->A00:Lcom/facebook/ads/redexgen/X/bF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bF;->A00(Lcom/facebook/ads/redexgen/X/bF;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 13350
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->setBounds(IIII)V

    .line 13351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/56;->A01:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ns;->A0E()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0D(Z)V

    .line 13352
    :cond_0
    return v4
.end method
