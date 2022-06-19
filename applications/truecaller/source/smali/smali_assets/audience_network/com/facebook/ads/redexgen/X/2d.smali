.class public final Lcom/facebook/ads/redexgen/X/2d;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2e;->A00(Lcom/facebook/ads/redexgen/X/2f;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2e;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/2f;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2e;Lcom/facebook/ads/redexgen/X/2f;)V
    .locals 0

    .line 5991
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:Lcom/facebook/ads/redexgen/X/2e;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5994
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 5995
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Lcom/facebook/ads/redexgen/X/2f;

    .line 5996
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3Q;->A01(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/facebook/ads/redexgen/X/3Q;

    move-result-object v0

    .line 5997
    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/2f;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Q;)V

    .line 5998
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6000
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 6001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2f;->A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 6002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A02(Landroid/view/View;I)V

    .line 6003
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6005
    return-void
.end method
