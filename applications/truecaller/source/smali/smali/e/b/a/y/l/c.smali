.class public Le/b/a/y/l/c;
.super Le/b/a/y/l/b;
.source "SourceFile"


# instance fields
.field public w:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/y/l/b;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/e;Ljava/util/List;Le/b/a/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/k;",
            "Le/b/a/y/l/e;",
            "Ljava/util/List<",
            "Le/b/a/y/l/e;",
            ">;",
            "Le/b/a/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/a/y/l/b;-><init>(Le/b/a/k;Le/b/a/y/l/e;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le/b/a/y/l/c;->y:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le/b/a/y/l/c;->z:Landroid/graphics/RectF;

    .line 5
    iget-object p2, p2, Le/b/a/y/l/e;->s:Le/b/a/y/j/b;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object p2

    iput-object p2, p0, Le/b/a/y/l/c;->w:Le/b/a/w/c/a;

    .line 7
    invoke-virtual {p0, p2}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 8
    iget-object p2, p0, Le/b/a/y/l/c;->w:Le/b/a/w/c/a;

    .line 9
    iget-object p2, p2, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iput-object v0, p0, Le/b/a/y/l/c;->w:Le/b/a/w/c/a;

    .line 11
    :goto_0
    new-instance p2, Ln3/g/e;

    .line 12
    iget-object v1, p4, Le/b/a/e;->i:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ln3/g/e;-><init>(I)V

    .line 14
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    if-ltz v1, :cond_a

    .line 15
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/b/a/y/l/e;

    .line 16
    iget-object v6, v5, Le/b/a/y/l/e;->e:Le/b/a/y/l/e$a;

    .line 17
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    if-eq v6, v2, :cond_5

    if-eq v6, v7, :cond_4

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    const-string v6, "Unknown layer type "

    .line 18
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 19
    iget-object v8, v5, Le/b/a/y/l/e;->e:Le/b/a/y/l/e$a;

    .line 20
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/b/a/c;->b(Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_2

    .line 21
    :cond_1
    new-instance v6, Le/b/a/y/l/i;

    invoke-direct {v6, p1, v5}, Le/b/a/y/l/i;-><init>(Le/b/a/k;Le/b/a/y/l/e;)V

    goto :goto_2

    .line 22
    :cond_2
    new-instance v6, Le/b/a/y/l/g;

    invoke-direct {v6, p1, v5}, Le/b/a/y/l/g;-><init>(Le/b/a/k;Le/b/a/y/l/e;)V

    goto :goto_2

    .line 23
    :cond_3
    new-instance v6, Le/b/a/y/l/f;

    invoke-direct {v6, p1, v5}, Le/b/a/y/l/f;-><init>(Le/b/a/k;Le/b/a/y/l/e;)V

    goto :goto_2

    .line 24
    :cond_4
    new-instance v6, Le/b/a/y/l/d;

    invoke-direct {v6, p1, v5}, Le/b/a/y/l/d;-><init>(Le/b/a/k;Le/b/a/y/l/e;)V

    goto :goto_2

    .line 25
    :cond_5
    new-instance v6, Le/b/a/y/l/h;

    invoke-direct {v6, p1, v5}, Le/b/a/y/l/h;-><init>(Le/b/a/k;Le/b/a/y/l/e;)V

    goto :goto_2

    .line 26
    :cond_6
    new-instance v6, Le/b/a/y/l/c;

    .line 27
    iget-object v8, v5, Le/b/a/y/l/e;->g:Ljava/lang/String;

    .line 28
    iget-object v9, p4, Le/b/a/e;->c:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 29
    invoke-direct {v6, p1, v5, v8, p4}, Le/b/a/y/l/c;-><init>(Le/b/a/k;Le/b/a/y/l/e;Ljava/util/List;Le/b/a/e;)V

    :goto_2
    if-nez v6, :cond_7

    goto :goto_3

    .line 30
    :cond_7
    iget-object v8, v6, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 31
    iget-wide v8, v8, Le/b/a/y/l/e;->d:J

    .line 32
    invoke-virtual {p2, v8, v9, v6}, Ln3/g/e;->k(JLjava/lang/Object;)V

    if-eqz v3, :cond_8

    .line 33
    iput-object v6, v3, Le/b/a/y/l/b;->q:Le/b/a/y/l/b;

    move-object v3, v0

    goto :goto_3

    .line 34
    :cond_8
    iget-object v8, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    invoke-interface {v8, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35
    iget-object v4, v5, Le/b/a/y/l/e;->u:Le/b/a/y/l/e$b;

    .line 36
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v2, :cond_9

    if-eq v4, v7, :cond_9

    goto :goto_3

    :cond_9
    move-object v3, v6

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 37
    :cond_a
    :goto_4
    invoke-virtual {p2}, Ln3/g/e;->m()I

    move-result p1

    if-ge v4, p1, :cond_d

    .line 38
    invoke-virtual {p2, v4}, Ln3/g/e;->j(I)J

    move-result-wide p3

    .line 39
    invoke-virtual {p2, p3, p4}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/b/a/y/l/b;

    if-nez p1, :cond_b

    goto :goto_5

    .line 40
    :cond_b
    iget-object p3, p1, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 41
    iget-wide p3, p3, Le/b/a/y/l/e;->f:J

    .line 42
    invoke-virtual {p2, p3, p4}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/b/a/y/l/b;

    if-eqz p3, :cond_c

    .line 43
    iput-object p3, p1, Le/b/a/y/l/b;->r:Le/b/a/y/l/b;

    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/b/a/y/l/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    .line 3
    iget-object v0, p0, Le/b/a/y/l/c;->y:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v0, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/y/l/b;

    iget-object v1, p0, Le/b/a/y/l/c;->y:Landroid/graphics/RectF;

    iget-object v2, p0, Le/b/a/y/l/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Le/b/a/y/l/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 5
    iget-object v0, p0, Le/b/a/y/l/c;->y:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
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
    iget-object v0, p0, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    invoke-virtual {v0, p1, p2}, Le/b/a/w/c/o;->c(Ljava/lang/Object;Le/b/a/c0/c;)Z

    .line 2
    sget-object v0, Le/b/a/o;->A:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 3
    iput-object p1, p0, Le/b/a/y/l/c;->w:Le/b/a/w/c/a;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Le/b/a/w/c/p;

    .line 5
    invoke-direct {v0, p2, p1}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Le/b/a/y/l/c;->w:Le/b/a/w/c/a;

    .line 7
    invoke-virtual {p0, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    sget-object v0, Le/b/a/c;->a:Ljava/util/Set;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Le/b/a/y/l/c;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 4
    iget v2, v1, Le/b/a/y/l/e;->o:I

    int-to-float v2, v2

    .line 5
    iget v1, v1, Le/b/a/y/l/e;->p:I

    int-to-float v1, v1

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v0, p0, Le/b/a/y/l/c;->z:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8
    iget-object v0, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 9
    iget-object v2, p0, Le/b/a/y/l/c;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    iget-object v2, p0, Le/b/a/y/l/c;->z:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    .line 11
    iget-object v2, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/y/l/b;

    .line 12
    invoke-virtual {v2, p1, p2, p3}, Le/b/a/y/l/b;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p1, "CompositionLayer#draw"

    .line 14
    invoke-static {p1}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public n(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V
    .locals 2
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

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/y/l/b;

    invoke-virtual {v1, p1, p2, p3, p4}, Le/b/a/y/l/b;->g(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(F)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Le/b/a/y/l/b;->o(F)V

    .line 2
    iget-object v0, p0, Le/b/a/y/l/c;->w:Le/b/a/w/c/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Le/b/a/y/l/b;->n:Le/b/a/k;

    .line 4
    iget-object p1, p1, Le/b/a/k;->b:Le/b/a/e;

    .line 5
    invoke-virtual {p1}, Le/b/a/e;->a()F

    move-result p1

    .line 6
    iget-object v0, p0, Le/b/a/y/l/c;->w:Le/b/a/w/c/a;

    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    div-float p1, v0, p1

    .line 7
    :cond_0
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 8
    iget v1, v0, Le/b/a/y/l/e;->m:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    div-float/2addr p1, v1

    .line 9
    :cond_1
    iget v1, v0, Le/b/a/y/l/e;->n:F

    iget-object v0, v0, Le/b/a/y/l/e;->b:Le/b/a/e;

    invoke-virtual {v0}, Le/b/a/e;->b()F

    move-result v0

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    .line 10
    iget-object v0, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 11
    iget-object v1, p0, Le/b/a/y/l/c;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/y/l/b;

    invoke-virtual {v1, p1}, Le/b/a/y/l/b;->o(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
