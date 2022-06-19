.class public final Lcom/facebook/ads/redexgen/X/Ez;
.super Lcom/facebook/ads/redexgen/X/bm;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityEventCompatApi19Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32746
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .line 32747
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    return v0
.end method

.method public final A01(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    .line 32748
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 32749
    return-void
.end method
