.class public abstract Lg/e/a/a/c/b;
.super Lg/e/a/a/c/c;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/e/a/a/e/c<",
        "+",
        "Lg/e/a/a/h/b/b<",
        "+",
        "Lg/e/a/a/e/i;",
        ">;>;>",
        "Lg/e/a/a/c/c<",
        "TT;>;",
        "Lg/e/a/a/h/a/b;"
    }
.end annotation


# instance fields
.field protected L:I

.field protected M:Z

.field protected N:Z

.field protected O:Z

.field protected P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field protected U:Landroid/graphics/Paint;

.field protected V:Landroid/graphics/Paint;

.field protected W:Z

.field protected a0:Z

.field protected b0:Z

.field protected c0:F

.field protected d0:Z

.field protected e0:Lg/e/a/a/i/e;

.field protected f0:Lg/e/a/a/d/i;

.field protected g0:Lg/e/a/a/d/i;

.field protected h0:Lg/e/a/a/k/p;

.field protected i0:Lg/e/a/a/k/p;

.field protected j0:Lg/e/a/a/l/g;

.field protected k0:Lg/e/a/a/l/g;

.field protected l0:Lg/e/a/a/k/m;

.field private m0:J

.field private n0:J

.field private o0:Landroid/graphics/RectF;

.field protected p0:Landroid/graphics/Matrix;

.field private q0:Z

.field protected r0:Lg/e/a/a/l/d;

.field protected s0:Lg/e/a/a/l/d;

.field protected t0:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lg/e/a/a/c/c;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lg/e/a/a/c/b;->L:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lg/e/a/a/c/b;->M:Z

    .line 4
    iput-boolean p1, p0, Lg/e/a/a/c/b;->N:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lg/e/a/a/c/b;->O:Z

    .line 6
    iput-boolean v0, p0, Lg/e/a/a/c/b;->P:Z

    .line 7
    iput-boolean v0, p0, Lg/e/a/a/c/b;->Q:Z

    .line 8
    iput-boolean v0, p0, Lg/e/a/a/c/b;->R:Z

    .line 9
    iput-boolean v0, p0, Lg/e/a/a/c/b;->S:Z

    .line 10
    iput-boolean v0, p0, Lg/e/a/a/c/b;->T:Z

    .line 11
    iput-boolean p1, p0, Lg/e/a/a/c/b;->W:Z

    .line 12
    iput-boolean p1, p0, Lg/e/a/a/c/b;->a0:Z

    .line 13
    iput-boolean p1, p0, Lg/e/a/a/c/b;->b0:Z

    const/high16 v0, 0x41700000    # 15.0f

    .line 14
    iput v0, p0, Lg/e/a/a/c/b;->c0:F

    .line 15
    iput-boolean p1, p0, Lg/e/a/a/c/b;->d0:Z

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lg/e/a/a/c/b;->m0:J

    .line 17
    iput-wide v0, p0, Lg/e/a/a/c/b;->n0:J

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/e/a/a/c/b;->o0:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/e/a/a/c/b;->p0:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    iput-boolean p1, p0, Lg/e/a/a/c/b;->q0:Z

    const-wide/16 v0, 0x0

    .line 22
    invoke-static {v0, v1, v0, v1}, Lg/e/a/a/l/d;->b(DD)Lg/e/a/a/l/d;

    move-result-object p1

    iput-object p1, p0, Lg/e/a/a/c/b;->r0:Lg/e/a/a/l/d;

    .line 23
    invoke-static {v0, v1, v0, v1}, Lg/e/a/a/l/d;->b(DD)Lg/e/a/a/l/d;

    move-result-object p1

    iput-object p1, p0, Lg/e/a/a/c/b;->s0:Lg/e/a/a/l/d;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 24
    iput-object p1, p0, Lg/e/a/a/c/b;->t0:[F

    return-void
.end method


# virtual methods
.method protected A(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->W:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lg/e/a/a/c/b;->U:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lg/e/a/a/c/b;->a0:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lg/e/a/a/c/b;->V:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public B(Lg/e/a/a/d/i$a;)Lg/e/a/a/d/i;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    return-object p1
.end method

.method public C(FF)Lg/e/a/a/h/b/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/e/a/a/c/c;->l(FF)Lg/e/a/a/g/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast p2, Lg/e/a/a/e/c;

    invoke-virtual {p1}, Lg/e/a/a/g/c;->c()I

    move-result p1

    invoke-virtual {p2, p1}, Lg/e/a/a/e/g;->e(I)Lg/e/a/a/h/b/d;

    move-result-object p1

    check-cast p1, Lg/e/a/a/h/b/b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->t()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/i;->d0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/i;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->b0:Z

    return v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->O:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->Q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lg/e/a/a/c/b;->R:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->Q:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->R:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->u()Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->P:Z

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->N:Z

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->S:Z

    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->T:Z

    return v0
.end method

.method protected P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->k0:Lg/e/a/a/l/g;

    iget-object v1, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v1}, Lg/e/a/a/d/i;->d0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lg/e/a/a/l/g;->i(Z)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    iget-object v1, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v1}, Lg/e/a/a/d/i;->d0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lg/e/a/a/l/g;->i(Z)V

    return-void
