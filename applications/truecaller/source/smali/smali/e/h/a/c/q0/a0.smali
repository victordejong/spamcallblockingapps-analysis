.class public Le/h/a/c/q0/a0;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Point;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Le/h/a/c/q0/a0;->a:Landroid/graphics/Point;

    .line 3
    iput p2, p0, Le/h/a/c/q0/a0;->d:I

    .line 4
    iput p3, p0, Le/h/a/c/q0/a0;->b:I

    .line 5
    iput p4, p0, Le/h/a/c/q0/a0;->e:I

    .line 6
    iput p5, p0, Le/h/a/c/q0/a0;->c:I

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalFadingEdgeEnabled(Z)V

    const/4 p2, 0x2

    .line 11
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const p1, 0x2df85

    .line 13
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setId(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget v0, p0, Le/h/a/c/q0/a0;->d:I

    const/4 v1, 0x1

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    .line 2
    iget-object v3, p0, Le/h/a/c/q0/a0;->a:Landroid/graphics/Point;

    int-to-float v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 4
    invoke-static {v1, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 6
    iget-object v3, p0, Le/h/a/c/q0/a0;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Le/h/a/c/q0/a0;->e:I

    mul-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    .line 7
    :goto_0
    iget v0, p0, Le/h/a/c/q0/a0;->b:I

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, p0, Le/h/a/c/q0/a0;->a:Landroid/graphics/Point;

    int-to-float v0, v0

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 10
    invoke-static {v1, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 12
    iget-object v1, p0, Le/h/a/c/q0/a0;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Le/h/a/c/q0/a0;->c:I

    mul-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Le/h/a/c/q0/a0;->a()V

    .line 3
    iget-object p1, p0, Le/h/a/c/q0/a0;->a:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, p1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->performClick()Z

    move-result v0

    return v0
.end method
