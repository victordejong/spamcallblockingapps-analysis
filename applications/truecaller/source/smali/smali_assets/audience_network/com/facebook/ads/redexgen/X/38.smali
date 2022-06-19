.class public final Lcom/facebook/ads/redexgen/X/38;
.super Landroid/view/ViewGroup$LayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Z

.field public A04:I

.field public A05:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7650
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7651
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/38;->A00:F

    .line 7652
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 7653
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7654
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/38;->A00:F

    .line 7655
    sget-object v0, Lcom/facebook/ads/redexgen/X/3F;->A0w:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 7656
    .local p0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v0, 0x30

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/38;->A04:I

    .line 7657
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 7658
    return-void
.end method
