.class public Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/components/ScrimInsetsFrameLayout$a;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/graphics/Rect;

.field public c:Landroid/graphics/Rect;

.field public d:Lcom/truecaller/ui/components/ScrimInsetsFrameLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    .line 3
    sget-object v0, Lcom/truecaller/R$styleable;->ScrimInsetsView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v5, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 12
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 15
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    iget-object v3, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    invoke-virtual {v3, v5, v6, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 17
    iget-object v0, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    iget-object v0, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 3
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5
    iget-object v0, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->d:Lcom/truecaller/ui/components/ScrimInsetsFrameLayout$a;

    if-eqz v0, :cond_1

    .line 6
    check-cast v0, Le/a/e/w0;

    .line 7
    iget-object v0, v0, Le/a/e/w0;->c:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return v1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public setInsetForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnInsetsCallback(Lcom/truecaller/ui/components/ScrimInsetsFrameLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/ScrimInsetsFrameLayout;->d:Lcom/truecaller/ui/components/ScrimInsetsFrameLayout$a;

    return-void
.end method
