.class public final Lcom/facebook/ads/redexgen/X/51;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DebugOverlayToggle"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/52;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/52;)V
    .locals 0

    .line 12974
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V
    .locals 0

    .line 12975
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/51;-><init>(Lcom/facebook/ads/redexgen/X/52;)V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 12976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/52;->A02(Lcom/facebook/ads/redexgen/X/52;)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/52;->A00(Lcom/facebook/ads/redexgen/X/52;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/52;->A02(Lcom/facebook/ads/redexgen/X/52;)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Lcom/facebook/ads/redexgen/X/52;

    .line 12978
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/52;->A00(Lcom/facebook/ads/redexgen/X/52;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/52;->A00(Lcom/facebook/ads/redexgen/X/52;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 12979
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->setBounds(IIII)V

    .line 12980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/52;->A02(Lcom/facebook/ads/redexgen/X/52;)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/52;->A02(Lcom/facebook/ads/redexgen/X/52;)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0E()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0D(Z)V

    .line 12981
    :cond_0
    return v4
.end method
