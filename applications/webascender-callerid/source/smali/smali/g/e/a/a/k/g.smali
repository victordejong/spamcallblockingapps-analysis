.class public Lg/e/a/a/k/g;
.super Lg/e/a/a/k/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/a/a/k/g$b;
    }
.end annotation


# instance fields
.field protected h:Lg/e/a/a/h/a/d;

.field protected i:Landroid/graphics/Paint;

.field protected j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Landroid/graphics/Canvas;

.field protected l:Landroid/graphics/Bitmap$Config;

.field protected m:Landroid/graphics/Path;

.field protected n:Landroid/graphics/Path;

.field private o:[F

.field protected p:Landroid/graphics/Path;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lg/e/a/a/h/b/d;",
            "Lg/e/a/a/k/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private r:[F


# direct methods
.method public constructor <init>(Lg/e/a/a/h/a/d;Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lg/e/a/a/k/h;-><init>(Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V

    .line 2
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, p0, Lg/e/a/a/k/g;->l:Landroid/graphics/Bitmap$Config;

    .line 3
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    .line 4
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lg/e/a/a/k/g;->n:Landroid/graphics/Path;

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 5
    iput-object p2, p0, Lg/e/a/a/k/g;->o:[F

    .line 6
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lg/e/a/a/k/g;->p:Landroid/graphics/Path;

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lg/e/a/a/k/g;->q:Ljava/util/HashMap;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 8
    iput-object p2, p0, Lg/e/a/a/k/g;->r:[F

    .line 9
    iput-object p1, p0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/e/a/a/k/g;->i:Landroid/graphics/Paint;

    .line 11
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object p1, p0, Lg/e/a/a/k/g;->i:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private v(Lg/e/a/a/h/b/e;IILandroid/graphics/Path;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lg/e/a/a/h/b/e;->j()Lg/e/a/a/f/d;

    move-result-object v0

    iget-object v1, p0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface {v0, p1, v1}, Lg/e/a/a/f/d;->a(Lg/e/a/a/h/b/e;Lg/e/a/a/h/a/d;)F

    move-result v0

    .line 2
    iget-object v1, p0, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v1}, Lg/e/a/a/a/a;->c()F

    move-result v1

    .line 3
    invoke-interface {p1}, Lg/e/a/a/h/b/e;->O()Lg/e/a/a/e/k$a;

    move-result-object v2

    sget-object v3, Lg/e/a/a/e/k$a;->STEPPED:Lg/e/a/a/e/k$a;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 5
    invoke-interface {p1, p2}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lg/e/a/a/e/i;->f()F

    move-result v5

    invoke-virtual {p4, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    invoke-virtual {v3}, Lg/e/a/a/e/i;->f()F

    move-result v5

    invoke-virtual {v3}, Lg/e/a/a/e/f;->c()F

    move-result v6

    mul-float v6, v6, v1

    invoke-virtual {p4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v5, 0x0

    add-int/2addr p2, v4

    :goto_1
    if-gt p2, p3, :cond_2

    .line 8
    invoke-interface {p1, p2}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v5}, Lg/e/a/a/e/i;->f()F

    move-result v4

    invoke-virtual {v3}, Lg/e/a/a/e/f;->c()F

    move-result v3

    mul-float v3, v3, v1

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    :cond_1
    invoke-virtual {v5}, Lg/e/a/a/e/i;->f()F

    move-result v3

    invoke-virtual {v5}, Lg/e/a/a/e/f;->c()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p2, p2, 0x1

    move-object v3, v5

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {v5}, Lg/e/a/a/e/i;->f()F

    move-result p1

    invoke-virtual {p4, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->m()F

    move-result v0

    float-to-int v0, v0

    .line 2
    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->l()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lg/e/a/a/k/g;->j:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_2

    :cond_1
    if-lez v0, :cond_5

    if-lez v1, :cond_5

    .line 6
    iget-object v2, p0, Lg/e/a/a/k/g;->l:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg/e/a/a/k/g;->j:Ljava/lang/ref/WeakReference;

    .line 8
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lg/e/a/a/k/g;->k:Landroid/graphics/Canvas;

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 10
    iget-object v0, p0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface {v0}, Lg/e/a/a/h/a/d;->getLineData()Lg/e/a/a/e/j;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lg/e/a/a/e/g;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/e/a/a/h/b/e;

    .line 12
    invoke-interface {v1}, Lg/e/a/a/h/b/d;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {p0, p1, v1}, Lg/e/a/a/k/g;->q(Landroid/graphics/Canvas;Lg/e/a/a/h/b/e;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/k/g;->n(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lg/e/a/a/g/c;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface {v0}, Lg/e/a/a/h/a/d;->getLineData()Lg/e/a/a/e/j;

    move-result-object v0

    .line 2
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 3
    invoke-virtual {v3}, Lg/e/a/a/g/c;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lg/e/a/a/e/g;->e(I)Lg/e/a/a/h/b/d;

    move-result-object v4

    check-cast v4, Lg/e/a/a/h/b/e;

    if-eqz v4, :cond_2

    .line 4
    invoke-interface {v4}, Lg/e/a/a/h/b/d;->z0()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v3}, Lg/e/a/a/g/c;->g()F

    move-result v5

    invoke-virtual {v3}, Lg/e/a/a/g/c;->i()F

    move-result v6

    invoke-interface {v4, v5, v6}, Lg/e/a/a/h/b/d;->q(FF)Lg/e/a/a/e/i;

    move-result-object v5

    .line 6
    invoke-virtual {p0, v5, v4}, Lg/e/a/a/k/c;->h(Lg/e/a/a/e/i;Lg/e/a/a/h/b/b;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v6, p0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface {v4}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object v7

    invoke-interface {v6, v7}, Lg/e/a/a/h/a/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v6

    invoke-virtual {v5}, Lg/e/a/a/e/i;->f()F

    move-result v7

    invoke-virtual {v5}, Lg/e/a/a/e/f;->c()F

    move-result v5

    iget-object v8, p0, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    .line 8
    invoke-virtual {v8}, Lg/e/a/a/a/a;->c()F

    move-result v8

    mul-float v5, v5, v8

    .line 9
    invoke-virtual {v6, v7, v5}, Lg/e/a/a/l/g;->b(FF)Lg/e/a/a/l/d;

    move-result-object v5

    .line 10
    iget-wide v6, v5, Lg/e/a/a/l/d;->c:D

    double-to-float v6, v6

    iget-wide v7, v5, Lg/e/a/a/l/d;->d:D

    double-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Lg/e/a/a/g/c;->k(FF)V

    .line 11
    iget-wide v6, v5, Lg/e/a/a/l/d;->c:D

    double-to-float v3, v6

    iget-wide v5, v5, Lg/e/a/a/l/d;->d:D

    double-to-float v5, v5

    invoke-virtual {p0, p1, v3, v5, v4}, Lg/e/a/a/k/i;->j(Landroid/graphics/Canvas;FFLg/e/a/a/h/b/g;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-virtual {v6, v0}, Lg/e/a/a/k/d;->g(Lg/e/a/a/h/a/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v6, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface {v0}, Lg/e/a/a/h/a/d;->getLineData()Lg/e/a/a/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lg/e/a/a/e/g;->g()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_9

    .line 4
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lg/e/a/a/h/b/e;

    .line 5
    invoke-virtual {v6, v5}, Lg/e/a/a/k/c;->i(Lg/e/a/a/h/b/d;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Lg/e/a/a/h/b/d;->v0()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_6

    .line 6
    :cond_0
    invoke-virtual {v6, v5}, Lg/e/a/a/k/d;->a(Lg/e/a/a/h/b/d;)V

    .line 7
    iget-object v0, v6, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface {v5}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/e/a/a/h/a/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v10

    .line 8
    invoke-interface {v5}, Lg/e/a/a/h/b/e;->K()F

    move-result v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 9
    invoke-interface {v5}, Lg/e/a/a/h/b/e;->y0()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    div-int/lit8 v0, v0, 0x2

    :cond_1
    move v4, v0

    .line 11
    iget-object v0, v6, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget-object v1, v6, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-virtual {v0, v1, v5}, Lg/e/a/a/k/c$a;->a(Lg/e/a/a/h/a/b;Lg/e/a/a/h/b/b;)V

    .line 12
    iget-object v0, v6, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v0}, Lg/e/a/a/a/a;->b()F

    move-result v12

    iget-object v0, v6, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    .line 13
    invoke-virtual {v0}, Lg/e/a/a/a/a;->c()F

    move-result v13

    iget-object v0, v6, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v14, v0, Lg/e/a/a/k/c$a;->a:I

    iget v15, v0, Lg/e/a/a/k/c$a;->b:I

    move-object v11, v5

    .line 14
    invoke-virtual/range {v10 .. v15}, Lg/e/a/a/l/g;->a(Lg/e/a/a/h/b/e;FFII)[F

    move-result-object v10

    .line 15
    invoke-interface {v5}, Lg/e/a/a/h/b/d;->G()Lg/e/a/a/f/e;

    move-result-object v11

    .line 16
    invoke-interface {v5}, Lg/e/a/a/h/b/d;->w0()Lg/e/a/a/l/e;

    move-result-object v0

    invoke-static {v0}, Lg/e/a/a/l/e;->d(Lg/e/a/a/l/e;)Lg/e/a/a/l/e;

    move-result-object v12

    .line 17
    iget v0, v12, Lg/e/a/a/l/e;->c:F

    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    iput v0, v12, Lg/e/a/a/l/e;->c:F

    .line 18
    iget v0, v12, Lg/e/a/a/l/e;->d:F

    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    iput v0, v12, Lg/e/a/a/l/e;->d:F

    const/4 v13, 0x0

    .line 19
    :goto_1
    array-length v0, v10

    if-ge v13, v0, :cond_7

    .line 20
    aget v14, v10, v13

    add-int/lit8 v0, v13, 0x1

    .line 21
    aget v15, v10, v0

    .line 22
    iget-object v0, v6, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0, v14}, Lg/e/a/a/l/j;->A(F)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 23
    :cond_2
    iget-object v0, v6, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0, v14}, Lg/e/a/a/l/j;->z(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0, v15}, Lg/e/a/a/l/j;->D(F)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 24
    :cond_3
    div-int/lit8 v0, v13, 0x2

    iget-object v1, v6, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v1, v1, Lg/e/a/a/k/c$a;->a:I

    add-int/2addr v1, v0

    invoke-interface {v5, v1}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v3

    .line 25
    invoke-interface {v5}, Lg/e/a/a/h/b/d;->o0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v11, v3}, Lg/e/a/a/f/e;->f(Lg/e/a/a/e/i;)Ljava/lang/String;

    move-result-object v2

    int-to-float v1, v4

    sub-float v16, v15, v1

    invoke-interface {v5, v0}, Lg/e/a/a/h/b/d;->Y(I)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v18, v3

    move v3, v14

    move/from16 v19, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lg/e/a/a/k/g;->u(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_2

    :cond_4
    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v16, v5

    .line 27
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lg/e/a/a/e/f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface/range {v16 .. v16}, Lg/e/a/a/h/b/d;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual/range {v18 .. v18}, Lg/e/a/a/e/f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 29
    iget v0, v12, Lg/e/a/a/l/e;->c:F

    add-float/2addr v14, v0

    float-to-int v0, v14

    iget v1, v12, Lg/e/a/a/l/e;->d:F

    add-float/2addr v15, v1

    float-to-int v1, v15

    .line 30
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 31
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v25

    move-object/from16 v20, p1

    move/from16 v22, v0

    move/from16 v23, v1

    .line 32
    invoke-static/range {v20 .. v25}, Lg/e/a/a/l/i;->f(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v19, v4

    move-object/from16 v16, v5

    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x2

    move-object/from16 v5, v16

    move/from16 v4, v19

    goto/16 :goto_1

    .line 33
    :cond_7
    :goto_5
    invoke-static {v12}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method protected n(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2
    iget-object v1, v0, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v1}, Lg/e/a/a/a/a;->c()F

    move-result v1

    .line 3
    iget-object v2, v0, Lg/e/a/a/k/g;->r:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    .line 4
    aput v4, v2, v5

    .line 5
    iget-object v2, v0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface {v2}, Lg/e/a/a/h/a/d;->getLineData()Lg/e/a/a/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lg/e/a/a/e/g;->g()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    .line 6
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 7
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/e/a/a/h/b/e;

    .line 8
    invoke-interface {v7}, Lg/e/a/a/h/b/d;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Lg/e/a/a/h/b/e;->y0()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 9
    invoke-interface {v7}, Lg/e/a/a/h/b/d;->v0()I

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_7

    .line 10
    :cond_0
    iget-object v8, v0, Lg/e/a/a/k/g;->i:Landroid/graphics/Paint;

    invoke-interface {v7}, Lg/e/a/a/h/b/e;->v()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v8, v0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface {v7}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object v9

    invoke-interface {v8, v9}, Lg/e/a/a/h/a/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v8

    .line 12
    iget-object v9, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget-object v10, v0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-virtual {v9, v10, v7}, Lg/e/a/a/k/c$a;->a(Lg/e/a/a/h/a/b;Lg/e/a/a/h/b/b;)V

    .line 13
    invoke-interface {v7}, Lg/e/a/a/h/b/e;->K()F

    move-result v9

    .line 14
    invoke-interface {v7}, Lg/e/a/a/h/b/e;->B0()F

    move-result v10

    .line 15
    invoke-interface {v7}, Lg/e/a/a/h/b/e;->F0()Z

    move-result v11

    if-eqz v11, :cond_1

    cmpg-float v11, v10, v9

    if-gez v11, :cond_1

    cmpl-float v10, v10, v4

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_2

    .line 16
    invoke-interface {v7}, Lg/e/a/a/h/b/e;->v()I

    move-result v11

    const v12, 0x112233

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 17
    :goto_2
    iget-object v12, v0, Lg/e/a/a/k/g;->q:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    .line 18
    iget-object v12, v0, Lg/e/a/a/k/g;->q:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/e/a/a/k/g$b;

    goto :goto_3

    .line 19
    :cond_3
    new-instance v12, Lg/e/a/a/k/g$b;

    invoke-direct {v12, v0, v13}, Lg/e/a/a/k/g$b;-><init>(Lg/e/a/a/k/g;Lg/e/a/a/k/g$a;)V

    .line 20
    iget-object v14, v0, Lg/e/a/a/k/g;->q:Ljava/util/HashMap;

    invoke-virtual {v14, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_3
    invoke-virtual {v12, v7}, Lg/e/a/a/k/g$b;->c(Lg/e/a/a/h/b/e;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 22
    invoke-virtual {v12, v7, v10, v11}, Lg/e/a/a/k/g$b;->a(Lg/e/a/a/h/b/e;ZZ)V

    .line 23
    :cond_4
    iget-object v10, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v11, v10, Lg/e/a/a/k/c$a;->c:I

    iget v10, v10, Lg/e/a/a/k/c$a;->a:I

    add-int/2addr v11, v10

    :goto_4
    if-gt v10, v11, :cond_9

    .line 24
    invoke-interface {v7, v10}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v14

    if-nez v14, :cond_5

    goto :goto_7

    .line 25
    :cond_5
    iget-object v15, v0, Lg/e/a/a/k/g;->r:[F

    invoke-virtual {v14}, Lg/e/a/a/e/i;->f()F

    move-result v16

    aput v16, v15, v3

    .line 26
    iget-object v15, v0, Lg/e/a/a/k/g;->r:[F

    invoke-virtual {v14}, Lg/e/a/a/e/f;->c()F

    move-result v14

    mul-float v14, v14, v1

    aput v14, v15, v5

    .line 27
    iget-object v14, v0, Lg/e/a/a/k/g;->r:[F

    invoke-virtual {v8, v14}, Lg/e/a/a/l/g;->h([F)V

    .line 28
    iget-object v14, v0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    iget-object v15, v0, Lg/e/a/a/k/g;->r:[F

    aget v15, v15, v3

    invoke-virtual {v14, v15}, Lg/e/a/a/l/j;->A(F)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_7

    .line 29
    :cond_6
    iget-object v14, v0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    iget-object v15, v0, Lg/e/a/a/k/g;->r:[F

    aget v15, v15, v3

    invoke-virtual {v14, v15}, Lg/e/a/a/l/j;->z(F)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v14, v0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    iget-object v15, v0, Lg/e/a/a/k/g;->r:[F

    aget v15, v15, v5

    .line 30
    invoke-virtual {v14, v15}, Lg/e/a/a/l/j;->D(F)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_5

    .line 31
    :cond_7
    invoke-virtual {v12, v10}, Lg/e/a/a/k/g$b;->b(I)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 32
    iget-object v15, v0, Lg/e/a/a/k/g;->r:[F

    aget v16, v15, v3

    sub-float v3, v16, v9

    aget v15, v15, v5

    sub-float/2addr v15, v9

    move-object/from16 v4, p1

    invoke-virtual {v4, v14, v3, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v4, p1

    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    :goto_7
    move-object/from16 v4, p1

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method protected o(Lg/e/a/a/h/b/e;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v6, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v0}, Lg/e/a/a/a/a;->c()F

    move-result v0

    .line 2
    iget-object v1, v6, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface/range {p1 .. p1}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/e/a/a/h/a/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v8

    .line 3
    iget-object v1, v6, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget-object v2, v6, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-virtual {v1, v2, v7}, Lg/e/a/a/k/c$a;->a(Lg/e/a/a/h/a/b;Lg/e/a/a/h/b/b;)V

    .line 4
    invoke-interface/range {p1 .. p1}, Lg/e/a/a/h/b/e;->B()F

    move-result v1

    .line 5
    iget-object v2, v6, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object v2, v6, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v3, v2, Lg/e/a/a/k/c$a;->c:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    .line 7
    iget v2, v2, Lg/e/a/a/k/c$a;->a:I

    add-int/2addr v2, v4

    add-int/lit8 v3, v2, -0x2

    const/4 v5, 0x0

    .line 8
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v7, v3}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v3

    sub-int/2addr v2, v4

    .line 9
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v7, v2}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v2

    const/4 v5, -0x1

    if-nez v2, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v9, v6, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Lg/e/a/a/e/i;->f()F

    move-result v10

    invoke-virtual {v2}, Lg/e/a/a/e/f;->c()F

    move-result v11

    mul-float v11, v11, v0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 11
    iget-object v9, v6, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v9, v9, Lg/e/a/a/k/c$a;->a:I

    add-int/2addr v9, v4

    move-object v4, v2

    :goto_0
    iget-object v10, v6, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v11, v10, Lg/e/a/a/k/c$a;->c:I

    iget v10, v10, Lg/e/a/a/k/c$a;->a:I

    add-int/2addr v11, v10

    if-gt v9, v11, :cond_3

    if-ne v5, v9, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v7, v9}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v2

    :goto_1
    add-int/lit8 v5, v9, 0x1

    .line 13
    invoke-interface/range {p1 .. p1}, Lg/e/a/a/h/b/d;->v0()I

    move-result v10

    if-ge v5, v10, :cond_2

    move v9, v5

    .line 14
    :cond_2
    invoke-interface {v7, v9}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v10

    .line 15
    invoke-virtual {v2}, Lg/e/a/a/e/i;->f()F

    move-result v11

    invoke-virtual {v3}, Lg/e/a/a/e/i;->f()F

    move-result v12

    sub-float/2addr v11, v12

    mul-float v11, v11, v1

    .line 16
    invoke-virtual {v2}, Lg/e/a/a/e/f;->c()F

    move-result v12

    invoke-virtual {v3}, Lg/e/a/a/e/f;->c()F

    move-result v3

    sub-float/2addr v12, v3

    mul-float v12, v12, v1

    .line 17
    invoke-virtual {v10}, Lg/e/a/a/e/i;->f()F

    move-result v3

    invoke-virtual {v4}, Lg/e/a/a/e/i;->f()F

    move-result v13

    sub-float/2addr v3, v13

    mul-float v3, v3, v1

    .line 18
    invoke-virtual {v10}, Lg/e/a/a/e/f;->c()F

    move-result v13

    invoke-virtual {v4}, Lg/e/a/a/e/f;->c()F

    move-result v14

    sub-float/2addr v13, v14

    mul-float v13, v13, v1

    .line 19
    iget-object v14, v6, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Lg/e/a/a/e/i;->f()F

    move-result v15

    add-float/2addr v15, v11

    invoke-virtual {v4}, Lg/e/a/a/e/f;->c()F

    move-result v11

    add-float/2addr v11, v12

    mul-float v16, v11, v0

    .line 20
    invoke-virtual {v2}, Lg/e/a/a/e/i;->f()F

    move-result v11

    sub-float v17, v11, v3

    .line 21
    invoke-virtual {v2}, Lg/e/a/a/e/f;->c()F

    move-result v3

    sub-float/2addr v3, v13

    mul-float v18, v3, v0

    invoke-virtual {v2}, Lg/e/a/a/e/i;->f()F

    move-result v19

    invoke-virtual {v2}, Lg/e/a/a/e/f;->c()F

    move-result v3

    mul-float v20, v3, v0

    .line 22
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v3, v4

    move-object v4, v2

    move-object v2, v10

    move/from16 v21, v9

    move v9, v5

    move/from16 v5, v21

    goto :goto_0

    .line 23
    :cond_3
    invoke-interface/range {p1 .. p1}, Lg/e/a/a/h/b/f;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, v6, Lg/e/a/a/k/g;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 25
    iget-object v0, v6, Lg/e/a/a/k/g;->n:Landroid/graphics/Path;

    iget-object v1, v6, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 26
    iget-object v1, v6, Lg/e/a/a/k/g;->k:Landroid/graphics/Canvas;

    iget-object v3, v6, Lg/e/a/a/k/g;->n:Landroid/graphics/Path;

    iget-object v5, v6, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lg/e/a/a/k/g;->p(Landroid/graphics/Canvas;Lg/e/a/a/h/b/e;Landroid/graphics/Path;Lg/e/a/a/l/g;Lg/e/a/a/k/c$a;)V

    .line 27
    :cond_4
    iget-object v0, v6, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-interface/range {p1 .. p1}, Lg/e/a/a/h/b/d;->x0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, v6, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object v0, v6, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    invoke-virtual {v8, v0}, Lg/e/a/a/l/g;->f(Landroid/graphics/Path;)V

    .line 30
    iget-object v0, v6, Lg/e/a/a/k/g;->k:Landroid/graphics/Canvas;

    iget-object v1, v6, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    iget-object v2, v6, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 31
    iget-object v0, v6, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected p(Landroid/graphics/Canvas;Lg/e/a/a/h/b/e;Landroid/graphics/Path;Lg/e/a/a/l/g;Lg/e/a/a/k/c$a;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lg/e/a/a/h/b/e;->j()Lg/e/a/a/f/d;

    move-result-object v0

    iget-object v1, p0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    .line 2
    invoke-interface {v0, p2, v1}, Lg/e/a/a/f/d;->a(Lg/e/a/a/h/b/e;Lg/e/a/a/h/a/d;)F

    move-result v0

    .line 3
    iget v1, p5, Lg/e/a/a/k/c$a;->a:I

    iget v2, p5, Lg/e/a/a/k/c$a;->c:I

    add-int/2addr v1, v2

    invoke-interface {p2, v1}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v1

    invoke-virtual {v1}, Lg/e/a/a/e/i;->f()F

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget p5, p5, Lg/e/a/a/k/c$a;->a:I

    invoke-interface {p2, p5}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object p5

    invoke-virtual {p5}, Lg/e/a/a/e/i;->f()F

    move-result p5

    invoke-virtual {p3, p5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 6
    invoke-virtual {p4, p3}, Lg/e/a/a/l/g;->f(Landroid/graphics/Path;)V

    .line 7
    invoke-interface {p2}, Lg/e/a/a/h/b/f;->E()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p0, p1, p3, p4}, Lg/e/a/a/k/h;->m(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p2}, Lg/e/a/a/h/b/f;->c()I

    move-result p4

    invoke-interface {p2}, Lg/e/a/a/h/b/f;->g()I

    move-result p2

    invoke-virtual {p0, p1, p3, p4, p2}, Lg/e/a/a/k/h;->l(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    :goto_0
    return-void
.end method

.method protected q(Landroid/graphics/Canvas;Lg/e/a/a/h/b/e;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lg/e/a/a/h/b/d;->v0()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-interface {p2}, Lg/e/a/a/h/b/f;->n()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-interface {p2}, Lg/e/a/a/h/b/e;->D()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 4
    sget-object v0, Lg/e/a/a/k/g$a;->a:[I

    invoke-interface {p2}, Lg/e/a/a/h/b/e;->O()Lg/e/a/a/e/k$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lg/e/a/a/k/g;->s(Landroid/graphics/Canvas;Lg/e/a/a/h/b/e;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lg/e/a/a/k/g;->r(Lg/e/a/a/h/b/e;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p2}, Lg/e/a/a/k/g;->o(Lg/e/a/a/h/b/e;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected r(Lg/e/a/a/h/b/e;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v0}, Lg/e/a/a/a/a;->c()F

    move-result v0

    .line 2
    iget-object v1, p0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface {p1}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/e/a/a/h/a/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget-object v3, p0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-virtual {v2, v3, p1}, Lg/e/a/a/k/c$a;->a(Lg/e/a/a/h/a/b;Lg/e/a/a/h/b/b;)V

    .line 4
    iget-object v2, p0, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 5
    iget-object v2, p0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v3, v2, Lg/e/a/a/k/c$a;->c:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 6
    iget v2, v2, Lg/e/a/a/k/c$a;->a:I

    invoke-interface {p1, v2}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Lg/e/a/a/e/i;->f()F

    move-result v5

    invoke-virtual {v2}, Lg/e/a/a/e/f;->c()F

    move-result v6

    mul-float v6, v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    iget-object v3, p0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v3, v3, Lg/e/a/a/k/c$a;->a:I

    add-int/2addr v3, v4

    :goto_0
    iget-object v4, p0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v5, v4, Lg/e/a/a/k/c$a;->c:I

    iget v4, v4, Lg/e/a/a/k/c$a;->a:I

    add-int/2addr v5, v4

    if-gt v3, v5, :cond_0

    .line 9
    invoke-interface {p1, v3}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v4

    .line 10
    invoke-virtual {v2}, Lg/e/a/a/e/i;->f()F

    move-result v5

    .line 11
    invoke-virtual {v4}, Lg/e/a/a/e/i;->f()F

    move-result v6

    invoke-virtual {v2}, Lg/e/a/a/e/i;->f()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v10, v5, v6

    .line 12
    iget-object v7, p0, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    .line 13
    invoke-virtual {v2}, Lg/e/a/a/e/f;->c()F

    move-result v2

    mul-float v9, v2, v0

    .line 14
    invoke-virtual {v4}, Lg/e/a/a/e/f;->c()F

    move-result v2

    mul-float v11, v2, v0

    .line 15
    invoke-virtual {v4}, Lg/e/a/a/e/i;->f()F

    move-result v12

    invoke-virtual {v4}, Lg/e/a/a/e/f;->c()F

    move-result v2

    mul-float v13, v2, v0

    move v8, v10

    .line 16
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Lg/e/a/a/h/b/f;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lg/e/a/a/k/g;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 19
    iget-object v0, p0, Lg/e/a/a/k/g;->n:Landroid/graphics/Path;

    iget-object v2, p0, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 20
    iget-object v4, p0, Lg/e/a/a/k/g;->k:Landroid/graphics/Canvas;

    iget-object v6, p0, Lg/e/a/a/k/g;->n:Landroid/graphics/Path;

    iget-object v8, p0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    move-object v3, p0

    move-object v5, p1

    move-object v7, v1

    invoke-virtual/range {v3 .. v8}, Lg/e/a/a/k/g;->p(Landroid/graphics/Canvas;Lg/e/a/a/h/b/e;Landroid/graphics/Path;Lg/e/a/a/l/g;Lg/e/a/a/k/c$a;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-interface {p1}, Lg/e/a/a/h/b/d;->x0()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object p1, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object p1, p0, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Lg/e/a/a/l/g;->f(Landroid/graphics/Path;)V

    .line 24
    iget-object p1, p0, Lg/e/a/a/k/g;->k:Landroid/graphics/Canvas;

    iget-object v0, p0, Lg/e/a/a/k/g;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 25
    iget-object p1, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected s(Landroid/graphics/Canvas;Lg/e/a/a/h/b/e;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-interface/range {p2 .. p2}, Lg/e/a/a/h/b/d;->v0()I

    move-result v2

    .line 2
    invoke-interface/range {p2 .. p2}, Lg/e/a/a/h/b/e;->O()Lg/e/a/a/e/k$a;

    move-result-object v3

    sget-object v4, Lg/e/a/a/e/k$a;->STEPPED:Lg/e/a/a/e/k$a;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    const/4 v7, 0x2

    if-eqz v3, :cond_1

    const/4 v8, 0x4

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    .line 3
    :goto_1
    iget-object v9, v0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-interface/range {p2 .. p2}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object v10

    invoke-interface {v9, v10}, Lg/e/a/a/h/a/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v9

    .line 4
    iget-object v10, v0, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v10}, Lg/e/a/a/a/a;->c()F

    move-result v10

    .line 5
    iget-object v11, v0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    invoke-interface/range {p2 .. p2}, Lg/e/a/a/h/b/e;->s()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 7
    iget-object v11, v0, Lg/e/a/a/k/g;->k:Landroid/graphics/Canvas;

    goto :goto_2

    :cond_2
    move-object/from16 v11, p1

    .line 8
    :goto_2
    iget-object v12, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget-object v13, v0, Lg/e/a/a/k/g;->h:Lg/e/a/a/h/a/d;

    invoke-virtual {v12, v13, v1}, Lg/e/a/a/k/c$a;->a(Lg/e/a/a/h/a/b;Lg/e/a/a/h/b/b;)V

    .line 9
    invoke-interface/range {p2 .. p2}, Lg/e/a/a/h/b/f;->L()Z

    move-result v12

    if-eqz v12, :cond_3

    if-lez v2, :cond_3

    .line 10
    iget-object v12, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13, v1, v9, v12}, Lg/e/a/a/k/g;->t(Landroid/graphics/Canvas;Lg/e/a/a/h/b/e;Lg/e/a/a/l/g;Lg/e/a/a/k/c$a;)V

    .line 11
    :cond_3
    invoke-interface/range {p2 .. p2}, Lg/e/a/a/h/b/d;->c0()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v6, :cond_c

    .line 12
    iget-object v2, v0, Lg/e/a/a/k/g;->o:[F

    array-length v2, v2

    mul-int/lit8 v12, v8, 0x2

    if-gt v2, v12, :cond_4

    mul-int/lit8 v8, v8, 0x4

    .line 13
    new-array v2, v8, [F

    iput-object v2, v0, Lg/e/a/a/k/g;->o:[F

    .line 14
    :cond_4
    iget-object v2, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v2, v2, Lg/e/a/a/k/c$a;->a:I

    :goto_3
    iget-object v8, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v13, v8, Lg/e/a/a/k/c$a;->c:I

    iget v8, v8, Lg/e/a/a/k/c$a;->a:I

    add-int/2addr v13, v8

    if-gt v2, v13, :cond_13

    .line 15
    invoke-interface {v1, v2}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v8

    if-nez v8, :cond_5

    goto/16 :goto_5

    .line 16
    :cond_5
    iget-object v13, v0, Lg/e/a/a/k/g;->o:[F

    invoke-virtual {v8}, Lg/e/a/a/e/i;->f()F

    move-result v14

    aput v14, v13, v5

    .line 17
    iget-object v13, v0, Lg/e/a/a/k/g;->o:[F

    invoke-virtual {v8}, Lg/e/a/a/e/f;->c()F

    move-result v8

    mul-float v8, v8, v10

    aput v8, v13, v6

    .line 18
    iget-object v8, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v8, v8, Lg/e/a/a/k/c$a;->b:I

    const/4 v13, 0x3

    if-ge v2, v8, :cond_8

    add-int/lit8 v8, v2, 0x1

    .line 19
    invoke-interface {v1, v8}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v8

    if-nez v8, :cond_6

    goto/16 :goto_9

    :cond_6
    if-eqz v3, :cond_7

    .line 20
    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    invoke-virtual {v8}, Lg/e/a/a/e/i;->f()F

    move-result v15

    aput v15, v14, v7

    .line 21
    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    aget v15, v14, v6

    aput v15, v14, v13

    .line 22
    aget v15, v14, v7

    aput v15, v14, v4

    const/4 v15, 0x5

    .line 23
    aget v16, v14, v13

    aput v16, v14, v15

    const/4 v15, 0x6

    .line 24
    invoke-virtual {v8}, Lg/e/a/a/e/i;->f()F

    move-result v16

    aput v16, v14, v15

    .line 25
    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    const/4 v15, 0x7

    invoke-virtual {v8}, Lg/e/a/a/e/f;->c()F

    move-result v8

    mul-float v8, v8, v10

    aput v8, v14, v15

    goto :goto_4

    .line 26
    :cond_7
    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    invoke-virtual {v8}, Lg/e/a/a/e/i;->f()F

    move-result v15

    aput v15, v14, v7

    .line 27
    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    invoke-virtual {v8}, Lg/e/a/a/e/f;->c()F

    move-result v8

    mul-float v8, v8, v10

    aput v8, v14, v13

    goto :goto_4

    .line 28
    :cond_8
    iget-object v8, v0, Lg/e/a/a/k/g;->o:[F

    aget v14, v8, v5

    aput v14, v8, v7

    .line 29
    aget v14, v8, v6

    aput v14, v8, v13

    .line 30
    :goto_4
    iget-object v8, v0, Lg/e/a/a/k/g;->o:[F

    invoke-virtual {v9, v8}, Lg/e/a/a/l/g;->h([F)V

    .line 31
    iget-object v8, v0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    aget v14, v14, v5

    invoke-virtual {v8, v14}, Lg/e/a/a/l/j;->A(F)Z

    move-result v8

    if-nez v8, :cond_9

    goto/16 :goto_9

    .line 32
    :cond_9
    iget-object v8, v0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    aget v14, v14, v7

    invoke-virtual {v8, v14}, Lg/e/a/a/l/j;->z(F)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    aget v14, v14, v6

    .line 33
    invoke-virtual {v8, v14}, Lg/e/a/a/l/j;->B(F)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    aget v13, v14, v13

    .line 34
    invoke-virtual {v8, v13}, Lg/e/a/a/l/j;->y(F)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_5

    .line 35
    :cond_a
    iget-object v8, v0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-interface {v1, v2}, Lg/e/a/a/h/b/d;->P(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v8, v0, Lg/e/a/a/k/g;->o:[F

    iget-object v13, v0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v11, v8, v5, v12, v13}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 37
    :cond_c
    iget-object v12, v0, Lg/e/a/a/k/g;->o:[F

    array-length v12, v12

    mul-int v2, v2, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    if-ge v12, v13, :cond_d

    .line 38
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    iput-object v2, v0, Lg/e/a/a/k/g;->o:[F

    .line 39
    :cond_d
    iget-object v2, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v2, v2, Lg/e/a/a/k/c$a;->a:I

    invoke-interface {v1, v2}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 40
    iget-object v2, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v2, v2, Lg/e/a/a/k/c$a;->a:I

    const/4 v4, 0x0

    :goto_6
    iget-object v12, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v13, v12, Lg/e/a/a/k/c$a;->c:I

    iget v12, v12, Lg/e/a/a/k/c$a;->a:I

    add-int/2addr v13, v12

    if-gt v2, v13, :cond_12

    if-nez v2, :cond_e

    const/4 v12, 0x0

    goto :goto_7

    :cond_e
    add-int/lit8 v12, v2, -0x1

    .line 41
    :goto_7
    invoke-interface {v1, v12}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v12

    .line 42
    invoke-interface {v1, v2}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v13

    if-eqz v12, :cond_11

    if-nez v13, :cond_f

    goto :goto_8

    .line 43
    :cond_f
    iget-object v14, v0, Lg/e/a/a/k/g;->o:[F

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v12}, Lg/e/a/a/e/i;->f()F

    move-result v16

    aput v16, v14, v4

    .line 44
    iget-object v4, v0, Lg/e/a/a/k/g;->o:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v12}, Lg/e/a/a/e/f;->c()F

    move-result v16

    mul-float v16, v16, v10

    aput v16, v4, v15

    if-eqz v3, :cond_10

    .line 45
    iget-object v4, v0, Lg/e/a/a/k/g;->o:[F

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v13}, Lg/e/a/a/e/i;->f()F

    move-result v16

    aput v16, v4, v14

    .line 46
    iget-object v4, v0, Lg/e/a/a/k/g;->o:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v12}, Lg/e/a/a/e/f;->c()F

    move-result v16

    mul-float v16, v16, v10

    aput v16, v4, v15

    .line 47
    iget-object v4, v0, Lg/e/a/a/k/g;->o:[F

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v13}, Lg/e/a/a/e/i;->f()F

    move-result v16

    aput v16, v4, v14

    .line 48
    iget-object v4, v0, Lg/e/a/a/k/g;->o:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v12}, Lg/e/a/a/e/f;->c()F

    move-result v12

    mul-float v12, v12, v10

    aput v12, v4, v15

    .line 49
    :cond_10
    iget-object v4, v0, Lg/e/a/a/k/g;->o:[F

    add-int/lit8 v12, v14, 0x1

    invoke-virtual {v13}, Lg/e/a/a/e/i;->f()F

    move-result v15

    aput v15, v4, v14

    .line 50
    iget-object v4, v0, Lg/e/a/a/k/g;->o:[F

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v13}, Lg/e/a/a/e/f;->c()F

    move-result v13

    mul-float v13, v13, v10

    aput v13, v4, v12

    move v4, v14

    :cond_11
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    if-lez v4, :cond_13

    .line 51
    iget-object v2, v0, Lg/e/a/a/k/g;->o:[F

    invoke-virtual {v9, v2}, Lg/e/a/a/l/g;->h([F)V

    .line 52
    iget-object v2, v0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    iget v2, v2, Lg/e/a/a/k/c$a;->c:I

    add-int/2addr v2, v6

    mul-int v2, v2, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 53
    iget-object v3, v0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lg/e/a/a/h/b/d;->x0()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v1, v0, Lg/e/a/a/k/g;->o:[F

    iget-object v3, v0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v11, v1, v5, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 55
    :cond_13
    :goto_9
    iget-object v1, v0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected t(Landroid/graphics/Canvas;Lg/e/a/a/h/b/e;Lg/e/a/a/l/g;Lg/e/a/a/k/c$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/g;->p:Landroid/graphics/Path;

    .line 2
    iget v1, p4, Lg/e/a/a/k/c$a;->a:I

    .line 3
    iget p4, p4, Lg/e/a/a/k/c$a;->c:I

    add-int/2addr p4, v1

    const/4 v2, 0x0

    :cond_0
    mul-int/lit16 v3, v2, 0x80

    add-int/2addr v3, v1

    add-int/lit16 v4, v3, 0x80

    if-le v4, p4, :cond_1

    move v4, p4

    :cond_1
    if-gt v3, v4, :cond_3

    .line 4
    invoke-direct {p0, p2, v3, v4, v0}, Lg/e/a/a/k/g;->v(Lg/e/a/a/h/b/e;IILandroid/graphics/Path;)V

    .line 5
    invoke-virtual {p3, v0}, Lg/e/a/a/l/g;->f(Landroid/graphics/Path;)V

    .line 6
    invoke-interface {p2}, Lg/e/a/a/h/b/f;->E()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {p0, p1, v0, v5}, Lg/e/a/a/k/h;->m(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p2}, Lg/e/a/a/h/b/f;->c()I

    move-result v5

    invoke-interface {p2}, Lg/e/a/a/h/b/f;->g()I

    move-result v6

    invoke-virtual {p0, p1, v0, v5, v6}, Lg/e/a/a/k/h;->l(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    :cond_3
    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-le v3, v4, :cond_0

    return-void
.end method

.method public u(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/d;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p5, p0, Lg/e/a/a/k/d;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/g;->k:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iput-object v1, p0, Lg/e/a/a/k/g;->k:Landroid/graphics/Canvas;

    .line 4
    :cond_0
    iget-object v0, p0, Lg/e/a/a/k/g;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    :cond_1
    iget-object v0, p0, Lg/e/a/a/k/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 8
    iput-object v1, p0, Lg/e/a/a/k/g;->j:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method
