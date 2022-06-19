.class public final Lcom/facebook/ads/redexgen/X/0w;
.super Lcom/facebook/ads/redexgen/X/2F;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jp;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/A1;

.field public A01:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 6

    .line 2537
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2F;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 2538
    new-instance v0, Lcom/facebook/ads/redexgen/X/A1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/A1;-><init>(Lcom/facebook/ads/redexgen/X/2F;ILjava/util/List;Lcom/facebook/ads/redexgen/X/QZ;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0w;->A00:Lcom/facebook/ads/redexgen/X/A1;

    .line 2539
    return-void
.end method


# virtual methods
.method public final A22(Lcom/facebook/ads/redexgen/X/QZ;)V
    .locals 1

    .line 2540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0w;->A00:Lcom/facebook/ads/redexgen/X/A1;

    if-eqz v0, :cond_0

    .line 2541
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/A1;->A0d(Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 2542
    :cond_0
    return-void
.end method

.method public getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/A1;
    .locals 1

    .line 2543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0w;->A00:Lcom/facebook/ads/redexgen/X/A1;

    return-object v0
.end method

.method public setCardsInfo(Ljava/util/ArrayList;)V
    .locals 2

    .line 2544
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0w;->A01:Ljava/util/List;

    .line 2545
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0w;->A00:Lcom/facebook/ads/redexgen/X/A1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0w;->A01:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A1;->A0e(Ljava/util/List;)V

    .line 2546
    return-void
.end method
