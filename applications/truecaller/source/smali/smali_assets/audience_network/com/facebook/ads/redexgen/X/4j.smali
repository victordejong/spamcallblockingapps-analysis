.class public final Lcom/facebook/ads/redexgen/X/4j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4h;,
        Lcom/facebook/ads/redexgen/X/4g;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4g;

.field public final A01:Lcom/facebook/ads/redexgen/X/4h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4h;)V
    .locals 1

    .line 12535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12536
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4j;->A01:Lcom/facebook/ads/redexgen/X/4h;

    .line 12537
    new-instance v0, Lcom/facebook/ads/redexgen/X/4g;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4g;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4g;

    .line 12538
    return-void
.end method


# virtual methods
.method public final A00(IIII)Landroid/view/View;
    .locals 8

    .line 12539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A01:Lcom/facebook/ads/redexgen/X/4h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4h;->A72()I

    move-result v3

    .line 12540
    .local p0, "start":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A01:Lcom/facebook/ads/redexgen/X/4h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4h;->A71()I

    move-result v2

    .line 12541
    .local p1, "end":I
    if-le p2, p1, :cond_2

    const/4 v7, 0x1

    .line 12542
    .local p2, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 12543
    .local p3, "acceptableMatch":Landroid/view/View;
    .local p4, "i":I
    :goto_1
    if-eq p1, p2, :cond_3

    .line 12544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A01:Lcom/facebook/ads/redexgen/X/4h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4h;->A5v(I)Landroid/view/View;

    move-result-object v1

    .line 12545
    .local v0, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A01:Lcom/facebook/ads/redexgen/X/4h;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4h;->A5y(Landroid/view/View;)I

    move-result v5

    .line 12546
    .local v3, "childStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A01:Lcom/facebook/ads/redexgen/X/4h;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4h;->A5x(Landroid/view/View;)I

    move-result v4

    .line 12547
    .local v0, "childEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4g;

    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/facebook/ads/redexgen/X/4g;->A03(IIII)V

    .line 12548
    if-eqz p3, :cond_0

    .line 12549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4g;->A01()V

    .line 12550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4g;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4g;->A02(I)V

    .line 12551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4g;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12552
    return-object v1

    .line 12553
    :cond_0
    if-eqz p4, :cond_1

    .line 12554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4g;->A01()V

    .line 12555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4g;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/4g;->A02(I)V

    .line 12556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4j;->A00:Lcom/facebook/ads/redexgen/X/4g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4g;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12557
    move-object v6, v1

    .line 12558
    .end local v0    # "childEnd":I
    .end local v3    # "childStart":I
    .end local v0
    :cond_1
    add-int/2addr p1, v7

    goto :goto_1

    .line 12559
    :cond_2
    const/4 v7, -0x1

    goto :goto_0

    .line 12560
    .end local p4    # "i":I
    :cond_3
    return-object v6
.end method
