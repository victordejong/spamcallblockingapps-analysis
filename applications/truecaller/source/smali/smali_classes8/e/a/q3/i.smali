.class public abstract Le/a/q3/i;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public abstract getColumnCount()I
.end method

.method public onLayout(ZIIII)V
    .locals 5

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1
    invoke-virtual {p0}, Le/a/q3/i;->getColumnCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    int-to-float p3, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p3, v0

    int-to-float v1, p1

    div-float/2addr p3, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    int-to-float p4, p4

    mul-float/2addr p4, v0

    div-float/2addr p4, v1

    int-to-float p5, p5

    mul-float/2addr p5, v0

    int-to-float p3, p3

    div-float/2addr p5, p3

    float-to-int p3, p4

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    float-to-int v1, p5

    .line 4
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 5
    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->measureChildren(II)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 6
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7
    div-int v1, p3, p1

    .line 8
    rem-int v2, p3, p1

    int-to-float v2, v2

    mul-float/2addr v2, p4

    .line 9
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v2

    add-float/2addr v3, p4

    .line 10
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v1, v1

    mul-float/2addr v1, p5

    .line 11
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v4, v1

    add-float/2addr v4, p5

    .line 12
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 13
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
