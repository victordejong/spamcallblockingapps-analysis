.class public Lg/e/a/a/l/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/Matrix;

.field protected c:Lg/e/a/a/l/j;

.field protected d:[F

.field protected e:Landroid/graphics/Matrix;

.field f:[F

.field private g:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lg/e/a/a/l/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lg/e/a/a/l/g;->d:[F

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/e/a/a/l/g;->e:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lg/e/a/a/l/g;->f:[F

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/e/a/a/l/g;->g:Landroid/graphics/Matrix;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    iput-object p1, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    return-void
.end method


# virtual methods
.method public a(Lg/e/a/a/h/b/e;FFII)[F
    .locals 3

    sub-int/2addr p5, p4

    int-to-float p5, p5

    mul-float p5, p5, p2

    float-to-int p2, p5

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 p2, p2, 0x2

    .line 1
    iget-object p5, p0, Lg/e/a/a/l/g;->d:[F

    array-length p5, p5

    if-eq p5, p2, :cond_0

    .line 2
    new-array p5, p2, [F

    iput-object p5, p0, Lg/e/a/a/l/g;->d:[F

    .line 3
    :cond_0
    iget-object p5, p0, Lg/e/a/a/l/g;->d:[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 4
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p4

    invoke-interface {p1, v1}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lg/e/a/a/e/i;->f()F

    move-result v2

    aput v2, p5, v0

    add-int/lit8 v2, v0, 0x1

    .line 6
    invoke-virtual {v1}, Lg/e/a/a/e/f;->c()F

    move-result v1

    mul-float v1, v1, p3

    aput v1, p5, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 7
    aput v1, p5, v0

    add-int/lit8 v2, v0, 0x1

    .line 8
    aput v1, p5, v2

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lg/e/a/a/l/g;->c()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object p5
.end method

.method public b(FF)Lg/e/a/a/l/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/g;->f:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    .line 3
    invoke-virtual {p0, v0}, Lg/e/a/a/l/g;->h([F)V

    .line 4
    iget-object p2, p0, Lg/e/a/a/l/g;->f:[F

    aget v0, p2, v1

    float-to-double v0, v0

    .line 5
    aget p1, p2, p1

    float-to-double p1, p1

    .line 6
    invoke-static {v0, v1, p1, p2}, Lg/e/a/a/l/d;->b(DD)Lg/e/a/a/l/d;

    move-result-object p1

    return-object p1
.end method

.method public c()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/g;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/l/g;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    iget-object v1, v1, Lg/e/a/a/l/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v0, p0, Lg/e/a/a/l/g;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 4
    iget-object v0, p0, Lg/e/a/a/l/g;->g:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public d(FF)Lg/e/a/a/l/d;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1, v0, v1}, Lg/e/a/a/l/d;->b(DD)Lg/e/a/a/l/d;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lg/e/a/a/l/g;->e(FFLg/e/a/a/l/d;)V

    return-object v0
.end method

.method public e(FFLg/e/a/a/l/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/g;->f:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    .line 3
    invoke-virtual {p0, v0}, Lg/e/a/a/l/g;->g([F)V

    .line 4
    iget-object p2, p0, Lg/e/a/a/l/g;->f:[F

    aget v0, p2, v1

    float-to-double v0, v0

    iput-wide v0, p3, Lg/e/a/a/l/d;->c:D

    .line 5
    aget p1, p2, p1

    float-to-double p1, p1

    iput-wide p1, p3, Lg/e/a/a/l/d;->d:D

    return-void
.end method

.method public f(Landroid/graphics/Path;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public g([F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/g;->e:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget-object v1, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 5
    iget-object v1, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->p()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 7
    iget-object v1, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public h([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public i(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->G()F

    move-result v0

    iget-object v1, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    .line 3
    invoke-virtual {v1}, Lg/e/a/a/l/j;->l()F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {v2}, Lg/e/a/a/l/j;->F()F

    move-result v2

    sub-float/2addr v1, v2

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    .line 6
    invoke-virtual {v0}, Lg/e/a/a/l/j;->G()F

    move-result v0

    iget-object v1, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->I()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7
    iget-object p1, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    return-void
.end method

.method public j(FFFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->k()F

    move-result v0

    div-float/2addr v0, p2

    .line 2
    iget-object p2, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {p2}, Lg/e/a/a/l/j;->g()F

    move-result p2

    div-float/2addr p2, p3

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 5
    :cond_1
    iget-object p3, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 6
    iget-object p3, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    neg-float p1, p1

    neg-float p4, p4

    invoke-virtual {p3, p1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7
    iget-object p1, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    neg-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void
.end method

.method public k(Landroid/graphics/RectF;F)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float v0, v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    mul-float v0, v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 3
    iget-object p2, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    iget-object p2, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {p2}, Lg/e/a/a/l/j;->p()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5
    iget-object p2, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public l(Landroid/graphics/RectF;F)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float v0, v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 2
    iget v0, p1, Landroid/graphics/RectF;->right:F

    mul-float v0, v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 3
    iget-object p2, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    iget-object p2, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {p2}, Lg/e/a/a/l/j;->p()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5
    iget-object p2, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public m(Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/l/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2
    iget-object v0, p0, Lg/e/a/a/l/g;->c:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3
    iget-object v0, p0, Lg/e/a/a/l/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method
