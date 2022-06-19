.class public Lg/e/a/a/l/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/RectF;

.field protected c:F

.field protected d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field protected o:Landroid/graphics/Matrix;

.field protected final p:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lg/e/a/a/l/j;->c:F

    .line 5
    iput v0, p0, Lg/e/a/a/l/j;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lg/e/a/a/l/j;->e:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 7
    iput v2, p0, Lg/e/a/a/l/j;->f:F

    .line 8
    iput v1, p0, Lg/e/a/a/l/j;->g:F

    .line 9
    iput v2, p0, Lg/e/a/a/l/j;->h:F

    .line 10
    iput v1, p0, Lg/e/a/a/l/j;->i:F

    .line 11
    iput v1, p0, Lg/e/a/a/l/j;->j:F

    .line 12
    iput v0, p0, Lg/e/a/a/l/j;->k:F

    .line 13
    iput v0, p0, Lg/e/a/a/l/j;->l:F

    .line 14
    iput v0, p0, Lg/e/a/a/l/j;->m:F

    .line 15
    iput v0, p0, Lg/e/a/a/l/j;->n:F

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/e/a/a/l/j;->o:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 17
    iput-object v0, p0, Lg/e/a/a/l/j;->p:[F

    return-void
.end method


# virtual methods
.method public A(F)Z
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public B(F)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C(F)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/l/j;->z(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lg/e/a/a/l/j;->A(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public D(F)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/l/j;->B(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lg/e/a/a/l/j;->y(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public E(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->p:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/l/j;->p:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    const/4 v3, 0x0

    .line 3
    aget v4, v0, v3

    const/4 v5, 0x5

    .line 4
    aget v6, v0, v5

    const/4 v7, 0x4

    .line 5
    aget v0, v0, v7

    .line 6
    iget v8, p0, Lg/e/a/a/l/j;->g:F

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v8, p0, Lg/e/a/a/l/j;->h:F

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lg/e/a/a/l/j;->i:F

    .line 7
    iget v4, p0, Lg/e/a/a/l/j;->e:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v4, p0, Lg/e/a/a/l/j;->f:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lg/e/a/a/l/j;->j:F

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    neg-float v0, v0

    .line 10
    iget v4, p0, Lg/e/a/a/l/j;->i:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v4, v8

    mul-float v0, v0, v4

    .line 11
    iget v4, p0, Lg/e/a/a/l/j;->m:F

    sub-float/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lg/e/a/a/l/j;->m:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lg/e/a/a/l/j;->k:F

    .line 12
    iget v0, p0, Lg/e/a/a/l/j;->j:F

    sub-float/2addr v0, v8

    mul-float p2, p2, v0

    .line 13
    iget v0, p0, Lg/e/a/a/l/j;->n:F

    add-float/2addr p2, v0

    invoke-static {v6, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v0, p0, Lg/e/a/a/l/j;->n:F

    neg-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lg/e/a/a/l/j;->l:F

    .line 14
    iget-object v0, p0, Lg/e/a/a/l/j;->p:[F

    iget v2, p0, Lg/e/a/a/l/j;->k:F

    aput v2, v0, v1

    .line 15
    iget v1, p0, Lg/e/a/a/l/j;->i:F

    aput v1, v0, v3

    .line 16
    aput p2, v0, v5

    .line 17
    iget p2, p0, Lg/e/a/a/l/j;->j:F

    aput p2, v0, v7

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public F()F
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->d:F

    iget-object v1, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public G()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public H()F
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->c:F

    iget-object v1, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public I()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public J(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lg/e/a/a/l/j;->E(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 4
    :cond_0
    iget-object p2, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method public K(FFFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v1, p0, Lg/e/a/a/l/j;->c:F

    sub-float/2addr v1, p3

    iget p3, p0, Lg/e/a/a/l/j;->d:F

    sub-float/2addr p3, p4

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public L(FF)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/l/j;->G()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lg/e/a/a/l/j;->I()F

    move-result v1

    .line 3
    invoke-virtual {p0}, Lg/e/a/a/l/j;->H()F

    move-result v2

    .line 4
    invoke-virtual {p0}, Lg/e/a/a/l/j;->F()F

    move-result v3

    .line 5
    iput p2, p0, Lg/e/a/a/l/j;->d:F

    .line 6
    iput p1, p0, Lg/e/a/a/l/j;->c:F

    .line 7
    invoke-virtual {p0, v0, v1, v2, v3}, Lg/e/a/a/l/j;->K(FFFF)V

    return-void
.end method

.method public M(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/l/j;->m:F

    return-void
.end method

.method public N(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/l/j;->n:F

    return-void
.end method

.method public O(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1
    :cond_0
    iput p1, p0, Lg/e/a/a/l/j;->h:F

    .line 2
    iget-object p1, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lg/e/a/a/l/j;->E(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public P(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1
    :cond_0
    iput p1, p0, Lg/e/a/a/l/j;->f:F

    .line 2
    iget-object p1, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lg/e/a/a/l/j;->E(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public Q(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :cond_0
    iput p1, p0, Lg/e/a/a/l/j;->g:F

    .line 2
    iget-object p1, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lg/e/a/a/l/j;->E(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public R(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :cond_0
    iput p1, p0, Lg/e/a/a/l/j;->e:F

    .line 2
    iget-object p1, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lg/e/a/a/l/j;->E(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public S(FFFFLandroid/graphics/Matrix;)V
    .locals 1

    .line 1
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-void
.end method

.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->i:F

    iget v1, p0, Lg/e/a/a/l/j;->h:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->j:F

    iget v1, p0, Lg/e/a/a/l/j;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->i:F

    iget v1, p0, Lg/e/a/a/l/j;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->j:F

    iget v1, p0, Lg/e/a/a/l/j;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e([FLandroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->o:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget-object v1, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    .line 4
    aget v1, p1, v1

    invoke-virtual {p0}, Lg/e/a/a/l/j;->G()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    .line 5
    aget p1, p1, v2

    invoke-virtual {p0}, Lg/e/a/a/l/j;->I()F

    move-result v3

    sub-float/2addr p1, v3

    neg-float v1, v1

    neg-float p1, p1

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7
    invoke-virtual {p0, v0, p2, v2}, Lg/e/a/a/l/j;->J(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    return-void
.end method

.method public f()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public l()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->d:F

    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->c:F

    return v0
.end method

.method public n()Lg/e/a/a/l/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v0, v1}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v0

    return-object v0
.end method

.method public o()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method public p()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public q()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->i:F

    return v0
.end method

.method public r()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->j:F

    return v0
.end method

.method public s()F
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->m:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lg/e/a/a/l/j;->n:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/l/j;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/e/a/a/l/j;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->i:F

    iget v1, p0, Lg/e/a/a/l/j;->g:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/l/j;->j:F

    iget v1, p0, Lg/e/a/a/l/j;->e:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x(FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/l/j;->C(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lg/e/a/a/l/j;->D(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y(F)Z
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public z(F)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
