.class public final Lcom/facebook/ads/redexgen/X/3W;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3Y;->A00(Lcom/facebook/ads/redexgen/X/3X;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3X;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3X;)V
    .locals 0

    .line 9744
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Lcom/facebook/ads/redexgen/X/3X;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 9745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Lcom/facebook/ads/redexgen/X/3X;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3X;->A4B(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 9746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Lcom/facebook/ads/redexgen/X/3X;

    .line 9747
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3X;->A5L(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 9748
    return-object v0
.end method

.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 9749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Lcom/facebook/ads/redexgen/X/3X;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3X;->A5M(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 9750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Lcom/facebook/ads/redexgen/X/3X;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3X;->ACr(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
