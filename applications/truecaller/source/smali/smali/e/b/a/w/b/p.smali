.class public Le/b/a/w/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/w/b/e;
.implements Le/b/a/w/b/m;
.implements Le/b/a/w/b/j;
.implements Le/b/a/w/c/a$a;
.implements Le/b/a/w/b/k;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Path;

.field public final c:Le/b/a/k;

.field public final d:Le/b/a/y/l/b;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/b/a/w/c/o;

.field public j:Le/b/a/w/b/d;


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/p;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/p;->b:Landroid/graphics/Path;

    .line 4
    iput-object p1, p0, Le/b/a/w/b/p;->c:Le/b/a/k;

    .line 5
    iput-object p2, p0, Le/b/a/w/b/p;->d:Le/b/a/y/l/b;

    .line 6
    iget-object p1, p3, Le/b/a/y/k/k;->a:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Le/b/a/w/b/p;->e:Ljava/lang/String;

    .line 8
    iget-boolean p1, p3, Le/b/a/y/k/k;->e:Z

    .line 9
    iput-boolean p1, p0, Le/b/a/w/b/p;->f:Z

    .line 10
    iget-object p1, p3, Le/b/a/y/k/k;->b:Le/b/a/y/j/b;

    .line 11
    invoke-virtual {p1}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/p;->g:Le/b/a/w/c/a;

    .line 12
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 13
    iget-object p1, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p3, Le/b/a/y/k/k;->c:Le/b/a/y/j/b;

    .line 15
    invoke-virtual {p1}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/p;->h:Le/b/a/w/c/a;

    .line 16
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 17
    iget-object p1, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p3, Le/b/a/y/k/k;->d:Le/b/a/y/j/l;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p3, Le/b/a/w/c/o;

    invoke-direct {p3, p1}, Le/b/a/w/c/o;-><init>(Le/b/a/y/j/l;)V

    .line 21
    iput-object p3, p0, Le/b/a/w/b/p;->i:Le/b/a/w/c/o;

    .line 22
    invoke-virtual {p3, p2}, Le/b/a/w/c/o;->a(Le/b/a/y/l/b;)V

    .line 23
    invoke-virtual {p3, p0}, Le/b/a/w/c/o;->b(Le/b/a/w/c/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/p;->j:Le/b/a/w/b/d;

    invoke-virtual {v0, p1, p2, p3}, Le/b/a/w/b/d;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public b(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Le/b/a/w/b/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/w/b/p;->j:Le/b/a/w/b/d;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 8
    new-instance p1, Le/b/a/w/b/d;

    iget-object v2, p0, Le/b/a/w/b/p;->c:Le/b/a/k;

    iget-object v3, p0, Le/b/a/w/b/p;->d:Le/b/a/y/l/b;

    iget-boolean v5, p0, Le/b/a/w/b/p;->f:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Le/b/a/w/b/d;-><init>(Le/b/a/k;Le/b/a/y/l/b;Ljava/lang/String;ZLjava/util/List;Le/b/a/y/j/l;)V

    iput-object p1, p0, Le/b/a/w/b/p;->j:Le/b/a/w/b/d;

    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/b/a/w/b/p;->g:Le/b/a/w/c/a;

    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2
    iget-object v1, p0, Le/b/a/w/b/p;->h:Le/b/a/w/c/a;

    invoke-virtual {v1}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3
    iget-object v2, p0, Le/b/a/w/b/p;->i:Le/b/a/w/c/o;

    .line 4
    iget-object v2, v2, Le/b/a/w/c/o;->m:Le/b/a/w/c/a;

    .line 5
    invoke-virtual {v2}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 6
    iget-object v4, p0, Le/b/a/w/b/p;->i:Le/b/a/w/c/o;

    .line 7
    iget-object v4, v4, Le/b/a/w/c/o;->n:Le/b/a/w/c/a;

    .line 8
    invoke-virtual {v4}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 9
    iget-object v5, p0, Le/b/a/w/b/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 10
    iget-object v5, p0, Le/b/a/w/b/p;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Le/b/a/w/b/p;->i:Le/b/a/w/c/o;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Le/b/a/w/c/o;->f(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    .line 11
    invoke-static {v2, v4, v7}, Le/b/a/b0/d;->e(FFF)F

    move-result v6

    mul-float/2addr v6, v5

    .line 12
    iget-object v5, p0, Le/b/a/w/b/p;->j:Le/b/a/w/b/d;

    iget-object v7, p0, Le/b/a/w/b/p;->a:Landroid/graphics/Matrix;

    float-to-int v6, v6

    invoke-virtual {v5, p1, v7, v6}, Le/b/a/w/b/d;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/p;->c:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->invalidateSelf()V

    return-void
.end method

.method public e(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/w/b/c;",
            ">;",
            "Ljava/util/List<",
            "Le/b/a/w/b/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/w/b/p;->j:Le/b/a/w/b/d;

    invoke-virtual {v0, p1, p2}, Le/b/a/w/b/d;->e(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public f(Ljava/lang/Object;Le/b/a/c0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/b/a/c0/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/w/b/p;->i:Le/b/a/w/c/o;

    invoke-virtual {v0, p1, p2}, Le/b/a/w/c/o;->c(Ljava/lang/Object;Le/b/a/c0/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Le/b/a/o;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Le/b/a/w/b/p;->g:Le/b/a/w/c/a;

    .line 4
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 5
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Le/b/a/o;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Le/b/a/w/b/p;->h:Le/b/a/w/c/a;

    .line 8
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 9
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    :cond_2
    :goto_0
    return-void
.end method

.method public g(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/y/e;",
            "I",
            "Ljava/util/List<",
            "Le/b/a/y/e;",
            ">;",
            "Le/b/a/y/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Le/b/a/b0/d;->f(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;Le/b/a/w/b/k;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    .line 1
    iget-object v0, p0, Le/b/a/w/b/p;->j:Le/b/a/w/b/d;

    invoke-virtual {v0}, Le/b/a/w/b/d;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/b/a/w/b/p;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v1, p0, Le/b/a/w/b/p;->g:Le/b/a/w/c/a;

    invoke-virtual {v1}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 4
    iget-object v2, p0, Le/b/a/w/b/p;->h:Le/b/a/w/c/a;

    invoke-virtual {v2}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 5
    iget-object v3, p0, Le/b/a/w/b/p;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Le/b/a/w/b/p;->i:Le/b/a/w/c/o;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Le/b/a/w/c/o;->f(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v3, p0, Le/b/a/w/b/p;->b:Landroid/graphics/Path;

    iget-object v4, p0, Le/b/a/w/b/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/b/a/w/b/p;->b:Landroid/graphics/Path;

    return-object v0
.end method
