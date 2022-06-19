.class public Lg/f/a/e/r/e/a;
.super Lg/f/a/e/p/a;
.source "SourceFile"

# interfaces
.implements Lg/f/a/e/r/d;


# instance fields
.field private final w:Lg/f/a/e/r/c;


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    invoke-virtual {v0}, Lg/f/a/e/r/c;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    invoke-virtual {v0}, Lg/f/a/e/r/c;->b()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lg/f/a/e/r/c;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    invoke-virtual {v0}, Lg/f/a/e/r/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    invoke-virtual {v0}, Lg/f/a/e/r/c;->e()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lg/f/a/e/r/d$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    invoke-virtual {v0}, Lg/f/a/e/r/c;->f()Lg/f/a/e/r/d$e;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lg/f/a/e/r/c;->g()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    invoke-virtual {v0, p1}, Lg/f/a/e/r/c;->h(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    invoke-virtual {v0, p1}, Lg/f/a/e/r/c;->i(I)V

    return-void
.end method

.method public setRevealInfo(Lg/f/a/e/r/d$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/r/e/a;->w:Lg/f/a/e/r/c;

    invoke-virtual {v0, p1}, Lg/f/a/e/r/c;->j(Lg/f/a/e/r/d$e;)V

    return-void
.end method
