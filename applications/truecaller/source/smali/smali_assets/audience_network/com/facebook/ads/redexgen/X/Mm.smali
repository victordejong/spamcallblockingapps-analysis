.class public final Lcom/facebook/ads/redexgen/X/Mm;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/widget/ImageView$ScaleType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xAgTXbjVi62PdicRvipr2yH2TBkp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gkbD2s1xpJQg4uStKBrjHXnqoYLvnFUr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "soe6jIArtiQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3Vk7uiWTp4D98Qq5DBFXHdZ3JTbv3qUy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5FE99nP0vOH07stjGxCxhCer"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JVbWipYt4YB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Mm;->A01:[Ljava/lang/String;

    .line 44797
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 44798
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44799
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 7

    .line 44800
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 44801
    .local p0, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 44802
    .local p1, "widthSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 44803
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Mm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Mm;->A01:[Ljava/lang/String;

    const-string v1, "LPpzUfvPRnl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "8xYze5Yy4ig"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v6, v3, :cond_1

    .line 44804
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 44805
    .local p2, "min":I
    invoke-virtual {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/Mm;->setMeasuredDimension(II)V

    .line 44806
    .end local p2    # "min":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 44807
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44808
    :cond_0
    return-void

    .line 44809
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 44810
    if-lez v5, :cond_2

    .line 44811
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 44812
    :cond_2
    invoke-virtual {p0, v4, v4}, Lcom/facebook/ads/redexgen/X/Mm;->setMeasuredDimension(II)V

    goto :goto_0

    .line 44813
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 44814
    if-lez v4, :cond_4

    .line 44815
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 44816
    :cond_4
    invoke-virtual {p0, v5, v5}, Lcom/facebook/ads/redexgen/X/Mm;->setMeasuredDimension(II)V

    goto :goto_0

    .line 44817
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 44818
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Landroid/widget/ImageView$ScaleType;

    .line 44819
    return-void
.end method
