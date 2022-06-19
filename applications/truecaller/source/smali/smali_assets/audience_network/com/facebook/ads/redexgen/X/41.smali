.class public final Lcom/facebook/ads/redexgen/X/41;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutState"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4e;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Z

.field public A0A:Z

.field public A0B:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/41;->A0B:Z

    .line 10572
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/41;->A02:I

    .line 10573
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/41;->A0A:Z

    .line 10574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    return-void
.end method

.method private A00()Landroid/view/View;
    .locals 6

    .line 10575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 10576
    .local p0, "size":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 10577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4e;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/4e;->A0H:Landroid/view/View;

    .line 10578
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4N;

    .line 10579
    .local v4, "lp":Lcom/facebook/ads/redexgen/X/4N;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4N;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10580
    .end local v5    # "view":Landroid/view/View;
    .end local v4    # "lp":Lcom/facebook/ads/redexgen/X/4N;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10581
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4N;->A00()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 10582
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/41;->A02(Landroid/view/View;)V

    .line 10583
    return-object v3

    .line 10584
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A01(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .line 10585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 10586
    .local p0, "size":I
    const/4 v5, 0x0

    .line 10587
    .local p1, "closest":Landroid/view/View;
    const v4, 0x7fffffff

    .line 10588
    .local v0, "closestDistance":I
    const/4 v3, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 10589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4e;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4e;->A0H:Landroid/view/View;

    .line 10590
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4N;

    .line 10591
    .local v4, "lp":Lcom/facebook/ads/redexgen/X/4N;
    if-eq v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4N;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10592
    .end local v5    # "view":Landroid/view/View;
    .end local v4    # "lp":Lcom/facebook/ads/redexgen/X/4N;
    .end local v3
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10593
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4N;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/41;->A03:I

    mul-int/2addr v1, v0

    .line 10594
    .local v3, "distance":I
    if-gez v1, :cond_2

    goto :goto_1

    .line 10595
    :cond_2
    if-ge v1, v4, :cond_0

    .line 10596
    move-object v5, v2

    .line 10597
    move v4, v1

    .line 10598
    if-nez v1, :cond_0

    .line 10599
    .end local v6    # "i":I
    :cond_3
    return-object v5
.end method

.method private final A02(Landroid/view/View;)V
    .locals 1

    .line 10600
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/41;->A01(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 10601
    .local p0, "closest":Landroid/view/View;
    if-nez v0, :cond_0

    .line 10602
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 10603
    :goto_0
    return-void

    .line 10604
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4N;

    .line 10605
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A00()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    goto :goto_0
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/4U;)Landroid/view/View;
    .locals 3

    .line 10606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 10607
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/41;->A00()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 10608
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4U;->A0G(I)Landroid/view/View;

    move-result-object v2

    .line 10609
    .local p0, "view":Landroid/view/View;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/41;->A03:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    .line 10610
    return-object v2
.end method

.method public final A04()V
    .locals 1

    .line 10611
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/41;->A02(Landroid/view/View;)V

    .line 10612
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/4b;)Z
    .locals 2

    .line 10613
    iget v1, p0, Lcom/facebook/ads/redexgen/X/41;->A01:I

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4b;->A03()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
