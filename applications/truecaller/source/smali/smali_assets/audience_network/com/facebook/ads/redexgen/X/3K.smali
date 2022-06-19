.class public final Lcom/facebook/ads/redexgen/X/3K;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ez;,
        Lcom/facebook/ads/redexgen/X/bm;,
        Lcom/facebook/ads/redexgen/X/3J;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/3J;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 9570
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 9571
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ez;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ez;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/3J;

    .line 9572
    :goto_0
    return-void

    .line 9573
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    .line 9574
    new-instance v0, Lcom/facebook/ads/redexgen/X/bm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bm;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/3J;

    goto :goto_0

    .line 9575
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/3J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3J;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/3J;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 9576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9577
    return-void
.end method

.method public static A00(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .line 9578
    sget-object v0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/3J;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/3J;->A00(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static A01(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    .line 9579
    sget-object v0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/3J;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/3J;->A01(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 9580
    return-void
.end method
