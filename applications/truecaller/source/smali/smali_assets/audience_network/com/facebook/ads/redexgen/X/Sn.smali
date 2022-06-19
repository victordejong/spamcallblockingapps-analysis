.class public final Lcom/facebook/ads/redexgen/X/Sn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NW;)V
    .locals 0

    .line 52613
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/NW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9y(Z)V
    .locals 2

    .line 52614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A09(Lcom/facebook/ads/redexgen/X/NW;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A02(Lcom/facebook/ads/redexgen/X/NW;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A02(Lcom/facebook/ads/redexgen/X/NW;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 52616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A02(Lcom/facebook/ads/redexgen/X/NW;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 52617
    :cond_0
    return-void

    .line 52618
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public final AAc(Z)V
    .locals 2

    .line 52619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A09(Lcom/facebook/ads/redexgen/X/NW;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A03(Lcom/facebook/ads/redexgen/X/NW;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A03(Lcom/facebook/ads/redexgen/X/NW;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 52621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A03(Lcom/facebook/ads/redexgen/X/NW;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 52622
    :cond_0
    return-void

    .line 52623
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method
