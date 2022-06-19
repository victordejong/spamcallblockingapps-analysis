.class public final Lcom/facebook/ads/redexgen/X/bk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3U;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ex;->A9W(Lcom/facebook/ads/redexgen/X/3S;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ex;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3S;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ex;Lcom/facebook/ads/redexgen/X/3S;)V
    .locals 0

    .line 70680
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bk;->A00:Lcom/facebook/ads/redexgen/X/Ex;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bk;->A01:Lcom/facebook/ads/redexgen/X/3S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4B(I)Ljava/lang/Object;
    .locals 1

    .line 70681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bk;->A01:Lcom/facebook/ads/redexgen/X/3S;

    .line 70682
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3S;->A00(I)Lcom/facebook/ads/redexgen/X/3Q;

    move-result-object v0

    .line 70683
    .local p0, "compatInfo":Lcom/facebook/ads/redexgen/X/3Q;
    if-nez v0, :cond_0

    .line 70684
    const/4 v0, 0x0

    return-object v0

    .line 70685
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3Q;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final A5L(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bk;->A01:Lcom/facebook/ads/redexgen/X/3S;

    .line 70687
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3S;->A03(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 70688
    .local p0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    if-nez v4, :cond_0

    .line 70689
    const/4 v0, 0x0

    return-object v0

    .line 70690
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70691
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 70692
    .local p2, "infoCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 70693
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3Q;

    .line 70694
    .local v4, "infoCompat":Lcom/facebook/ads/redexgen/X/3Q;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3Q;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70695
    .end local v4    # "infoCompat":Lcom/facebook/ads/redexgen/X/3Q;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70696
    .end local v0    # "i":I
    :cond_1
    return-object v3
.end method

.method public final ACr(IILandroid/os/Bundle;)Z
    .locals 1

    .line 70697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bk;->A01:Lcom/facebook/ads/redexgen/X/3S;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3S;->A04(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
