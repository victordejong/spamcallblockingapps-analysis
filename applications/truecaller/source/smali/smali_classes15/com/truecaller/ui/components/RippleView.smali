.class public Lcom/truecaller/ui/components/RippleView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/components/RippleView$Ripple;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:I


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/ui/components/RippleView$Ripple;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, p0, v1, v2}, Lcom/truecaller/ui/components/RippleView$Ripple;-><init>(Lcom/truecaller/ui/components/RippleView;IF)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/ui/components/RippleView;->a()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/components/RippleView;->b()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double p1, p1

    const-wide p3, 0x3ff6666666666666L    # 1.4

    mul-double/2addr p1, p3

    double-to-int p1, p1

    iput p1, p0, Lcom/truecaller/ui/components/RippleView;->a:I

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/ui/components/RippleView;->a()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/ui/components/RippleView;->b()V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/ui/components/RippleView;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/ui/components/RippleView;->b()V

    :cond_1
    :goto_0
    return-void
.end method
