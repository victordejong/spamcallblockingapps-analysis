.class public final Le/m/a/g/o/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Le/m/a/g/r/a;

.field public B:Ljava/lang/CharSequence;

.field public C:Ljava/lang/CharSequence;

.field public D:Z

.field public E:Z

.field public F:Landroid/graphics/Bitmap;

.field public G:F

.field public H:F

.field public I:[I

.field public J:Z

.field public final K:Landroid/text/TextPaint;

.field public final L:Landroid/text/TextPaint;

.field public M:Landroid/animation/TimeInterpolator;

.field public N:Landroid/animation/TimeInterpolator;

.field public O:F

.field public P:F

.field public Q:F

.field public R:Landroid/content/res/ColorStateList;

.field public S:F

.field public T:F

.field public U:F

.field public V:Landroid/content/res/ColorStateList;

.field public W:F

.field public X:F

.field public Y:Landroid/text/StaticLayout;

.field public Z:F

.field public final a:Landroid/view/View;

.field public a0:F

.field public b:Z

.field public b0:F

.field public c:F

.field public c0:Ljava/lang/CharSequence;

.field public d:Z

.field public d0:I

.field public e:F

.field public e0:F

.field public f:F

.field public f0:F

.field public g:I

.field public g0:I

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/Rect;

.field public final j:Landroid/graphics/RectF;

.field public k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:Landroid/content/res/ColorStateList;

.field public p:Landroid/content/res/ColorStateList;

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:Landroid/graphics/Typeface;

.field public x:Landroid/graphics/Typeface;

.field public y:Landroid/graphics/Typeface;

.field public z:Le/m/a/g/r/a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Le/m/a/g/o/b;->k:I

    .line 3
    iput v0, p0, Le/m/a/g/o/b;->l:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 4
    iput v0, p0, Le/m/a/g/o/b;->m:F

    .line 5
    iput v0, p0, Le/m/a/g/o/b;->n:F

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Le/m/a/g/o/b;->E:Z

    .line 7
    iput v0, p0, Le/m/a/g/o/b;->d0:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Le/m/a/g/o/b;->e0:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Le/m/a/g/o/b;->f0:F

    .line 10
    iput v0, p0, Le/m/a/g/o/b;->g0:I

    .line 11
    iput-object p1, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    .line 12
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    .line 13
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Le/m/a/g/o/b;->L:Landroid/text/TextPaint;

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    .line 16
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Le/m/a/g/o/b;->j:Landroid/graphics/RectF;

    .line 17
    iget p1, p0, Le/m/a/g/o/b;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v1, p1, v0, p1}, Le/d/c/a/a;->a(FFFF)F

    move-result p1

    .line 18
    iput p1, p0, Le/m/a/g/o/b;->f:F

    return-void
.end method

