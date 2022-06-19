.class public final Lcom/facebook/ads/redexgen/X/ba;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 69403
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AD3(Lcom/facebook/ads/redexgen/X/4e;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4H;)V
    .locals 1

    .line 69404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eq;->A1n(Lcom/facebook/ads/redexgen/X/4e;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4H;)V

    .line 69405
    return-void
.end method

.method public final AD5(Lcom/facebook/ads/redexgen/X/4e;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4H;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/4H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4H;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4U;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4U;->A0c(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 69407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eq;->A1o(Lcom/facebook/ads/redexgen/X/4e;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4H;)V

    .line 69408
    return-void
.end method

.method public final AD7(Lcom/facebook/ads/redexgen/X/4e;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4H;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/4H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 69409
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4e;->A0Z(Z)V

    .line 69410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0C:Z

    if-eqz v0, :cond_1

    .line 69411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4I;->A0H(Lcom/facebook/ads/redexgen/X/4e;Lcom/facebook/ads/redexgen/X/4e;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4H;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1N()V

    .line 69413
    :cond_0
    :goto_0
    return-void

    .line 69414
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4I;->A0G(Lcom/facebook/ads/redexgen/X/4e;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4H;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1N()V

    goto :goto_0
.end method

.method public final AF7(Lcom/facebook/ads/redexgen/X/4e;)V
    .locals 3

    .line 69416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4M;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4e;->A0H:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4U;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A1D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4U;)V

    .line 69417
    return-void
.end method
