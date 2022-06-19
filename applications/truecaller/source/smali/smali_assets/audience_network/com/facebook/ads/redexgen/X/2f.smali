.class public Lcom/facebook/ads/redexgen/X/2f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bu;,
        Lcom/facebook/ads/redexgen/X/2e;
    }
.end annotation


# static fields
.field public static final A01:Landroid/view/View$AccessibilityDelegate;

.field public static final A02:Lcom/facebook/ads/redexgen/X/2e;


# instance fields
.field public final A00:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 6010
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 6011
    new-instance v0, Lcom/facebook/ads/redexgen/X/bu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bu;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2f;->A02:Lcom/facebook/ads/redexgen/X/2e;

    .line 6012
    :goto_0
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 6013
    return-void

    .line 6014
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2e;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2e;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2f;->A02:Lcom/facebook/ads/redexgen/X/2e;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .line 6015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6016
    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A02:Lcom/facebook/ads/redexgen/X/2e;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/2e;->A00(Lcom/facebook/ads/redexgen/X/2f;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2f;->A00:Landroid/view/View$AccessibilityDelegate;

    .line 6017
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 6018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2f;->A00:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public final A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3S;
    .locals 2

    .line 6019
    sget-object v1, Lcom/facebook/ads/redexgen/X/2f;->A02:Lcom/facebook/ads/redexgen/X/2e;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2e;->A01(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3S;

    move-result-object v0

    return-object v0
.end method

.method public final A02(Landroid/view/View;I)V
    .locals 1

    .line 6020
    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6021
    return-void
.end method

.method public final A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6022
    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6023
    return-void
.end method

.method public final A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6024
    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6025
    return-void
.end method

.method public final A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 6026
    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 6027
    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6028
    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6029
    return-void
.end method

.method public A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 2

    .line 6030
    sget-object v1, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 6031
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3Q;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 6032
    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6033
    return-void
.end method

.method public A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 6034
    sget-object v1, Lcom/facebook/ads/redexgen/X/2f;->A02:Lcom/facebook/ads/redexgen/X/2e;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2e;->A02(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
