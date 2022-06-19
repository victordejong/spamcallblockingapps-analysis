.class public Lcom/tenor/android/core/measurable/MeasurableViewHolderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateVisibleFraction(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;F)F
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractUIUtils;->isRightToLeft(Landroid/content/Context;)Z

    move-result p0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    sub-float p0, v5, p2

    goto :goto_0

    :cond_1
    move p0, p2

    .line 10
    :goto_0
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v4, v4

    mul-float v7, p0, v4

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 11
    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float p0, v5, p0

    mul-float/2addr p0, v4

    sub-float/2addr v7, p0

    float-to-int p0, v7

    .line 12
    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v8, v5, p2

    int-to-float p1, p1

    mul-float/2addr v8, p1

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 13
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    float-to-int p2, v1

    const/4 v1, 0x0

    .line 14
    aget v8, v3, v1

    const/4 v9, 0x1

    if-lt v8, v6, :cond_3

    aget v6, v3, v1

    if-le v6, p0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v9

    .line 15
    :goto_2
    aget v6, v3, v9

    if-lt v6, v7, :cond_4

    aget v3, v3, v9

    if-le v3, p2, :cond_5

    :cond_4
    move v1, v9

    :cond_5
    if-nez p0, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    .line 16
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    .line 18
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 19
    invoke-static {p0, v5}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 20
    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_7
    :goto_3
    return v2
.end method