.end method

.method protected Q()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preparing Value-Px Matrix, xmin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v1, v1, Lg/e/a/a/d/a;->H:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xmax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v1, v1, Lg/e/a/a/d/a;->G:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xdelta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v1, v1, Lg/e/a/a/d/a;->I:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lg/e/a/a/c/b;->k0:Lg/e/a/a/l/g;

    iget-object v1, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v1, v1, Lg/e/a/a/d/a;->I:F

    iget-object v3, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget v4, v3, Lg/e/a/a/d/a;->I:F

    iget v3, v3, Lg/e/a/a/d/a;->H:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lg/e/a/a/l/g;->j(FFFF)V

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    iget-object v1, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v1, v1, Lg/e/a/a/d/a;->I:F

    iget-object v3, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget v4, v3, Lg/e/a/a/d/a;->I:F

    iget v3, v3, Lg/e/a/a/d/a;->H:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lg/e/a/a/l/g;->j(FFFF)V

    return-void
.end method

.method public R(FFFF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    neg-float v4, p4

    iget-object v5, p0, Lg/e/a/a/c/b;->p0:Landroid/graphics/Matrix;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lg/e/a/a/l/j;->S(FFFFLandroid/graphics/Matrix;)V

    .line 2
    iget-object p1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object p2, p0, Lg/e/a/a/c/b;->p0:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lg/e/a/a/l/j;->J(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p0}, Lg/e/a/a/c/b;->g()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method

.method public a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lg/e/a/a/c/b;->k0:Lg/e/a/a/l/g;

    return-object p1
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    instance-of v1, v0, Lg/e/a/a/i/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lg/e/a/a/i/a;

    invoke-virtual {v0}, Lg/e/a/a/i/a;->f()V

    :cond_0
    return-void
.end method

.method public e(Lg/e/a/a/d/i$a;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/c/b;->B(Lg/e/a/a/d/i$a;)Lg/e/a/a/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lg/e/a/a/d/i;->d0()Z

    move-result p1

    return p1
.end method

.method public g()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/b;->q0:Z

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/b;->o0:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lg/e/a/a/c/b;->z(Landroid/graphics/RectF;)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/c/b;->o0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    .line 4
    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    .line 5
    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    .line 6
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    .line 7
    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/i;->e0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget-object v5, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    .line 9
    invoke-virtual {v5}, Lg/e/a/a/k/a;->c()Landroid/graphics/Paint;

    move-result-object v5

    .line 10
    invoke-virtual {v2, v5}, Lg/e/a/a/d/i;->V(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v1, v2

    .line 11
    :cond_0
    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/i;->e0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget-object v5, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    .line 13
    invoke-virtual {v5}, Lg/e/a/a/k/a;->c()Landroid/graphics/Paint;

    move-result-object v5

    .line 14
    invoke-virtual {v2, v5}, Lg/e/a/a/d/i;->V(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v4, v2

    .line 15
    :cond_1
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->z()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v5, v2, Lg/e/a/a/d/h;->M:I

    int-to-float v5, v5

    invoke-virtual {v2}, Lg/e/a/a/d/b;->e()F

    move-result v2

    add-float/2addr v5, v2

    .line 17
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v2

    sget-object v6, Lg/e/a/a/d/h$a;->BOTTOM:Lg/e/a/a/d/h$a;

    if-ne v2, v6, :cond_2

    add-float/2addr v0, v5

    goto :goto_1

    .line 18
    :cond_2
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v2

    sget-object v6, Lg/e/a/a/d/h$a;->TOP:Lg/e/a/a/d/h$a;

    if-ne v2, v6, :cond_3

    :goto_0
    add-float/2addr v3, v5

    goto :goto_1

    .line 19
    :cond_3
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v2

    sget-object v6, Lg/e/a/a/d/h$a;->BOTH_SIDED:Lg/e/a/a/d/h$a;

    if-ne v2, v6, :cond_4

    add-float/2addr v0, v5

    goto :goto_0

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraTopOffset()F

    move-result v2

    add-float/2addr v3, v2

    .line 21
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraRightOffset()F

    move-result v2

    add-float/2addr v4, v2

    .line 22
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraBottomOffset()F

    move-result v2

    add-float/2addr v0, v2

    .line 23
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraLeftOffset()F

    move-result v2

    add-float/2addr v1, v2

    .line 24
    iget v2, p0, Lg/e/a/a/c/b;->c0:F

    invoke-static {v2}, Lg/e/a/a/l/i;->e(F)F

    move-result v2

    .line 25
    iget-object v5, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 26
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 28
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 29
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 30
    invoke-virtual {v5, v6, v7, v8, v2}, Lg/e/a/a/l/j;->K(FFFF)V

    .line 31
    iget-boolean v2, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v2, :cond_5

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offsetLeft: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetTop: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetRight: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetBottom: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v2}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_5
    invoke-virtual {p0}, Lg/e/a/a/c/b;->P()V

    .line 35
    invoke-virtual {p0}, Lg/e/a/a/c/b;->Q()V

    return-void
.end method

.method public getAxisLeft()Lg/e/a/a/d/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    return-object v0
.end method

.method public getAxisRight()Lg/e/a/a/d/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    return-object v0
.end method

.method public bridge synthetic getData()Lg/e/a/a/e/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v0

    check-cast v0, Lg/e/a/a/e/c;

    return-object v0
.end method

.method public getDrawListener()Lg/e/a/a/i/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->e0:Lg/e/a/a/i/e;

    return-object v0
.end method

.method public getHighestVisibleX()F
    .locals 4

    .line 1
    sget-object v0, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {p0, v0}, Lg/e/a/a/c/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v0

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->i()F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 2
    invoke-virtual {v2}, Lg/e/a/a/l/j;->f()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/b;->s0:Lg/e/a/a/l/d;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lg/e/a/a/l/g;->e(FFLg/e/a/a/l/d;)V

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->G:F

    float-to-double v0, v0

    iget-object v2, p0, Lg/e/a/a/c/b;->s0:Lg/e/a/a/l/d;

    iget-wide v2, v2, Lg/e/a/a/l/d;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getLowestVisibleX()F
    .locals 4

    .line 1
    sget-object v0, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {p0, v0}, Lg/e/a/a/c/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v0

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->h()F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 2
    invoke-virtual {v2}, Lg/e/a/a/l/j;->f()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/b;->r0:Lg/e/a/a/l/d;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lg/e/a/a/l/g;->e(FFLg/e/a/a/l/d;)V

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->H:F

    float-to-double v0, v0

    iget-object v2, p0, Lg/e/a/a/c/b;->r0:Lg/e/a/a/l/d;

    iget-wide v2, v2, Lg/e/a/a/l/d;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/b;->L:I

    return v0
.end method

.method public getMinOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/b;->c0:F

    return v0
.end method

.method public getRendererLeftYAxis()Lg/e/a/a/k/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    return-object v0
.end method

.method public getRendererRightYAxis()Lg/e/a/a/k/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    return-object v0
.end method

.method public getRendererXAxis()Lg/e/a/a/k/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lg/e/a/a/l/j;->q()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lg/e/a/a/l/j;->r()F

    move-result v0

    return v0
.end method

.method public getVisibleXRange()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/c/b;->getHighestVisibleX()F

    move-result v0

    invoke-virtual {p0}, Lg/e/a/a/c/b;->getLowestVisibleX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getYChartMax()F
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget v0, v0, Lg/e/a/a/d/a;->G:F

    iget-object v1, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget v1, v1, Lg/e/a/a/d/a;->G:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getYChartMin()F
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget v0, v0, Lg/e/a/a/d/a;->H:F

    iget-object v1, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget v1, v1, Lg/e/a/a/d/a;->H:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected o()V
    .locals 4

    .line 1
    invoke-super {p0}, Lg/e/a/a/c/c;->o()V

    .line 2
    new-instance v0, Lg/e/a/a/d/i;

    sget-object v1, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-direct {v0, v1}, Lg/e/a/a/d/i;-><init>(Lg/e/a/a/d/i$a;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    .line 3
    new-instance v0, Lg/e/a/a/d/i;

    sget-object v1, Lg/e/a/a/d/i$a;->RIGHT:Lg/e/a/a/d/i$a;

    invoke-direct {v0, v1}, Lg/e/a/a/d/i;-><init>(Lg/e/a/a/d/i$a;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    .line 4
    new-instance v0, Lg/e/a/a/l/g;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-direct {v0, v1}, Lg/e/a/a/l/g;-><init>(Lg/e/a/a/l/j;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    .line 5
    new-instance v0, Lg/e/a/a/l/g;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-direct {v0, v1}, Lg/e/a/a/l/g;-><init>(Lg/e/a/a/l/j;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->k0:Lg/e/a/a/l/g;

    .line 6
    new-instance v0, Lg/e/a/a/k/p;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget-object v3, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    invoke-direct {v0, v1, v2, v3}, Lg/e/a/a/k/p;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/i;Lg/e/a/a/l/g;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    .line 7
    new-instance v0, Lg/e/a/a/k/p;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget-object v3, p0, Lg/e/a/a/c/b;->k0:Lg/e/a/a/l/g;

    invoke-direct {v0, v1, v2, v3}, Lg/e/a/a/k/p;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/i;Lg/e/a/a/l/g;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    .line 8
    new-instance v0, Lg/e/a/a/k/m;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget-object v3, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    invoke-direct {v0, v1, v2, v3}, Lg/e/a/a/k/m;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/h;Lg/e/a/a/l/g;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    .line 9
    new-instance v0, Lg/e/a/a/g/b;

    invoke-direct {v0, p0}, Lg/e/a/a/g/b;-><init>(Lg/e/a/a/h/a/b;)V

    invoke-virtual {p0, v0}, Lg/e/a/a/c/c;->setHighlighter(Lg/e/a/a/g/b;)V

    .line 10
    new-instance v0, Lg/e/a/a/i/a;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->p()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, p0, v1, v2}, Lg/e/a/a/i/a;-><init>(Lg/e/a/a/c/b;Landroid/graphics/Matrix;F)V

    iput-object v0, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lg/e/a/a/c/b;->U:Landroid/graphics/Paint;

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v0, p0, Lg/e/a/a/c/b;->U:Landroid/graphics/Paint;

    const/16 v1, 0xf0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lg/e/a/a/c/b;->V:Landroid/graphics/Paint;

    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object v0, p0, Lg/e/a/a/c/b;->V:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lg/e/a/a/c/b;->V:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lg/e/a/a/l/i;->e(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lg/e/a/a/c/c;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, p1}, Lg/e/a/a/c/b;->A(Landroid/graphics/Canvas;)V

    .line 5
    iget-boolean v2, p0, Lg/e/a/a/c/b;->M:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lg/e/a/a/c/b;->x()V

    .line 7
    :cond_1
    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    iget-object v3, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget v4, v3, Lg/e/a/a/d/a;->H:F

    iget v5, v3, Lg/e/a/a/d/a;->G:F

    invoke-virtual {v3}, Lg/e/a/a/d/i;->d0()Z

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Lg/e/a/a/k/a;->a(FFZ)V

    .line 9
    :cond_2
    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    iget-object v3, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget v4, v3, Lg/e/a/a/d/a;->H:F

    iget v5, v3, Lg/e/a/a/d/a;->G:F

    invoke-virtual {v3}, Lg/e/a/a/d/i;->d0()Z

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Lg/e/a/a/k/a;->a(FFZ)V

    .line 11
    :cond_3
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    iget-object v3, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v4, v3, Lg/e/a/a/d/a;->H:F

    iget v3, v3, Lg/e/a/a/d/a;->G:F

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lg/e/a/a/k/m;->a(FFZ)V

    .line 13
    :cond_4
    iget-object v2, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/m;->j(Landroid/graphics/Canvas;)V

    .line 14
    iget-object v2, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->j(Landroid/graphics/Canvas;)V

    .line 15
    iget-object v2, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->j(Landroid/graphics/Canvas;)V

    .line 16
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->x()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    iget-object v2, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/m;->k(Landroid/graphics/Canvas;)V

    .line 18
    :cond_5
    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->x()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    iget-object v2, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->k(Landroid/graphics/Canvas;)V

    .line 20
    :cond_6
    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->x()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 21
    iget-object v2, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->k(Landroid/graphics/Canvas;)V

    .line 22
    :cond_7
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->A()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 23
    iget-object v2, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/m;->n(Landroid/graphics/Canvas;)V

    .line 24
    :cond_8
    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->A()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 25
    iget-object v2, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->l(Landroid/graphics/Canvas;)V

    .line 26
    :cond_9
    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->A()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 27
    iget-object v2, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->l(Landroid/graphics/Canvas;)V

    .line 28
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 29
    iget-object v3, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v3}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 30
    iget-object v3, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    invoke-virtual {v3, p1}, Lg/e/a/a/k/d;->b(Landroid/graphics/Canvas;)V

    .line 31
    iget-object v3, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v3}, Lg/e/a/a/d/a;->x()Z

    move-result v3

    if-nez v3, :cond_b

    .line 32
    iget-object v3, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    invoke-virtual {v3, p1}, Lg/e/a/a/k/m;->k(Landroid/graphics/Canvas;)V

    .line 33
    :cond_b
    iget-object v3, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v3}, Lg/e/a/a/d/a;->x()Z

    move-result v3

    if-nez v3, :cond_c

    .line 34
    iget-object v3, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    invoke-virtual {v3, p1}, Lg/e/a/a/k/p;->k(Landroid/graphics/Canvas;)V

    .line 35
    :cond_c
    iget-object v3, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v3}, Lg/e/a/a/d/a;->x()Z

    move-result v3

    if-nez v3, :cond_d

    .line 36
    iget-object v3, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    invoke-virtual {v3, p1}, Lg/e/a/a/k/p;->k(Landroid/graphics/Canvas;)V

    .line 37
    :cond_d
    invoke-virtual {p0}, Lg/e/a/a/c/c;->w()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 38
    iget-object v3, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    iget-object v4, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    invoke-virtual {v3, p1, v4}, Lg/e/a/a/k/d;->d(Landroid/graphics/Canvas;[Lg/e/a/a/g/c;)V

    .line 39
    :cond_e
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 40
    iget-object v2, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/d;->c(Landroid/graphics/Canvas;)V

    .line 41
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->A()Z

    move-result v2

    if-nez v2, :cond_f

    .line 42
    iget-object v2, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/m;->n(Landroid/graphics/Canvas;)V

    .line 43
    :cond_f
    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->A()Z

    move-result v2

    if-nez v2, :cond_10

    .line 44
    iget-object v2, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->l(Landroid/graphics/Canvas;)V

    .line 45
    :cond_10
    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/a;->A()Z

    move-result v2

    if-nez v2, :cond_11

    .line 46
    iget-object v2, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->l(Landroid/graphics/Canvas;)V

    .line 47
    :cond_11
    iget-object v2, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/m;->i(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v2, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->i(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v2, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/p;->i(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p0}, Lg/e/a/a/c/b;->F()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 52
    iget-object v3, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v3}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 53
    iget-object v3, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    invoke-virtual {v3, p1}, Lg/e/a/a/k/d;->e(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 55
    :cond_12
    iget-object v2, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/d;->e(Landroid/graphics/Canvas;)V

    .line 56
    :goto_0
    iget-object v2, p0, Lg/e/a/a/c/c;->v:Lg/e/a/a/k/f;

    invoke-virtual {v2, p1}, Lg/e/a/a/k/f;->e(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p0, p1}, Lg/e/a/a/c/c;->i(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p0, p1}, Lg/e/a/a/c/c;->j(Landroid/graphics/Canvas;)V

    .line 59
    iget-boolean p1, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz p1, :cond_13

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 61
    iget-wide v0, p0, Lg/e/a/a/c/b;->m0:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lg/e/a/a/c/b;->m0:J

    .line 62
    iget-wide v4, p0, Lg/e/a/a/c/b;->n0:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lg/e/a/a/c/b;->n0:J

    .line 63
    div-long/2addr v0, v4

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawtime: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms, average: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, cycles: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lg/e/a/a/c/b;->n0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MPAndroidChart"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->t0:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 2
    iget-boolean v2, p0, Lg/e/a/a/c/b;->d0:Z

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v2}, Lg/e/a/a/l/j;->h()F

    move-result v2

    aput v2, v0, v3

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/b;->t0:[F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v2}, Lg/e/a/a/l/j;->j()F

    move-result v2

    aput v2, v0, v1

    .line 5
    sget-object v0, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {p0, v0}, Lg/e/a/a/c/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v0

    iget-object v2, p0, Lg/e/a/a/c/b;->t0:[F

    invoke-virtual {v0, v2}, Lg/e/a/a/l/g;->g([F)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lg/e/a/a/c/c;->onSizeChanged(IIII)V

    .line 7
    iget-boolean p1, p0, Lg/e/a/a/c/b;->d0:Z

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {p0, p1}, Lg/e/a/a/c/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object p1

    iget-object p2, p0, Lg/e/a/a/c/b;->t0:[F

    invoke-virtual {p1, p2}, Lg/e/a/a/l/g;->h([F)V

    .line 9
    iget-object p1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object p2, p0, Lg/e/a/a/c/b;->t0:[F

    invoke-virtual {p1, p2, p0}, Lg/e/a/a/l/j;->e([FLandroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {p1}, Lg/e/a/a/l/j;->p()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v1}, Lg/e/a/a/l/j;->J(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v2, p0, Lg/e/a/a/c/c;->o:Z

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public setAutoScaleMinMaxEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->M:Z

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->V:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->V:Landroid/graphics/Paint;

    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setClipValuesToContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->b0:Z

    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->O:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->Q:Z

    .line 2
    iput-boolean p1, p0, Lg/e/a/a/c/b;->R:Z

    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0, p1}, Lg/e/a/a/l/j;->M(F)V

    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0, p1}, Lg/e/a/a/l/j;->N(F)V

    return-void
.end method

.method public setDragXEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->Q:Z

    return-void
.end method

.method public setDragYEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->R:Z

    return-void
.end method

.method public setDrawBorders(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->a0:Z

    return-void
.end method

.method public setDrawGridBackground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->W:Z

    return-void
.end method

.method public setGridBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->U:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHighlightPerDragEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->P:Z

    return-void
.end method

.method public setKeepPositionOnRotation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->d0:Z

    return-void
.end method

.method public setMaxVisibleValueCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/e/a/a/c/b;->L:I

    return-void
.end method

.method public setMinOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lg/e/a/a/c/b;->c0:F

    return-void
.end method

.method public setOnDrawListener(Lg/e/a/a/i/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/b;->e0:Lg/e/a/a/i/e;

    return-void
.end method

.method public setPinchZoom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->N:Z

    return-void
.end method

.method public setRendererLeftYAxis(Lg/e/a/a/k/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    return-void
.end method

.method public setRendererRightYAxis(Lg/e/a/a/k/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->S:Z

    .line 2
    iput-boolean p1, p0, Lg/e/a/a/c/b;->T:Z

    return-void
.end method

.method public setScaleXEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->S:Z

    return-void
.end method

.method public setScaleYEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/b;->T:Z

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->I:F

    div-float/2addr v0, p1

    .line 2
    iget-object p1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {p1, v0}, Lg/e/a/a/l/j;->Q(F)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->I:F

    div-float/2addr v0, p1

    .line 2
    iget-object p1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {p1, v0}, Lg/e/a/a/l/j;->O(F)V

    return-void
.end method

.method public setXAxisRenderer(Lg/e/a/a/k/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    const-string v1, "MPAndroidChart"

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "Preparing... DATA NOT SET."

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "Preparing..."

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    iget-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lg/e/a/a/k/d;->f()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lg/e/a/a/c/b;->y()V

    .line 9
    iget-object v0, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    iget-object v1, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v3, v1, Lg/e/a/a/d/a;->G:F

    invoke-virtual {v1}, Lg/e/a/a/d/i;->d0()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lg/e/a/a/k/a;->a(FFZ)V

    .line 10
    iget-object v0, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    iget-object v1, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v3, v1, Lg/e/a/a/d/a;->G:F

    invoke-virtual {v1}, Lg/e/a/a/d/i;->d0()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lg/e/a/a/k/a;->a(FFZ)V

    .line 11
    iget-object v0, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    iget-object v1, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v1, v1, Lg/e/a/a/d/a;->G:F

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lg/e/a/a/k/m;->a(FFZ)V

    .line 12
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lg/e/a/a/c/c;->v:Lg/e/a/a/k/f;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    invoke-virtual {v0, v1}, Lg/e/a/a/k/f;->a(Lg/e/a/a/e/g;)V

    .line 14
    :cond_4
    invoke-virtual {p0}, Lg/e/a/a/c/b;->g()V

    return-void
.end method

.method protected x()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/c/b;->getLowestVisibleX()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lg/e/a/a/c/b;->getHighestVisibleX()F

    move-result v1

    .line 3
    iget-object v2, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v2, Lg/e/a/a/e/c;

    invoke-virtual {v2, v0, v1}, Lg/e/a/a/e/g;->d(FF)V

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/c;

    invoke-virtual {v1}, Lg/e/a/a/e/g;->n()F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v2, Lg/e/a/a/e/c;

    invoke-virtual {v2}, Lg/e/a/a/e/g;->m()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/a;->i(FF)V

    .line 5
    iget-object v0, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/c;

    sget-object v2, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {v1, v2}, Lg/e/a/a/e/g;->r(Lg/e/a/a/d/i$a;)F

    move-result v1

    iget-object v3, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v3, Lg/e/a/a/e/c;

    .line 7
    invoke-virtual {v3, v2}, Lg/e/a/a/e/g;->p(Lg/e/a/a/d/i$a;)F

    move-result v2

    .line 8
    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/i;->i(FF)V

    .line 9
    :cond_0
    iget-object v0, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/c;

    sget-object v2, Lg/e/a/a/d/i$a;->RIGHT:Lg/e/a/a/d/i$a;

    invoke-virtual {v1, v2}, Lg/e/a/a/e/g;->r(Lg/e/a/a/d/i$a;)F

    move-result v1

    iget-object v3, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v3, Lg/e/a/a/e/c;

    .line 11
    invoke-virtual {v3, v2}, Lg/e/a/a/e/g;->p(Lg/e/a/a/d/i$a;)F

    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/i;->i(FF)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lg/e/a/a/c/b;->g()V

    return-void
.end method

.method protected y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/c;

    invoke-virtual {v1}, Lg/e/a/a/e/g;->n()F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v2, Lg/e/a/a/e/c;

    invoke-virtual {v2}, Lg/e/a/a/e/g;->m()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/a;->i(FF)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/c;

    sget-object v2, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {v1, v2}, Lg/e/a/a/e/g;->r(Lg/e/a/a/d/i$a;)F

    move-result v1

    iget-object v3, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v3, Lg/e/a/a/e/c;

    invoke-virtual {v3, v2}, Lg/e/a/a/e/g;->p(Lg/e/a/a/d/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/i;->i(FF)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/c;

    sget-object v2, Lg/e/a/a/d/i$a;->RIGHT:Lg/e/a/a/d/i$a;

    invoke-virtual {v1, v2}, Lg/e/a/a/e/g;->r(Lg/e/a/a/d/i$a;)F

    move-result v1

    iget-object v3, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v3, Lg/e/a/a/e/c;

    invoke-virtual {v3, v2}, Lg/e/a/a/e/g;->p(Lg/e/a/a/d/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/i;->i(FF)V

    return-void
.end method

.method protected z(Landroid/graphics/RectF;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 2
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 3
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 4
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 5
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v0}, Lg/e/a/a/d/e;->D()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6
    sget-object v0, Lg/e/a/a/c/b$a;->c:[I

    iget-object v1, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v1}, Lg/e/a/a/d/e;->y()Lg/e/a/a/d/e$e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    sget-object v0, Lg/e/a/a/c/b$a;->a:[I

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->A()Lg/e/a/a/d/e$f;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v1, v1, Lg/e/a/a/d/e;->y:F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 9
    invoke-virtual {v2}, Lg/e/a/a/l/j;->l()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    .line 11
    invoke-virtual {v2}, Lg/e/a/a/d/b;->e()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 12
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v1, v1, Lg/e/a/a/d/e;->y:F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 13
    invoke-virtual {v2}, Lg/e/a/a/l/j;->l()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    .line 15
    invoke-virtual {v2}, Lg/e/a/a/d/b;->e()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 16
    :cond_3
    sget-object v0, Lg/e/a/a/c/b$a;->b:[I

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->u()Lg/e/a/a/d/e$d;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto/16 :goto_0

    .line 17
    :cond_4
    sget-object v0, Lg/e/a/a/c/b$a;->a:[I

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->A()Lg/e/a/a/d/e$f;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    goto/16 :goto_0

    .line 18
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v1, v1, Lg/e/a/a/d/e;->y:F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 19
    invoke-virtual {v2}, Lg/e/a/a/l/j;->l()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    .line 21
    invoke-virtual {v2}, Lg/e/a/a/d/b;->e()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 22
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v1, v1, Lg/e/a/a/d/e;->y:F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 23
    invoke-virtual {v2}, Lg/e/a/a/l/j;->l()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    .line 25
    invoke-virtual {v2}, Lg/e/a/a/d/b;->e()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 26
    :cond_7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v1, v1, Lg/e/a/a/d/e;->x:F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 27
    invoke-virtual {v2}, Lg/e/a/a/l/j;->m()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    .line 29
    invoke-virtual {v2}, Lg/e/a/a/d/b;->d()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 30
    :cond_8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v1, v1, Lg/e/a/a/d/e;->x:F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 31
    invoke-virtual {v2}, Lg/e/a/a/l/j;->m()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    .line 33
    invoke-virtual {v2}, Lg/e/a/a/d/b;->d()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_9
    :goto_0
    return-void
.end method
