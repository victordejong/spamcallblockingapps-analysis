.class public Ln3/y/e/z;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ln3/y/e/a0$c;


# instance fields
.field public a:Ln3/y/e/b0$b;

.field public b:Ln3/y/e/b0$b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/e/b0$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    .line 4
    iget-object v1, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 5
    check-cast v1, Ln3/y/e/f;

    invoke-virtual {v1}, Ln3/y/e/f;->onDetachedFromWindow()V

    .line 6
    :cond_1
    iget-object v1, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    const/4 v2, 0x0

    check-cast v1, Ln3/y/e/f;

    .line 7
    iput-object v2, v1, Ln3/y/e/f;->d:Ln3/y/e/b0$b$a;

    .line 8
    :cond_2
    iput-object p1, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    if-eqz p1, :cond_4

    .line 9
    iget-object v1, p0, Ln3/y/e/z;->b:Ln3/y/e/b0$b$a;

    if-nez v1, :cond_3

    .line 10
    new-instance v1, Ln3/y/e/z$a;

    invoke-direct {v1, p0}, Ln3/y/e/z$a;-><init>(Ln3/y/e/z;)V

    iput-object v1, p0, Ln3/y/e/z;->b:Ln3/y/e/b0$b$a;

    :cond_3
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 12
    iget-object v1, p0, Ln3/y/e/z;->b:Ln3/y/e/b0$b$a;

    check-cast p1, Ln3/y/e/f;

    .line 13
    iput-object v1, p1, Ln3/y/e/f;->d:Ln3/y/e/b0$b$a;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p1}, Ln3/y/e/f;->onAttachedToWindow()V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 17
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "androidx.media2.widget.SubtitleAnchorView"

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ln3/y/e/f;

    invoke-virtual {v0}, Ln3/y/e/f;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ln3/y/e/f;

    invoke-virtual {v0}, Ln3/y/e/f;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget-object v1, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    invoke-interface {v1, p1}, Ln3/y/e/b0$b;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 5
    iget-object p3, p0, Ln3/y/e/z;->a:Ln3/y/e/b0$b;

    check-cast p3, Ln3/y/e/f;

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p4, 0x40000000    # 2.0f

    .line 7
    invoke-static {p1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 8
    invoke-static {p2, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 9
    invoke-virtual {p3, p5, p4}, Landroid/view/ViewGroup;->measure(II)V

    const/4 p4, 0x0

    .line 10
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_0
    return-void
.end method
