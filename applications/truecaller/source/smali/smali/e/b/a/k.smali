.class public Le/b/a/k;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/k$o;
    }
.end annotation


# static fields
.field public static final p:Ljava/lang/String;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public b:Le/b/a/e;

.field public final c:Le/b/a/b0/b;

.field public d:F

.field public e:Z

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/b/a/k$o;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le/b/a/x/b;

.field public h:Ljava/lang/String;

.field public i:Le/b/a/b;

.field public j:Le/b/a/x/a;

.field public k:Z

.field public l:Le/b/a/y/l/c;

.field public m:I

.field public n:Z

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/b/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/b/a/k;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/b/a/k;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Le/b/a/b0/b;

    invoke-direct {v0}, Le/b/a/b0/b;-><init>()V

    iput-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Le/b/a/k;->d:F

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Le/b/a/k;->e:Z

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    const/16 v1, 0xff

    .line 8
    iput v1, p0, Le/b/a/k;->m:I

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Le/b/a/k;->o:Z

    .line 10
    new-instance v1, Le/b/a/k$f;

    invoke-direct {v1, p0}, Le/b/a/k$f;-><init>(Le/b/a/k;)V

    .line 11
    iget-object v0, v0, Le/b/a/b0/a;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Le/b/a/y/e;Ljava/lang/Object;Le/b/a/c0/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/b/a/y/e;",
            "TT;",
            "Le/b/a/c0/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/k;->l:Le/b/a/y/l/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$e;

    invoke-direct {v1, p0, p1, p2, p3}, Le/b/a/k$e;-><init>(Le/b/a/k;Le/b/a/y/e;Ljava/lang/Object;Le/b/a/c0/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v1, p1, Le/b/a/y/e;->b:Le/b/a/y/f;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, p2, p3}, Le/b/a/y/f;->f(Ljava/lang/Object;Le/b/a/c0/c;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v3, p0, Le/b/a/k;->l:Le/b/a/y/l/c;

    new-instance v4, Le/b/a/y/e;

    new-array v5, v1, [Ljava/lang/String;

    invoke-direct {v4, v5}, Le/b/a/y/e;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, p1, v1, v0, v4}, Le/b/a/y/l/b;->g(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V

    move-object p1, v0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/y/e;

    .line 10
    iget-object v0, v0, Le/b/a/y/e;->b:Le/b/a/y/f;

    .line 11
    invoke-interface {v0, p2, p3}, Le/b/a/y/f;->f(Ljava/lang/Object;Le/b/a/c0/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {p0}, Le/b/a/k;->invalidateSelf()V

    .line 14
    sget-object p1, Le/b/a/o;->A:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    .line 15
    invoke-virtual {p0}, Le/b/a/k;->d()F

    move-result p1

    invoke-virtual {p0, p1}, Le/b/a/k;->q(F)V

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Le/b/a/y/l/c;

    iget-object v2, v0, Le/b/a/k;->b:Le/b/a/e;

    move-object v4, v2

    .line 2
    iget-object v5, v2, Le/b/a/e;->j:Landroid/graphics/Rect;

    .line 3
    new-instance v15, Le/b/a/y/l/e;

    move-object v2, v15

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v8, Le/b/a/y/l/e$a;->a:Le/b/a/y/l/e$a;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    new-instance v16, Le/b/a/y/j/l;

    move-object/from16 v13, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 6
    invoke-direct/range {v16 .. v25}, Le/b/a/y/j/l;-><init>(Le/b/a/y/j/e;Le/b/a/y/j/m;Le/b/a/y/j/g;Le/b/a/y/j/b;Le/b/a/y/j/d;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;)V

    .line 7
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    sget-object v24, Le/b/a/y/l/e$b;->a:Le/b/a/y/l/e$b;

    const-string v5, "__container"

    const-wide/16 v6, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v16, v17

    move-object/from16 v27, v15

    move/from16 v15, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v2 .. v26}, Le/b/a/y/l/e;-><init>(Ljava/util/List;Le/b/a/e;Ljava/lang/String;JLe/b/a/y/l/e$a;JLjava/lang/String;Ljava/util/List;Le/b/a/y/j/l;IIIFFIILe/b/a/y/j/j;Le/b/a/y/j/k;Ljava/util/List;Le/b/a/y/l/e$b;Le/b/a/y/j/b;Z)V

    .line 8
    iget-object v2, v0, Le/b/a/k;->b:Le/b/a/e;

    .line 9
    iget-object v3, v2, Le/b/a/e;->i:Ljava/util/List;

    move-object/from16 v4, v27

    .line 10
    invoke-direct {v1, v0, v4, v3, v2}, Le/b/a/y/l/c;-><init>(Le/b/a/k;Le/b/a/y/l/e;Ljava/util/List;Le/b/a/e;)V

    iput-object v1, v0, Le/b/a/k;->l:Le/b/a/y/l/c;

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 2
    iget-boolean v1, v0, Le/b/a/b0/b;->k:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/b/a/b0/b;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    .line 5
    iput-object v0, p0, Le/b/a/k;->l:Le/b/a/y/l/c;

    .line 6
    iput-object v0, p0, Le/b/a/k;->g:Le/b/a/x/b;

    .line 7
    iget-object v1, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 8
    iput-object v0, v1, Le/b/a/b0/b;->j:Le/b/a/e;

    const/high16 v0, -0x31000000

    .line 9
    iput v0, v1, Le/b/a/b0/b;->h:F

    const/high16 v0, 0x4f000000

    .line 10
    iput v0, v1, Le/b/a/b0/b;->i:F

    .line 11
    invoke-virtual {p0}, Le/b/a/k;->invalidateSelf()V

    return-void
.end method

.method public d()F
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v0}, Le/b/a/b0/b;->c()F

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/b/a/k;->o:Z

    .line 2
    sget-object v0, Le/b/a/c;->a:Ljava/util/Set;

    .line 3
    iget-object v0, p0, Le/b/a/k;->l:Le/b/a/y/l/c;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Le/b/a/k;->d:F

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Le/b/a/k;->b:Le/b/a/e;

    .line 6
    iget-object v2, v2, Le/b/a/e;->j:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Le/b/a/k;->b:Le/b/a/e;

    .line 9
    iget-object v3, v3, Le/b/a/e;->j:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    .line 12
    iget v0, p0, Le/b/a/k;->d:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v3

    :goto_0
    const/4 v2, -0x1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 14
    iget-object v3, p0, Le/b/a/k;->b:Le/b/a/e;

    .line 15
    iget-object v3, v3, Le/b/a/e;->j:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 17
    iget-object v5, p0, Le/b/a/k;->b:Le/b/a/e;

    .line 18
    iget-object v5, v5, Le/b/a/e;->j:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v4, v3, v1

    mul-float v6, v5, v1

    .line 20
    iget v7, p0, Le/b/a/k;->d:F

    mul-float/2addr v3, v7

    sub-float/2addr v3, v4

    mul-float/2addr v7, v5

    sub-float/2addr v7, v6

    .line 21
    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 23
    :cond_2
    iget-object v0, p0, Le/b/a/k;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 24
    iget-object v0, p0, Le/b/a/k;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 25
    iget-object v0, p0, Le/b/a/k;->l:Le/b/a/y/l/c;

    iget-object v1, p0, Le/b/a/k;->a:Landroid/graphics/Matrix;

    iget v3, p0, Le/b/a/k;->m:I

    invoke-virtual {v0, p1, v1, v3}, Le/b/a/y/l/b;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string v0, "Drawable#draw"

    .line 26
    invoke-static {v0}, Le/b/a/c;->a(Ljava/lang/String;)F

    if-lez v2, :cond_3

    .line 27
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/b/a/k;->l:Le/b/a/y/l/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$g;

    invoke-direct {v1, p0}, Le/b/a/k$g;-><init>(Le/b/a/k;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/b/a/k;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/b/a/k;->e()I

    move-result v0

    if-nez v0, :cond_5

    .line 4
    :cond_1
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Le/b/a/b0/b;->k:Z

    .line 6
    invoke-virtual {v0}, Le/b/a/b0/b;->g()Z

    move-result v1

    .line 7
    iget-object v2, v0, Le/b/a/b0/a;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    .line 9
    invoke-interface {v3, v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v3, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Le/b/a/b0/b;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Le/b/a/b0/b;->e()F

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Le/b/a/b0/b;->f()F

    move-result v1

    :goto_1
    float-to-int v1, v1

    invoke-virtual {v0, v1}, Le/b/a/b0/b;->j(I)V

    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Le/b/a/b0/b;->e:J

    const/4 v1, 0x0

    .line 13
    iput v1, v0, Le/b/a/b0/b;->g:I

    .line 14
    invoke-virtual {v0}, Le/b/a/b0/b;->h()V

    .line 15
    :cond_5
    iget-boolean v0, p0, Le/b/a/k;->e:Z

    if-nez v0, :cond_7

    .line 16
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 17
    iget v1, v0, Le/b/a/b0/b;->c:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 18
    invoke-virtual {v0}, Le/b/a/b0/b;->f()F

    move-result v0

    goto :goto_2

    .line 19
    :cond_6
    invoke-virtual {v0}, Le/b/a/b0/b;->e()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    .line 20
    invoke-virtual {p0, v0}, Le/b/a/k;->h(I)V

    :cond_7
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/k;->l:Le/b/a/y/l/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$h;

    invoke-direct {v1, p0}, Le/b/a/k$h;-><init>(Le/b/a/k;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Le/b/a/b0/b;->k:Z

    .line 5
    invoke-virtual {v0}, Le/b/a/b0/b;->h()V

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Le/b/a/b0/b;->e:J

    .line 7
    invoke-virtual {v0}, Le/b/a/b0/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget v1, v0, Le/b/a/b0/b;->f:F

    .line 9
    invoke-virtual {v0}, Le/b/a/b0/b;->f()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v0}, Le/b/a/b0/b;->e()F

    move-result v1

    iput v1, v0, Le/b/a/b0/b;->f:F

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Le/b/a/b0/b;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget v1, v0, Le/b/a/b0/b;->f:F

    .line 13
    invoke-virtual {v0}, Le/b/a/b0/b;->e()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 14
    invoke-virtual {v0}, Le/b/a/b0/b;->f()F

    move-result v1

    iput v1, v0, Le/b/a/b0/b;->f:F

    :cond_2
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Le/b/a/k;->m:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Le/b/a/e;->j:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 4
    iget v1, p0, Le/b/a/k;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Le/b/a/e;->j:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 4
    iget v1, p0, Le/b/a/k;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$c;

    invoke-direct {v1, p0, p1}, Le/b/a/k$c;-><init>(Le/b/a/k;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v0, p1}, Le/b/a/b0/b;->j(I)V

    return-void
.end method

.method public i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$k;

    invoke-direct {v1, p0, p1}, Le/b/a/k$k;-><init>(Le/b/a/k;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    .line 4
    iget v1, v0, Le/b/a/b0/b;->h:F

    invoke-virtual {v0, v1, p1}, Le/b/a/b0/b;->k(FF)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/k;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/b/a/k;->o:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 2
    iget-boolean v0, v0, Le/b/a/b0/b;->k:Z

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$n;

    invoke-direct {v1, p0, p1}, Le/b/a/k$n;-><init>(Le/b/a/k;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Le/b/a/e;->c(Ljava/lang/String;)Le/b/a/y/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Le/b/a/y/h;->b:F

    iget v0, v0, Le/b/a/y/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Le/b/a/k;->i(I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$l;

    invoke-direct {v1, p0, p1}, Le/b/a/k$l;-><init>(Le/b/a/k;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget v1, v0, Le/b/a/e;->k:F

    .line 4
    iget v0, v0, Le/b/a/e;->l:F

    .line 5
    invoke-static {v1, v0, p1}, Le/b/a/b0/d;->e(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Le/b/a/k;->i(I)V

    return-void
.end method

.method public l(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$b;

    invoke-direct {v1, p0, p1, p2}, Le/b/a/k$b;-><init>(Le/b/a/k;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Le/b/a/b0/b;->k(FF)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$a;

    invoke-direct {v1, p0, p1}, Le/b/a/k$a;-><init>(Le/b/a/k;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Le/b/a/e;->c(Ljava/lang/String;)Le/b/a/y/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Le/b/a/y/h;->b:F

    float-to-int p1, p1

    .line 5
    iget v0, v0, Le/b/a/y/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Le/b/a/k;->l(II)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$i;

    invoke-direct {v1, p0, p1}, Le/b/a/k$i;-><init>(Le/b/a/k;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    int-to-float p1, p1

    .line 4
    iget v1, v0, Le/b/a/b0/b;->i:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Le/b/a/b0/b;->k(FF)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$m;

    invoke-direct {v1, p0, p1}, Le/b/a/k$m;-><init>(Le/b/a/k;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Le/b/a/e;->c(Ljava/lang/String;)Le/b/a/y/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Le/b/a/y/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Le/b/a/k;->n(I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$j;

    invoke-direct {v1, p0, p1}, Le/b/a/k$j;-><init>(Le/b/a/k;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget v1, v0, Le/b/a/e;->k:F

    .line 4
    iget v0, v0, Le/b/a/e;->l:F

    .line 5
    invoke-static {v1, v0, p1}, Le/b/a/b0/d;->e(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Le/b/a/k;->n(I)V

    return-void
.end method

.method public q(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    new-instance v1, Le/b/a/k$d;

    invoke-direct {v1, p0, p1}, Le/b/a/k$d;-><init>(Le/b/a/k;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget v1, v0, Le/b/a/e;->k:F

    .line 4
    iget v0, v0, Le/b/a/e;->l:F

    .line 5
    invoke-static {v1, v0, p1}, Le/b/a/b0/d;->e(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Le/b/a/k;->h(I)V

    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/k;->b:Le/b/a/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Le/b/a/k;->d:F

    .line 3
    iget-object v0, v0, Le/b/a/e;->j:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Le/b/a/k;->b:Le/b/a/e;

    .line 5
    iget-object v2, v2, Le/b/a/e;->j:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/b/a/k;->m:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/b/a/k;->f()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 3
    invoke-virtual {v0}, Le/b/a/b0/b;->i()V

    .line 4
    invoke-virtual {v0}, Le/b/a/b0/b;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/b/a/b0/a;->a(Z)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
