.class public Lg/e/a/a/c/a;
.super Lg/e/a/a/c/b;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/c/b<",
        "Lg/e/a/a/e/a;",
        ">;",
        "Lg/e/a/a/h/a/a;"
    }
.end annotation


# instance fields
.field protected u0:Z

.field private v0:Z

.field private w0:Z

.field private x0:Z


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/a;->w0:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/a;->v0:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/a;->u0:Z

    return v0
.end method

.method public getBarData()Lg/e/a/a/e/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v0, Lg/e/a/a/e/a;

    return-object v0
.end method

.method public l(FF)Lg/e/a/a/g/c;
    .locals 8

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    if-nez v0, :cond_0

    const-string p1, "MPAndroidChart"

    const-string p2, "Can\'t select by touch. No data set."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getHighlighter()Lg/e/a/a/g/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/e/a/a/g/e;->a(FF)Lg/e/a/a/g/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lg/e/a/a/c/a;->d()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Lg/e/a/a/g/c;

    invoke-virtual {p1}, Lg/e/a/a/g/c;->g()F

    move-result v1

    invoke-virtual {p1}, Lg/e/a/a/g/c;->i()F

    move-result v2

    .line 6
    invoke-virtual {p1}, Lg/e/a/a/g/c;->h()F

    move-result v3

    invoke-virtual {p1}, Lg/e/a/a/g/c;->j()F

    move-result v4

    .line 7
    invoke-virtual {p1}, Lg/e/a/a/g/c;->c()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {p1}, Lg/e/a/a/g/c;->b()Lg/e/a/a/d/i$a;

    move-result-object v7

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lg/e/a/a/g/c;-><init>(FFFFIILg/e/a/a/d/i$a;)V

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected o()V
    .locals 3

    .line 1
    invoke-super {p0}, Lg/e/a/a/c/b;->o()V

    .line 2
    new-instance v0, Lg/e/a/a/k/b;

    iget-object v1, p0, Lg/e/a/a/c/c;->z:Lg/e/a/a/a/a;

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-direct {v0, p0, v1, v2}, Lg/e/a/a/k/b;-><init>(Lg/e/a/a/h/a/a;Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V

    iput-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    .line 3
    new-instance v0, Lg/e/a/a/g/a;

    invoke-direct {v0, p0}, Lg/e/a/a/g/a;-><init>(Lg/e/a/a/h/a/a;)V

    invoke-virtual {p0, v0}, Lg/e/a/a/c/c;->setHighlighter(Lg/e/a/a/g/b;)V

    .line 4
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lg/e/a/a/d/a;->O(F)V

    .line 5
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg/e/a/a/d/a;->N(F)V

    return-void
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/a;->w0:Z

    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/a;->v0:Z

    return-void
.end method

.method public setFitBars(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/a;->x0:Z

    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/a;->u0:Z

    return-void
.end method

.method protected y()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/a;->x0:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/a;

    invoke-virtual {v1}, Lg/e/a/a/e/g;->n()F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v2, Lg/e/a/a/e/a;

    invoke-virtual {v2}, Lg/e/a/a/e/a;->u()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v2, Lg/e/a/a/e/a;

    invoke-virtual {v2}, Lg/e/a/a/e/g;->m()F

    move-result v2

    iget-object v4, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v4, Lg/e/a/a/e/a;

    invoke-virtual {v4}, Lg/e/a/a/e/a;->u()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/a;->i(FF)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/a;

    invoke-virtual {v1}, Lg/e/a/a/e/g;->n()F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v2, Lg/e/a/a/e/a;

    invoke-virtual {v2}, Lg/e/a/a/e/g;->m()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/a;->i(FF)V

    .line 4
    :goto_0
    iget-object v0, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/a;

    sget-object v2, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {v1, v2}, Lg/e/a/a/e/g;->r(Lg/e/a/a/d/i$a;)F

    move-result v1

    iget-object v3, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v3, Lg/e/a/a/e/a;

    invoke-virtual {v3, v2}, Lg/e/a/a/e/g;->p(Lg/e/a/a/d/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/i;->i(FF)V

    .line 5
    iget-object v0, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/a;

    sget-object v2, Lg/e/a/a/d/i$a;->RIGHT:Lg/e/a/a/d/i$a;

    invoke-virtual {v1, v2}, Lg/e/a/a/e/g;->r(Lg/e/a/a/d/i$a;)F

    move-result v1

    iget-object v3, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v3, Lg/e/a/a/e/a;

    invoke-virtual {v3, v2}, Lg/e/a/a/e/g;->p(Lg/e/a/a/d/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/i;->i(FF)V

    return-void
.end method
