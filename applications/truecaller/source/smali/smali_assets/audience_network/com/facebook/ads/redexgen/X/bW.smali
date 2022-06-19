.class public final Lcom/facebook/ads/redexgen/X/bW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4M;)V
    .locals 0

    .line 69299
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/4M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5v(I)Landroid/view/View;
    .locals 1

    .line 69300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0t(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A5x(Landroid/view/View;)I
    .locals 3

    .line 69301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4N;

    .line 69302
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4N;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0n(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4N;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A5y(Landroid/view/View;)I
    .locals 3

    .line 69303
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4N;

    .line 69304
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4N;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0k(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4N;->leftMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A71()I
    .locals 2

    .line 69305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0h()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A72()I
    .locals 1

    .line 69306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0e()I

    move-result v0

    return v0
.end method
