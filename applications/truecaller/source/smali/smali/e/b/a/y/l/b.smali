.class public abstract Le/b/a/y/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/w/b/e;
.implements Le/b/a/w/c/a$a;
.implements Le/b/a/y/f;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Ljava/lang/String;

.field public final m:Landroid/graphics/Matrix;

.field public final n:Le/b/a/k;

.field public final o:Le/b/a/y/l/e;

.field public p:Le/b/a/w/c/g;

.field public q:Le/b/a/y/l/b;

.field public r:Le/b/a/y/l/b;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/y/l/b;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/w/c/a<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final u:Le/b/a/w/c/o;

.field public v:Z


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/e;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Le/b/a/w/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/b/a/w/a;-><init>(I)V

    iput-object v0, p0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Le/b/a/w/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Le/b/a/w/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Le/b/a/y/l/b;->d:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Le/b/a/w/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Le/b/a/w/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Le/b/a/y/l/b;->e:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Le/b/a/w/a;

    invoke-direct {v0, v1}, Le/b/a/w/a;-><init>(I)V

    iput-object v0, p0, Le/b/a/y/l/b;->f:Landroid/graphics/Paint;

    .line 8
    new-instance v2, Le/b/a/w/a;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Le/b/a/w/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Le/b/a/y/l/b;->g:Landroid/graphics/Paint;

    .line 9
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    .line 10
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Le/b/a/y/l/b;->i:Landroid/graphics/RectF;

    .line 11
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Le/b/a/y/l/b;->j:Landroid/graphics/RectF;

    .line 12
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Le/b/a/y/l/b;->k:Landroid/graphics/RectF;

    .line 13
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Le/b/a/y/l/b;->m:Landroid/graphics/Matrix;

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Le/b/a/y/l/b;->t:Ljava/util/List;

    .line 15
    iput-boolean v1, p0, Le/b/a/y/l/b;->v:Z

    .line 16
    iput-object p1, p0, Le/b/a/y/l/b;->n:Le/b/a/k;

    .line 17
    iput-object p2, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object v2, p2, Le/b/a/y/l/e;->c:Ljava/lang/String;

    const-string v3, "#draw"

    .line 20
    invoke-static {p1, v2, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/b/a/y/l/b;->l:Ljava/lang/String;

    .line 21
    iget-object p1, p2, Le/b/a/y/l/e;->u:Le/b/a/y/l/e$b;

    .line 22
    sget-object v2, Le/b/a/y/l/e$b;->c:Le/b/a/y/l/e$b;

    if-ne p1, v2, :cond_0

    .line 23
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 25
    :goto_0
    iget-object p1, p2, Le/b/a/y/l/e;->i:Le/b/a/y/j/l;

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Le/b/a/w/c/o;

    invoke-direct {v0, p1}, Le/b/a/w/c/o;-><init>(Le/b/a/y/j/l;)V

    .line 28
    iput-object v0, p0, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    .line 29
    invoke-virtual {v0, p0}, Le/b/a/w/c/o;->b(Le/b/a/w/c/a$a;)V

    .line 30
    iget-object p1, p2, Le/b/a/y/l/e;->h:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 32
    new-instance p1, Le/b/a/w/c/g;

    .line 33
    iget-object p2, p2, Le/b/a/y/l/e;->h:Ljava/util/List;

    .line 34
    invoke-direct {p1, p2}, Le/b/a/w/c/g;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 35
    iget-object p1, p1, Le/b/a/w/c/g;->a:Ljava/util/List;

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/b/a/w/c/a;

    .line 37
    iget-object p2, p2, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_1
    iget-object p1, p0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 39
    iget-object p1, p1, Le/b/a/w/c/g;->b:Ljava/util/List;

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/b/a/w/c/a;

    .line 41
    invoke-virtual {p0, p2}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 42
    iget-object p2, p2, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 43
    :cond_2
    iget-object p1, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 44
    iget-object p1, p1, Le/b/a/y/l/e;->t:Ljava/util/List;

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 46
    new-instance p1, Le/b/a/w/c/c;

    iget-object p2, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 47
    iget-object p2, p2, Le/b/a/y/l/e;->t:Ljava/util/List;

    .line 48
    invoke-direct {p1, p2}, Le/b/a/w/c/c;-><init>(Ljava/util/List;)V

    .line 49
    iput-boolean v1, p1, Le/b/a/w/c/a;->b:Z

    .line 50
    new-instance p2, Le/b/a/y/l/a;

    invoke-direct {p2, p0, p1}, Le/b/a/y/l/a;-><init>(Le/b/a/y/l/b;Le/b/a/w/c/c;)V

    .line 51
    iget-object v0, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p1}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Le/b/a/y/l/b;->p(Z)V

    .line 53
    invoke-virtual {p0, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    goto :goto_4

    .line 54
    :cond_4
    invoke-virtual {p0, v1}, Le/b/a/y/l/b;->p(Z)V

    :goto_4
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    invoke-virtual {p0}, Le/b/a/y/l/b;->h()V

    .line 3
    iget-object p1, p0, Le/b/a/y/l/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 4
    iget-object p1, p0, Le/b/a/y/l/b;->s:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 6
    iget-object p2, p0, Le/b/a/y/l/b;->m:Landroid/graphics/Matrix;

    iget-object p3, p0, Le/b/a/y/l/b;->s:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/b/a/y/l/b;

    iget-object p3, p3, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    invoke-virtual {p3}, Le/b/a/w/c/o;->e()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Le/b/a/y/l/b;->r:Le/b/a/y/l/b;

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Le/b/a/y/l/b;->m:Landroid/graphics/Matrix;

    iget-object p1, p1, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    invoke-virtual {p1}, Le/b/a/w/c/o;->e()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 9
    :cond_1
    iget-object p1, p0, Le/b/a/y/l/b;->m:Landroid/graphics/Matrix;

    iget-object p2, p0, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    invoke-virtual {p2}, Le/b/a/w/c/o;->e()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public b(Le/b/a/w/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/w/c/a<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le/b/a/y/l/b;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Le/b/a/y/l/b;->l:Ljava/lang/String;

    .line 2
    sget-object v4, Le/b/a/c;->a:Ljava/util/Set;

    .line 3
    iget-boolean v4, v0, Le/b/a/y/l/b;->v:Z

    if-eqz v4, :cond_18

    iget-object v4, v0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 4
    iget-boolean v4, v4, Le/b/a/y/l/e;->v:Z

    if-eqz v4, :cond_0

    goto/16 :goto_9

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Le/b/a/y/l/b;->h()V

    .line 6
    iget-object v3, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 7
    iget-object v3, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 8
    iget-object v3, v0, Le/b/a/y/l/b;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    .line 9
    iget-object v5, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    iget-object v6, v0, Le/b/a/y/l/b;->s:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/b/a/y/l/b;

    iget-object v6, v6, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    invoke-virtual {v6}, Le/b/a/w/c/o;->e()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const-string v3, "Layer#parentMatrix"

    .line 10
    invoke-static {v3}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 11
    iget-object v3, v0, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    .line 12
    iget-object v3, v3, Le/b/a/w/c/o;->j:Le/b/a/w/c/a;

    if-nez v3, :cond_2

    const/16 v3, 0x64

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v3}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    move/from16 v5, p3

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    int-to-float v3, v3

    mul-float/2addr v5, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v5, v3

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 14
    invoke-virtual/range {p0 .. p0}, Le/b/a/y/l/b;->l()Z

    move-result v5

    const-string v6, "Layer#drawLayer"

    const/4 v7, 0x0

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Le/b/a/y/l/b;->k()Z

    move-result v5

    if-nez v5, :cond_3

    .line 15
    iget-object v2, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    iget-object v4, v0, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    invoke-virtual {v4}, Le/b/a/w/c/o;->e()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 16
    iget-object v2, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, v3}, Le/b/a/y/l/b;->j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 17
    invoke-static {v6}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 18
    iget-object v1, v0, Le/b/a/y/l/b;->l:Ljava/lang/String;

    invoke-static {v1}, Le/b/a/c;->a(Ljava/lang/String;)F

    invoke-virtual {v0, v7}, Le/b/a/y/l/b;->m(F)V

    return-void

    .line 19
    :cond_3
    iget-object v5, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v8, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v8, v9}, Le/b/a/y/l/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 20
    iget-object v5, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    .line 21
    invoke-virtual/range {p0 .. p0}, Le/b/a/y/l/b;->l()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    iget-object v8, v0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 23
    iget-object v8, v8, Le/b/a/y/l/e;->u:Le/b/a/y/l/e$b;

    .line 24
    sget-object v10, Le/b/a/y/l/e$b;->c:Le/b/a/y/l/e$b;

    if-ne v8, v10, :cond_5

    goto :goto_2

    .line 25
    :cond_5
    iget-object v8, v0, Le/b/a/y/l/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    iget-object v8, v0, Le/b/a/y/l/b;->q:Le/b/a/y/l/b;

    iget-object v10, v0, Le/b/a/y/l/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v8, v10, v2, v4}, Le/b/a/y/l/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 27
    iget-object v8, v0, Le/b/a/y/l/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 28
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    :cond_6
    :goto_2
    iget-object v5, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    iget-object v8, v0, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    invoke-virtual {v8}, Le/b/a/w/c/o;->e()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 30
    iget-object v5, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v8, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    .line 31
    iget-object v10, v0, Le/b/a/y/l/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v10, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Le/b/a/y/l/b;->k()Z

    move-result v10

    const/4 v11, 0x2

    if-nez v10, :cond_7

    goto/16 :goto_6

    .line 33
    :cond_7
    iget-object v10, v0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 34
    iget-object v10, v10, Le/b/a/w/c/g;->c:Ljava/util/List;

    .line 35
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v12, v9

    :goto_3
    if-ge v12, v10, :cond_b

    .line 36
    iget-object v13, v0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 37
    iget-object v13, v13, Le/b/a/w/c/g;->c:Ljava/util/List;

    .line 38
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/b/a/y/k/g;

    .line 39
    iget-object v14, v0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 40
    iget-object v14, v14, Le/b/a/w/c/g;->a:Ljava/util/List;

    .line 41
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/b/a/w/c/a;

    .line 42
    invoke-virtual {v14}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Path;

    .line 43
    iget-object v15, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v15, v14}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 44
    iget-object v14, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v14, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 45
    iget-object v14, v13, Le/b/a/y/k/g;->a:Le/b/a/y/k/g$a;

    .line 46
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eqz v14, :cond_8

    if-eq v14, v4, :cond_c

    if-eq v14, v11, :cond_8

    goto :goto_4

    .line 47
    :cond_8
    iget-boolean v13, v13, Le/b/a/y/k/g;->d:Z

    if-eqz v13, :cond_9

    goto :goto_6

    .line 48
    :cond_9
    :goto_4
    iget-object v13, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    iget-object v14, v0, Le/b/a/y/l/b;->k:Landroid/graphics/RectF;

    invoke-virtual {v13, v14, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v12, :cond_a

    .line 49
    iget-object v13, v0, Le/b/a/y/l/b;->i:Landroid/graphics/RectF;

    iget-object v14, v0, Le/b/a/y/l/b;->k:Landroid/graphics/RectF;

    invoke-virtual {v13, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_5

    .line 50
    :cond_a
    iget-object v13, v0, Le/b/a/y/l/b;->i:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Le/b/a/y/l/b;->k:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    .line 51
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget-object v15, v0, Le/b/a/y/l/b;->i:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Le/b/a/y/l/b;->k:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    .line 52
    invoke-static {v15, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v15, v0, Le/b/a/y/l/b;->i:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v11, v0, Le/b/a/y/l/b;->k:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 53
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iget-object v15, v0, Le/b/a/y/l/b;->i:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v0, Le/b/a/y/l/b;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 54
    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 55
    invoke-virtual {v13, v14, v9, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x2

    goto/16 :goto_3

    .line 56
    :cond_b
    iget-object v4, v0, Le/b/a/y/l/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 57
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_c
    :goto_6
    const-string v4, "Layer#computeBounds"

    .line 58
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 59
    iget-object v4, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    .line 60
    iget-object v4, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v5, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    .line 61
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    const-string v4, "Layer#saveLayer"

    .line 62
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 63
    invoke-virtual/range {p0 .. p1}, Le/b/a/y/l/b;->i(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v5, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v5, v3}, Le/b/a/y/l/b;->j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 65
    invoke-static {v6}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 66
    invoke-virtual/range {p0 .. p0}, Le/b/a/y/l/b;->k()Z

    move-result v5

    const-string v6, "Layer#restoreLayer"

    if-eqz v5, :cond_15

    .line 67
    iget-object v5, v0, Le/b/a/y/l/b;->b:Landroid/graphics/Matrix;

    .line 68
    sget-object v8, Le/b/a/c;->a:Ljava/util/Set;

    .line 69
    iget-object v8, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v9, v0, Le/b/a/y/l/b;->d:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 71
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    const/4 v9, 0x0

    .line 72
    :goto_7
    iget-object v8, v0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 73
    iget-object v8, v8, Le/b/a/w/c/g;->c:Ljava/util/List;

    .line 74
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v9, v8, :cond_14

    .line 75
    iget-object v8, v0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 76
    iget-object v8, v8, Le/b/a/w/c/g;->c:Ljava/util/List;

    .line 77
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/b/a/y/k/g;

    .line 78
    iget-object v10, v0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 79
    iget-object v10, v10, Le/b/a/w/c/g;->a:Ljava/util/List;

    .line 80
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/b/a/w/c/a;

    .line 81
    iget-object v11, v0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 82
    iget-object v11, v11, Le/b/a/w/c/g;->b:Ljava/util/List;

    .line 83
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/b/a/w/c/a;

    .line 84
    iget-object v12, v8, Le/b/a/y/k/g;->a:Le/b/a/y/k/g$a;

    .line 85
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const v13, 0x40233333    # 2.55f

    if-eqz v12, :cond_12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_f

    const/4 v15, 0x2

    if-eq v12, v15, :cond_d

    goto/16 :goto_8

    .line 86
    :cond_d
    iget-boolean v8, v8, Le/b/a/y/k/g;->d:Z

    if-eqz v8, :cond_e

    .line 87
    iget-object v8, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Le/b/a/y/l/b;->d:Landroid/graphics/Paint;

    .line 88
    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 89
    iget-object v8, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 90
    iget-object v8, v0, Le/b/a/y/l/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v13

    float-to-int v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    invoke-virtual {v10}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 92
    iget-object v10, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 93
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 94
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Le/b/a/y/l/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8

    .line 96
    :cond_e
    iget-object v8, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Le/b/a/y/l/b;->d:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 98
    invoke-virtual {v10}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 99
    iget-object v10, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 100
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 101
    iget-object v8, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v13

    float-to-int v10, v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8

    :cond_f
    const/4 v15, 0x2

    if-nez v9, :cond_10

    .line 104
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/high16 v14, -0x1000000

    .line 105
    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v14, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v1, v14, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 107
    :cond_10
    iget-boolean v8, v8, Le/b/a/y/k/g;->d:Z

    if-eqz v8, :cond_11

    .line 108
    iget-object v8, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Le/b/a/y/l/b;->e:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 110
    iget-object v8, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 111
    iget-object v8, v0, Le/b/a/y/l/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v13

    float-to-int v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    invoke-virtual {v10}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 113
    iget-object v10, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 114
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 115
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Le/b/a/y/l/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8

    .line 117
    :cond_11
    invoke-virtual {v10}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 118
    iget-object v10, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 119
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 120
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Le/b/a/y/l/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_8

    :cond_12
    const/4 v15, 0x2

    .line 121
    iget-boolean v8, v8, Le/b/a/y/k/g;->d:Z

    if-eqz v8, :cond_13

    .line 122
    iget-object v8, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    .line 123
    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 124
    iget-object v8, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 125
    invoke-virtual {v10}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 126
    iget-object v10, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 127
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 128
    iget-object v8, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v13

    float-to-int v10, v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Le/b/a/y/l/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    .line 131
    :cond_13
    invoke-virtual {v10}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 132
    iget-object v10, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 133
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 134
    iget-object v8, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v13

    float-to-int v10, v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    iget-object v8, v0, Le/b/a/y/l/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Le/b/a/y/l/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 136
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    invoke-static {v6}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 138
    :cond_15
    invoke-virtual/range {p0 .. p0}, Le/b/a/y/l/b;->l()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 139
    iget-object v5, v0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget-object v8, v0, Le/b/a/y/l/b;->f:Landroid/graphics/Paint;

    .line 140
    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 141
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 142
    invoke-virtual/range {p0 .. p1}, Le/b/a/y/l/b;->i(Landroid/graphics/Canvas;)V

    .line 143
    iget-object v4, v0, Le/b/a/y/l/b;->q:Le/b/a/y/l/b;

    invoke-virtual {v4, v1, v2, v3}, Le/b/a/y/l/b;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    invoke-static {v6}, Le/b/a/c;->a(Ljava/lang/String;)F

    const-string v2, "Layer#drawMatte"

    .line 146
    invoke-static {v2}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 147
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 148
    invoke-static {v6}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 149
    :cond_17
    iget-object v1, v0, Le/b/a/y/l/b;->l:Ljava/lang/String;

    invoke-static {v1}, Le/b/a/c;->a(Ljava/lang/String;)F

    invoke-virtual {v0, v7}, Le/b/a/y/l/b;->m(F)V

    return-void

    .line 150
    :cond_18
    :goto_9
    invoke-static {v3}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->n:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->invalidateSelf()V

    return-void
.end method

.method public e(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public g(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V
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

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 2
    iget-object v0, v0, Le/b/a/y/l/e;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0, p2}, Le/b/a/y/e;->e(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 5
    iget-object v0, v0, Le/b/a/y/l/e;->c:Ljava/lang/String;

    const-string v1, "__container"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 8
    iget-object v0, v0, Le/b/a/y/l/e;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p4, v0}, Le/b/a/y/e;->a(Ljava/lang/String;)Le/b/a/y/e;

    move-result-object p4

    .line 10
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 11
    iget-object v0, v0, Le/b/a/y/l/e;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0, p2}, Le/b/a/y/e;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p4, p0}, Le/b/a/y/e;->g(Le/b/a/y/f;)Le/b/a/y/e;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 15
    iget-object v0, v0, Le/b/a/y/l/e;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0, p2}, Le/b/a/y/e;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 18
    iget-object v0, v0, Le/b/a/y/l/e;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v0, p2}, Le/b/a/y/e;->d(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    .line 20
    invoke-virtual {p0, p1, v0, p3, p4}, Le/b/a/y/l/b;->n(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V

    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 2
    iget-object v0, v0, Le/b/a/y/l/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/b/a/y/l/b;->r:Le/b/a/y/l/b;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/b/a/y/l/b;->s:Ljava/util/List;

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/y/l/b;->s:Ljava/util/List;

    .line 5
    iget-object v0, p0, Le/b/a/y/l/b;->r:Le/b/a/y/l/b;

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Le/b/a/y/l/b;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, v0, Le/b/a/y/l/b;->r:Le/b/a/y/l/b;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    sget-object v0, Le/b/a/c;->a:Ljava/util/Set;

    .line 2
    iget-object v0, p0, Le/b/a/y/l/b;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v2

    iget-object v8, p0, Le/b/a/y/l/b;->g:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string p1, "Layer#clearLayer"

    .line 3
    invoke-static {p1}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public abstract j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/b/a/w/c/g;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->q:Le/b/a/y/l/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->n:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->b:Le/b/a/e;

    .line 3
    iget-object v0, v0, Le/b/a/e;->a:Le/b/a/s;

    .line 4
    iget-object v1, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 5
    iget-object v1, v1, Le/b/a/y/l/e;->c:Ljava/lang/String;

    .line 6
    iget-boolean v2, v0, Le/b/a/s;->a:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, v0, Le/b/a/s;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/b0/c;

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Le/b/a/b0/c;

    invoke-direct {v2}, Le/b/a/b0/c;-><init>()V

    .line 9
    iget-object v3, v0, Le/b/a/s;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget v3, v2, Le/b/a/b0/c;->a:F

    add-float/2addr v3, p1

    iput v3, v2, Le/b/a/b0/c;->a:F

    .line 11
    iget v4, v2, Le/b/a/b0/c;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Le/b/a/b0/c;->b:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 12
    iput v3, v2, Le/b/a/b0/c;->a:F

    .line 13
    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Le/b/a/b0/c;->b:I

    :cond_2
    const-string v2, "__container"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v0, v0, Le/b/a/s;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/s$a;

    .line 16
    invoke-interface {v1, p1}, Le/b/a/s$a;->a(F)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public n(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V
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

    return-void
.end method

.method public o(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/y/l/b;->u:Le/b/a/w/c/o;

    .line 2
    iget-object v1, v0, Le/b/a/w/c/o;->j:Le/b/a/w/c/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Le/b/a/w/c/a;->i(F)V

    .line 4
    :cond_0
    iget-object v1, v0, Le/b/a/w/c/o;->m:Le/b/a/w/c/a;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1}, Le/b/a/w/c/a;->i(F)V

    .line 6
    :cond_1
    iget-object v1, v0, Le/b/a/w/c/o;->n:Le/b/a/w/c/a;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, p1}, Le/b/a/w/c/a;->i(F)V

    .line 8
    :cond_2
    iget-object v1, v0, Le/b/a/w/c/o;->f:Le/b/a/w/c/a;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1, p1}, Le/b/a/w/c/a;->i(F)V

    .line 10
    :cond_3
    iget-object v1, v0, Le/b/a/w/c/o;->g:Le/b/a/w/c/a;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1, p1}, Le/b/a/w/c/a;->i(F)V

    .line 12
    :cond_4
    iget-object v1, v0, Le/b/a/w/c/o;->h:Le/b/a/w/c/a;

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1, p1}, Le/b/a/w/c/a;->i(F)V

    .line 14
    :cond_5
    iget-object v1, v0, Le/b/a/w/c/o;->i:Le/b/a/w/c/a;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v1, p1}, Le/b/a/w/c/a;->i(F)V

    .line 16
    :cond_6
    iget-object v1, v0, Le/b/a/w/c/o;->k:Le/b/a/w/c/c;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v1, p1}, Le/b/a/w/c/a;->i(F)V

    .line 18
    :cond_7
    iget-object v0, v0, Le/b/a/w/c/o;->l:Le/b/a/w/c/c;

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {v0, p1}, Le/b/a/w/c/a;->i(F)V

    .line 20
    :cond_8
    iget-object v0, p0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    .line 21
    :goto_0
    iget-object v2, p0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 22
    iget-object v2, v2, Le/b/a/w/c/g;->a:Ljava/util/List;

    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 24
    iget-object v2, p0, Le/b/a/y/l/b;->p:Le/b/a/w/c/g;

    .line 25
    iget-object v2, v2, Le/b/a/w/c/g;->a:Ljava/util/List;

    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/w/c/a;

    invoke-virtual {v2, p1}, Le/b/a/w/c/a;->i(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_9
    iget-object v0, p0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 28
    iget v0, v0, Le/b/a/y/l/e;->m:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_a

    div-float/2addr p1, v0

    .line 29
    :cond_a
    iget-object v0, p0, Le/b/a/y/l/b;->q:Le/b/a/y/l/b;

    if-eqz v0, :cond_b

    .line 30
    iget-object v2, v0, Le/b/a/y/l/b;->o:Le/b/a/y/l/e;

    .line 31
    iget v2, v2, Le/b/a/y/l/e;->m:F

    mul-float/2addr v2, p1

    .line 32
    invoke-virtual {v0, v2}, Le/b/a/y/l/b;->o(F)V

    .line 33
    :cond_b
    :goto_1
    iget-object v0, p0, Le/b/a/y/l/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 34
    iget-object v0, p0, Le/b/a/y/l/b;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/w/c/a;

    invoke-virtual {v0, p1}, Le/b/a/w/c/a;->i(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/y/l/b;->v:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Le/b/a/y/l/b;->v:Z

    .line 3
    iget-object p1, p0, Le/b/a/y/l/b;->n:Le/b/a/k;

    invoke-virtual {p1}, Le/b/a/k;->invalidateSelf()V

    :cond_0
    return-void
.end method