.method public static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v3, v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v1

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    float-to-int p0, v2

    float-to-int p2, v3

    float-to-int v0, v4

    float-to-int p1, p1

    .line 5
    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static k(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Le/m/a/g/a/a;->a(FFF)F

    move-result p0

    return p0
.end method

.method public static n(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A(Landroid/graphics/Typeface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->A:Le/m/a/g/r/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Le/m/a/g/r/a;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/g/o/b;->w:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Le/m/a/g/o/b;->w:Landroid/graphics/Typeface;

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5
    :goto_0
    iget-object v3, p0, Le/m/a/g/o/b;->z:Le/m/a/g/r/a;

    if-eqz v3, :cond_2

    .line 6
    iput-boolean v1, v3, Le/m/a/g/r/a;->c:Z

    .line 7
    :cond_2
    iget-object v3, p0, Le/m/a/g/o/b;->x:Landroid/graphics/Typeface;

    if-eq v3, p1, :cond_3

    .line 8
    iput-object p1, p0, Le/m/a/g/o/b;->x:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 9
    :cond_4
    invoke-virtual {p0, v2}, Le/m/a/g/o/b;->m(Z)V

    :cond_5
    return-void
.end method

.method public final B()Z
    .locals 2

    .line 1
    iget v0, p0, Le/m/a/g/o/b;->d0:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Le/m/a/g/o/b;->D:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le/m/a/g/o/b;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public b()F
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->B:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/g/o/b;->L:Landroid/text/TextPaint;

    .line 3
    iget v1, p0, Le/m/a/g/o/b;->n:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4
    iget-object v1, p0, Le/m/a/g/o/b;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 5
    iget v1, p0, Le/m/a/g/o/b;->W:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 6
    iget-object v0, p0, Le/m/a/g/o/b;->L:Landroid/text/TextPaint;

    iget-object v1, p0, Le/m/a/g/o/b;->B:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    .line 2
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    iget-boolean v0, p0, Le/m/a/g/o/b;->E:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 5
    sget-object v0, Ln3/k/g/d;->d:Ln3/k/g/c;

    goto :goto_1

    :cond_1
    sget-object v0, Ln3/k/g/d;->c:Ln3/k/g/c;

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    check-cast v0, Ln3/k/g/d$c;

    invoke-virtual {v0, p1, v2, v1}, Ln3/k/g/d$c;->b(Ljava/lang/CharSequence;II)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final d(F)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Le/m/a/g/o/b;->d:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/g/o/b;->j:Landroid/graphics/RectF;

    iget v1, p0, Le/m/a/g/o/b;->f:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Le/m/a/g/o/b;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Le/m/a/g/o/b;->M:Landroid/animation/TimeInterpolator;

    .line 4
    invoke-static {v1, v2, p1, v3}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget-object v0, p0, Le/m/a/g/o/b;->j:Landroid/graphics/RectF;

    iget v1, p0, Le/m/a/g/o/b;->q:F

    iget v2, p0, Le/m/a/g/o/b;->r:F

    iget-object v3, p0, Le/m/a/g/o/b;->M:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget-object v0, p0, Le/m/a/g/o/b;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Le/m/a/g/o/b;->M:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-static {v1, v2, p1, v3}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 8
    iget-object v0, p0, Le/m/a/g/o/b;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Le/m/a/g/o/b;->M:Landroid/animation/TimeInterpolator;

    .line 9
    invoke-static {v1, v2, p1, v3}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 10
    :goto_1
    iget-boolean v0, p0, Le/m/a/g/o/b;->d:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 11
    iget v0, p0, Le/m/a/g/o/b;->f:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 12
    iget v0, p0, Le/m/a/g/o/b;->s:F

    iput v0, p0, Le/m/a/g/o/b;->u:F

    .line 13
    iget v0, p0, Le/m/a/g/o/b;->q:F

    iput v0, p0, Le/m/a/g/o/b;->v:F

    .line 14
    iget v0, p0, Le/m/a/g/o/b;->m:F

    invoke-virtual {p0, v0}, Le/m/a/g/o/b;->x(F)V

    move v0, v1

    goto :goto_2

    .line 15
    :cond_2
    iget v0, p0, Le/m/a/g/o/b;->t:F

    iput v0, p0, Le/m/a/g/o/b;->u:F

    .line 16
    iget v0, p0, Le/m/a/g/o/b;->r:F

    const/4 v3, 0x0

    iget v4, p0, Le/m/a/g/o/b;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Le/m/a/g/o/b;->v:F

    .line 17
    iget v0, p0, Le/m/a/g/o/b;->n:F

    invoke-virtual {p0, v0}, Le/m/a/g/o/b;->x(F)V

    move v0, v2

    goto :goto_2

    .line 18
    :cond_3
    iget v0, p0, Le/m/a/g/o/b;->s:F

    iget v3, p0, Le/m/a/g/o/b;->t:F

    iget-object v4, p0, Le/m/a/g/o/b;->M:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Le/m/a/g/o/b;->u:F

    .line 19
    iget v0, p0, Le/m/a/g/o/b;->q:F

    iget v3, p0, Le/m/a/g/o/b;->r:F

    iget-object v4, p0, Le/m/a/g/o/b;->M:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Le/m/a/g/o/b;->v:F

    .line 20
    iget v0, p0, Le/m/a/g/o/b;->m:F

    iget v3, p0, Le/m/a/g/o/b;->n:F

    iget-object v4, p0, Le/m/a/g/o/b;->N:Landroid/animation/TimeInterpolator;

    .line 21
    invoke-static {v0, v3, p1, v4}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 22
    invoke-virtual {p0, v0}, Le/m/a/g/o/b;->x(F)V

    move v0, p1

    :goto_2
    sub-float v3, v2, p1

    .line 23
    sget-object v4, Le/m/a/g/a/a;->b:Landroid/animation/TimeInterpolator;

    .line 24
    invoke-static {v1, v2, v3, v4}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    sub-float v3, v2, v3

    .line 25
    iput v3, p0, Le/m/a/g/o/b;->Z:F

    .line 26
    iget-object v3, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    .line 27
    sget-object v5, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 29
    invoke-static {v2, v1, p1, v4}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    .line 30
    iput v3, p0, Le/m/a/g/o/b;->a0:F

    .line 31
    iget-object v3, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 33
    iget-object v3, p0, Le/m/a/g/o/b;->p:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Le/m/a/g/o/b;->o:Landroid/content/res/ColorStateList;

    if-eq v3, v5, :cond_4

    .line 34
    iget-object v3, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    .line 35
    invoke-virtual {p0, v5}, Le/m/a/g/o/b;->j(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 36
    invoke-virtual {p0}, Le/m/a/g/o/b;->i()I

    move-result v6

    .line 37
    invoke-static {v5, v6, v0}, Le/m/a/g/o/b;->a(IIF)I

    move-result v0

    .line 38
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_3

    .line 39
    :cond_4
    iget-object v0, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    invoke-virtual {p0}, Le/m/a/g/o/b;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 40
    :goto_3
    iget v0, p0, Le/m/a/g/o/b;->W:F

    iget v3, p0, Le/m/a/g/o/b;->X:F

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_5

    .line 41
    iget-object v5, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    .line 42
    invoke-static {v3, v0, p1, v4}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 43
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_4

    .line 44
    :cond_5
    iget-object v3, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 45
    :goto_4
    iget-object v0, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    iget v3, p0, Le/m/a/g/o/b;->S:F

    iget v4, p0, Le/m/a/g/o/b;->O:F

    const/4 v5, 0x0

    .line 46
    invoke-static {v3, v4, p1, v5}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget v4, p0, Le/m/a/g/o/b;->T:F

    iget v6, p0, Le/m/a/g/o/b;->P:F

    .line 47
    invoke-static {v4, v6, p1, v5}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iget v6, p0, Le/m/a/g/o/b;->U:F

    iget v7, p0, Le/m/a/g/o/b;->Q:F

    .line 48
    invoke-static {v6, v7, p1, v5}, Le/m/a/g/o/b;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v5

    iget-object v6, p0, Le/m/a/g/o/b;->V:Landroid/content/res/ColorStateList;

    .line 49
    invoke-virtual {p0, v6}, Le/m/a/g/o/b;->j(Landroid/content/res/ColorStateList;)I

    move-result v6

    iget-object v7, p0, Le/m/a/g/o/b;->R:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v7}, Le/m/a/g/o/b;->j(Landroid/content/res/ColorStateList;)I

    move-result v7

    .line 50
    invoke-static {v6, v7, p1}, Le/m/a/g/o/b;->a(IIF)I

    move-result v6

    .line 51
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 52
    iget-boolean v0, p0, Le/m/a/g/o/b;->d:Z

    if-eqz v0, :cond_7

    .line 53
    iget v0, p0, Le/m/a/g/o/b;->f:F

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_6

    .line 54
    iget v3, p0, Le/m/a/g/o/b;->e:F

    invoke-static {v2, v1, v3, v0, p1}, Le/m/a/g/a/a;->b(FFFFF)F

    move-result p1

    goto :goto_5

    .line 55
    :cond_6
    invoke-static {v1, v2, v0, v2, p1}, Le/m/a/g/a/a;->b(FFFFF)F

    move-result p1

    :goto_5
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 56
    iget-object v0, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 57
    :cond_7
    iget-object p1, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final e(FZ)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/m/a/g/o/b;->B:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget-object v2, v1, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 4
    iget v3, v1, Le/m/a/g/o/b;->n:F

    sub-float v3, p1, v3

    .line 5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    .line 6
    iget v2, v1, Le/m/a/g/o/b;->n:F

    .line 7
    iput v7, v1, Le/m/a/g/o/b;->G:F

    .line 8
    iget-object v3, v1, Le/m/a/g/o/b;->y:Landroid/graphics/Typeface;

    iget-object v4, v1, Le/m/a/g/o/b;->w:Landroid/graphics/Typeface;

    if-eq v3, v4, :cond_2

    .line 9
    iput-object v4, v1, Le/m/a/g/o/b;->y:Landroid/graphics/Typeface;

    move v8, v6

    goto :goto_6

    :cond_2
    move v8, v5

    goto :goto_6

    .line 10
    :cond_3
    iget v3, v1, Le/m/a/g/o/b;->m:F

    .line 11
    iget-object v8, v1, Le/m/a/g/o/b;->y:Landroid/graphics/Typeface;

    iget-object v9, v1, Le/m/a/g/o/b;->x:Landroid/graphics/Typeface;

    if-eq v8, v9, :cond_4

    .line 12
    iput-object v9, v1, Le/m/a/g/o/b;->y:Landroid/graphics/Typeface;

    move v8, v6

    goto :goto_1

    :cond_4
    move v8, v5

    :goto_1
    sub-float v9, p1, v3

    .line 13
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v4, v9, v4

    if-gez v4, :cond_5

    move v4, v6

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    if-eqz v4, :cond_6

    .line 14
    iput v7, v1, Le/m/a/g/o/b;->G:F

    goto :goto_3

    .line 15
    :cond_6
    iget v4, v1, Le/m/a/g/o/b;->m:F

    div-float v4, p1, v4

    iput v4, v1, Le/m/a/g/o/b;->G:F

    .line 16
    :goto_3
    iget v4, v1, Le/m/a/g/o/b;->n:F

    iget v9, v1, Le/m/a/g/o/b;->m:F

    div-float/2addr v4, v9

    mul-float v9, v2, v4

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    cmpl-float v9, v9, v0

    if-lez v9, :cond_8

    div-float/2addr v0, v4

    .line 17
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v2

    :goto_5
    move v2, v3

    :goto_6
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_b

    .line 18
    iget v4, v1, Le/m/a/g/o/b;->H:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_a

    iget-boolean v4, v1, Le/m/a/g/o/b;->J:Z

    if-nez v4, :cond_a

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_9
    move v8, v5

    goto :goto_8

    :cond_a
    :goto_7
    move v8, v6

    .line 19
    :goto_8
    iput v2, v1, Le/m/a/g/o/b;->H:F

    .line 20
    iput-boolean v5, v1, Le/m/a/g/o/b;->J:Z

    .line 21
    :cond_b
    iget-object v2, v1, Le/m/a/g/o/b;->C:Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    if-eqz v8, :cond_16

    .line 22
    :cond_c
    iget-object v2, v1, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    iget v4, v1, Le/m/a/g/o/b;->H:F

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 23
    iget-object v2, v1, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    iget-object v4, v1, Le/m/a/g/o/b;->y:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    iget-object v2, v1, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    iget v4, v1, Le/m/a/g/o/b;->G:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_d

    move v4, v6

    goto :goto_9

    :cond_d
    move v4, v5

    :goto_9
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 25
    iget-object v2, v1, Le/m/a/g/o/b;->B:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Le/m/a/g/o/b;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, v1, Le/m/a/g/o/b;->D:Z

    .line 26
    invoke-virtual/range {p0 .. p0}, Le/m/a/g/o/b;->B()Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, v1, Le/m/a/g/o/b;->d0:I

    goto :goto_a

    :cond_e
    move v2, v6

    :goto_a
    iget-boolean v4, v1, Le/m/a/g/o/b;->D:Z

    .line 27
    :try_start_0
    iget-object v8, v1, Le/m/a/g/o/b;->B:Ljava/lang/CharSequence;

    iget-object v9, v1, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    float-to-int v0, v0

    .line 28
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 29
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 30
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 31
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 32
    iget v13, v1, Le/m/a/g/o/b;->e0:F

    iget v14, v1, Le/m/a/g/o/b;->f0:F

    .line 33
    iget v15, v1, Le/m/a/g/o/b;->g0:I

    .line 34
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v2, v6, :cond_f

    int-to-float v7, v0

    .line 35
    invoke-static {v8, v9, v7, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 36
    :cond_f
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-eqz v4, :cond_10

    if-ne v2, v6, :cond_10

    .line 37
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 38
    :cond_10
    invoke-static {v8, v5, v7, v9, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 40
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    if-eqz v4, :cond_11

    .line 41
    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_b

    :cond_11
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 42
    :goto_b
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    if-eqz v11, :cond_12

    .line 43
    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 44
    :cond_12
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    cmpl-float v3, v13, v3

    if-nez v3, :cond_13

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_14

    .line 45
    :cond_13
    invoke-virtual {v0, v13, v14}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    :cond_14
    if-le v2, v6, :cond_15

    .line 46
    invoke-virtual {v0, v15}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 47
    :cond_15
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0
    :try_end_0
    .catch Le/m/a/g/o/k; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    :goto_c
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object v0, v1, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    .line 51
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Le/m/a/g/o/b;->C:Ljava/lang/CharSequence;

    :cond_16
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->F:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/m/a/g/o/b;->F:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public g(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 2
    iget-object v0, p0, Le/m/a/g/o/b;->C:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Le/m/a/g/o/b;->b:Z

    if-eqz v0, :cond_6

    .line 3
    iget v0, p0, Le/m/a/g/o/b;->d0:I

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    .line 4
    :goto_0
    iget v1, p0, Le/m/a/g/o/b;->u:F

    add-float/2addr v1, v0

    iget v0, p0, Le/m/a/g/o/b;->b0:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    .line 5
    iget-object v0, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    iget v2, p0, Le/m/a/g/o/b;->H:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 6
    iget v0, p0, Le/m/a/g/o/b;->u:F

    .line 7
    iget v2, p0, Le/m/a/g/o/b;->v:F

    .line 8
    iget v3, p0, Le/m/a/g/o/b;->G:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Le/m/a/g/o/b;->d:Z

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Le/m/a/g/o/b;->B()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Le/m/a/g/o/b;->d:Z

    if-eqz v3, :cond_2

    iget v3, p0, Le/m/a/g/o/b;->c:F

    iget v4, p0, Le/m/a/g/o/b;->f:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 11
    :cond_2
    iget-object v0, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v9

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    iget-object v0, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    iget v1, p0, Le/m/a/g/o/b;->a0:F

    int-to-float v2, v9

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 14
    iget-object v0, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 15
    iget-object v0, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    iget v1, p0, Le/m/a/g/o/b;->Z:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 16
    iget-object v0, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v0

    .line 17
    iget-object v1, p0, Le/m/a/g/o/b;->c0:Ljava/lang/CharSequence;

    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v10, v0

    iget-object v6, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v5, v10

    .line 19
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 20
    iget-boolean v0, p0, Le/m/a/g/o/b;->d:Z

    if-nez v0, :cond_5

    .line 21
    iget-object v0, p0, Le/m/a/g/o/b;->c0:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2026"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 24
    iget-object v0, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    .line 26
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    iget-object v6, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    move-object v0, p1

    move v5, v10

    .line 27
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 28
    :cond_4
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    iget-object v0, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 30
    :cond_5
    :goto_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    return-void
.end method

.method public h()F
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->L:Landroid/text/TextPaint;

    .line 2
    iget v1, p0, Le/m/a/g/o/b;->n:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    iget-object v1, p0, Le/m/a/g/o/b;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget v1, p0, Le/m/a/g/o/b;->W:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 5
    iget-object v0, p0, Le/m/a/g/o/b;->L:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Le/m/a/g/o/b;->j(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public final j(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Le/m/a/g/o/b;->I:[I

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Le/m/a/g/o/b;->b:Z

    return-void
.end method

.method public m(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_11

    .line 2
    :cond_1
    iget v0, p0, Le/m/a/g/o/b;->H:F

    .line 3
    iget v1, p0, Le/m/a/g/o/b;->n:F

    invoke-virtual {p0, v1, p1}, Le/m/a/g/o/b;->e(FZ)V

    .line 4
    iget-object v1, p0, Le/m/a/g/o/b;->C:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v2, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    .line 6
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Le/m/a/g/o/b;->c0:Ljava/lang/CharSequence;

    .line 7
    :cond_2
    iget-object v1, p0, Le/m/a/g/o/b;->c0:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v4, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    .line 8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 9
    :goto_0
    iget v4, p0, Le/m/a/g/o/b;->l:I

    iget-boolean v5, p0, Le/m/a/g/o/b;->D:Z

    .line 10
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_5

    if-eq v5, v6, :cond_4

    .line 11
    iget-object v5, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 12
    iget-object v9, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v5

    iput v9, p0, Le/m/a/g/o/b;->r:F

    goto :goto_1

    .line 13
    :cond_4
    iget-object v5, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v9, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    add-float/2addr v9, v5

    iput v9, p0, Le/m/a/g/o/b;->r:F

    goto :goto_1

    .line 14
    :cond_5
    iget-object v5, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, p0, Le/m/a/g/o/b;->r:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_7

    if-eq v4, v9, :cond_6

    .line 15
    iget-object v1, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Le/m/a/g/o/b;->t:F

    goto :goto_2

    .line 16
    :cond_6
    iget-object v4, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Le/m/a/g/o/b;->t:F

    goto :goto_2

    .line 17
    :cond_7
    iget-object v4, p0, Le/m/a/g/o/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Le/m/a/g/o/b;->t:F

    .line 18
    :goto_2
    iget v1, p0, Le/m/a/g/o/b;->m:F

    invoke-virtual {p0, v1, p1}, Le/m/a/g/o/b;->e(FZ)V

    .line 19
    iget-object p1, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_3

    :cond_8
    move p1, v3

    .line 20
    :goto_3
    iget-object v1, p0, Le/m/a/g/o/b;->C:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    iget-object v4, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    .line 21
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v4, v1, v2, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_4

    :cond_9
    move v1, v3

    .line 22
    :goto_4
    iget-object v4, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    if-eqz v4, :cond_a

    iget v11, p0, Le/m/a/g/o/b;->d0:I

    if-le v11, v10, :cond_a

    .line 23
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 24
    :cond_a
    iget-object v4, p0, Le/m/a/g/o/b;->Y:Landroid/text/StaticLayout;

    if-eqz v4, :cond_c

    iget v3, p0, Le/m/a/g/o/b;->d0:I

    if-le v3, v10, :cond_b

    .line 25
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    int-to-float v3, v2

    goto :goto_5

    :cond_b
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    :cond_c
    :goto_5
    iput v3, p0, Le/m/a/g/o/b;->b0:F

    .line 26
    iget v2, p0, Le/m/a/g/o/b;->k:I

    iget-boolean v3, p0, Le/m/a/g/o/b;->D:Z

    .line 27
    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_e

    if-eq v3, v6, :cond_d

    div-float/2addr p1, v8

    .line 28
    iget-object v3, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iput v3, p0, Le/m/a/g/o/b;->q:F

    goto :goto_6

    .line 29
    :cond_d
    iget-object v3, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iget-object p1, p0, Le/m/a/g/o/b;->K:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result p1

    add-float/2addr p1, v3

    iput p1, p0, Le/m/a/g/o/b;->q:F

    goto :goto_6

    .line 30
    :cond_e
    iget-object p1, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Le/m/a/g/o/b;->q:F

    :goto_6
    and-int p1, v2, v5

    if-eq p1, v10, :cond_10

    if-eq p1, v9, :cond_f

    .line 31
    iget-object p1, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iput p1, p0, Le/m/a/g/o/b;->s:F

    goto :goto_7

    .line 32
    :cond_f
    iget-object p1, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iput p1, p0, Le/m/a/g/o/b;->s:F

    goto :goto_7

    .line 33
    :cond_10
    iget-object p1, p0, Le/m/a/g/o/b;->h:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, v8

    sub-float/2addr p1, v1

    iput p1, p0, Le/m/a/g/o/b;->s:F

    .line 34
    :goto_7
    invoke-virtual {p0}, Le/m/a/g/o/b;->f()V

    .line 35
    invoke-virtual {p0, v0}, Le/m/a/g/o/b;->x(F)V

    .line 36
    iget p1, p0, Le/m/a/g/o/b;->c:F

    invoke-virtual {p0, p1}, Le/m/a/g/o/b;->d(F)V

    :cond_11
    return-void
.end method

.method public o(I)V
    .locals 3

    .line 1
    new-instance v0, Le/m/a/g/r/b;

    iget-object v1, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/m/a/g/r/b;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object p1, v0, Le/m/a/g/r/b;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Le/m/a/g/o/b;->p:Landroid/content/res/ColorStateList;

    .line 4
    :cond_0
    iget p1, v0, Le/m/a/g/r/b;->k:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 5
    iput p1, p0, Le/m/a/g/o/b;->n:F

    .line 6
    :cond_1
    iget-object p1, v0, Le/m/a/g/r/b;->b:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 7
    iput-object p1, p0, Le/m/a/g/o/b;->R:Landroid/content/res/ColorStateList;

    .line 8
    :cond_2
    iget p1, v0, Le/m/a/g/r/b;->f:F

    iput p1, p0, Le/m/a/g/o/b;->P:F

    .line 9
    iget p1, v0, Le/m/a/g/r/b;->g:F

    iput p1, p0, Le/m/a/g/o/b;->Q:F

    .line 10
    iget p1, v0, Le/m/a/g/r/b;->h:F

    iput p1, p0, Le/m/a/g/o/b;->O:F

    .line 11
    iget p1, v0, Le/m/a/g/r/b;->j:F

    iput p1, p0, Le/m/a/g/o/b;->W:F

    .line 12
    iget-object p1, p0, Le/m/a/g/o/b;->A:Le/m/a/g/r/a;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p1, Le/m/a/g/r/a;->c:Z

    .line 14
    :cond_3
    new-instance p1, Le/m/a/g/r/a;

    new-instance v1, Le/m/a/g/o/b$a;

    invoke-direct {v1, p0}, Le/m/a/g/o/b$a;-><init>(Le/m/a/g/o/b;)V

    .line 15
    invoke-virtual {v0}, Le/m/a/g/r/b;->a()V

    .line 16
    iget-object v2, v0, Le/m/a/g/r/b;->n:Landroid/graphics/Typeface;

    .line 17
    invoke-direct {p1, v1, v2}, Le/m/a/g/r/a;-><init>(Le/m/a/g/r/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Le/m/a/g/o/b;->A:Le/m/a/g/r/a;

    .line 18
    iget-object p1, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Le/m/a/g/o/b;->A:Le/m/a/g/r/a;

    invoke-virtual {v0, p1, v1}, Le/m/a/g/r/b;->c(Landroid/content/Context;Le/m/a/g/r/d;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Le/m/a/g/o/b;->m(Z)V

    return-void
.end method

.method public p(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->p:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Le/m/a/g/o/b;->p:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Le/m/a/g/o/b;->m(Z)V

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/g/o/b;->l:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Le/m/a/g/o/b;->l:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Le/m/a/g/o/b;->m(Z)V

    :cond_0
    return-void
.end method

.method public r(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->A:Le/m/a/g/r/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Le/m/a/g/r/a;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/g/o/b;->w:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Le/m/a/g/o/b;->w:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Le/m/a/g/o/b;->m(Z)V

    :cond_2
    return-void
.end method

.method public s(I)V
    .locals 3

    .line 1
    new-instance v0, Le/m/a/g/r/b;

    iget-object v1, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/m/a/g/r/b;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object p1, v0, Le/m/a/g/r/b;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Le/m/a/g/o/b;->o:Landroid/content/res/ColorStateList;

    .line 4
    :cond_0
    iget p1, v0, Le/m/a/g/r/b;->k:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 5
    iput p1, p0, Le/m/a/g/o/b;->m:F

    .line 6
    :cond_1
    iget-object p1, v0, Le/m/a/g/r/b;->b:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 7
    iput-object p1, p0, Le/m/a/g/o/b;->V:Landroid/content/res/ColorStateList;

    .line 8
    :cond_2
    iget p1, v0, Le/m/a/g/r/b;->f:F

    iput p1, p0, Le/m/a/g/o/b;->T:F

    .line 9
    iget p1, v0, Le/m/a/g/r/b;->g:F

    iput p1, p0, Le/m/a/g/o/b;->U:F

    .line 10
    iget p1, v0, Le/m/a/g/r/b;->h:F

    iput p1, p0, Le/m/a/g/o/b;->S:F

    .line 11
    iget p1, v0, Le/m/a/g/r/b;->j:F

    iput p1, p0, Le/m/a/g/o/b;->X:F

    .line 12
    iget-object p1, p0, Le/m/a/g/o/b;->z:Le/m/a/g/r/a;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p1, Le/m/a/g/r/a;->c:Z

    .line 14
    :cond_3
    new-instance p1, Le/m/a/g/r/a;

    new-instance v1, Le/m/a/g/o/b$b;

    invoke-direct {v1, p0}, Le/m/a/g/o/b$b;-><init>(Le/m/a/g/o/b;)V

    .line 15
    invoke-virtual {v0}, Le/m/a/g/r/b;->a()V

    .line 16
    iget-object v2, v0, Le/m/a/g/r/b;->n:Landroid/graphics/Typeface;

    .line 17
    invoke-direct {p1, v1, v2}, Le/m/a/g/r/a;-><init>(Le/m/a/g/r/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Le/m/a/g/o/b;->z:Le/m/a/g/r/a;

    .line 18
    iget-object p1, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Le/m/a/g/o/b;->z:Le/m/a/g/r/a;

    invoke-virtual {v0, p1, v1}, Le/m/a/g/r/b;->c(Landroid/content/Context;Le/m/a/g/r/d;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Le/m/a/g/o/b;->m(Z)V

    return-void
.end method

.method public t(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->o:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Le/m/a/g/o/b;->o:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Le/m/a/g/o/b;->m(Z)V

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/g/o/b;->k:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Le/m/a/g/o/b;->k:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Le/m/a/g/o/b;->m(Z)V

    :cond_0
    return-void
.end method

.method public v(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->z:Le/m/a/g/r/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Le/m/a/g/r/a;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/g/o/b;->x:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Le/m/a/g/o/b;->x:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Le/m/a/g/o/b;->m(Z)V

    :cond_2
    return-void
.end method

.method public w(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->z(FFF)F

    move-result p1

    .line 2
    iget v0, p0, Le/m/a/g/o/b;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Le/m/a/g/o/b;->c:F

    .line 4
    invoke-virtual {p0, p1}, Le/m/a/g/o/b;->d(F)V

    :cond_0
    return-void
.end method

.method public final x(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/m/a/g/o/b;->e(FZ)V

    .line 2
    iget-object p1, p0, Le/m/a/g/o/b;->a:Landroid/view/View;

    .line 3
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final y([I)Z
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/g/o/b;->I:[I

    .line 2
    iget-object p1, p0, Le/m/a/g/o/b;->p:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Le/m/a/g/o/b;->o:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0, v1}, Le/m/a/g/o/b;->m(Z)V

    return v0

    :cond_3
    return v1
.end method

.method public z(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/m/a/g/o/b;->B:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iput-object p1, p0, Le/m/a/g/o/b;->B:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/m/a/g/o/b;->C:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Le/m/a/g/o/b;->f()V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Le/m/a/g/o/b;->m(Z)V

    :cond_1
    return-void
.end method
