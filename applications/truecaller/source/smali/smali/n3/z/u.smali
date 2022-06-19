.class public Ln3/z/u;
.super Ln3/z/q1;
.source "SourceFile"

# interfaces
.implements Ln3/z/x1$a;
.implements Ln3/z/l0$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/z/q1<",
        "TV;>;",
        "Ln3/z/x1$a;",
        "Ln3/z/l0$b<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final synthetic u:I


# instance fields
.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:Z

.field public final q:Ln3/z/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/l0<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final r:Ln3/z/k2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/k2<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final s:Ln3/z/q1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/q1$a<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/z/k2;Lq3/a/i0;Lq3/a/g0;Lq3/a/g0;Ln3/z/q1$a;Ln3/z/q1$c;Ln3/z/k2$b$b;Ljava/lang/Object;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/k2<",
            "TK;TV;>;",
            "Lq3/a/i0;",
            "Lq3/a/g0;",
            "Lq3/a/g0;",
            "Ln3/z/q1$a<",
            "TV;>;",
            "Ln3/z/q1$c;",
            "Ln3/z/k2$b$b<",
            "TK;TV;>;TK;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    const-string v0, "pagingSource"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyDispatcher"

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialPage"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Ln3/z/x1;

    invoke-direct {v4}, Ln3/z/x1;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    .line 2
    invoke-direct/range {v0 .. v5}, Ln3/z/q1;-><init>(Ln3/z/k2;Lq3/a/i0;Lq3/a/g0;Ln3/z/x1;Ln3/z/q1$c;)V

    iput-object v6, v8, Ln3/z/u;->r:Ln3/z/k2;

    move-object/from16 v0, p5

    iput-object v0, v8, Ln3/z/u;->s:Ln3/z/q1$a;

    move-object/from16 v0, p8

    iput-object v0, v8, Ln3/z/u;->t:Ljava/lang/Object;

    const v0, 0x7fffffff

    .line 3
    iput v0, v8, Ln3/z/u;->n:I

    const/high16 v13, -0x80000000

    .line 4
    iput v13, v8, Ln3/z/u;->o:I

    .line 5
    new-instance v14, Ln3/z/l0;

    .line 6
    iget-object v15, v8, Ln3/z/q1;->h:Ln3/z/x1;

    const-string v0, "null cannot be cast to non-null type androidx.paging.LegacyPageFetcher.KeyProvider<K>"

    .line 7
    invoke-static {v15, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    move-object v7, v15

    .line 8
    invoke-direct/range {v0 .. v7}, Ln3/z/l0;-><init>(Lq3/a/i0;Ln3/z/q1$c;Ln3/z/k2;Lq3/a/g0;Lq3/a/g0;Ln3/z/l0$b;Ln3/z/l0$a;)V

    iput-object v14, v8, Ln3/z/u;->q:Ln3/z/l0;

    .line 9
    iget-boolean v0, v9, Ln3/z/q1$c;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, v8, Ln3/z/q1;->h:Ln3/z/x1;

    .line 11
    iget v2, v10, Ln3/z/k2$b$b;->d:I

    if-eq v2, v13, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 12
    :goto_0
    iget v4, v10, Ln3/z/k2$b$b;->e:I

    if-eq v4, v13, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    const/4 v6, 0x0

    if-eq v2, v13, :cond_2

    if-eq v4, v13, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v7, v1

    move v1, v3

    move-object/from16 v2, p7

    move v3, v5

    move v4, v6

    move-object/from16 v5, p0

    move v6, v7

    .line 13
    invoke-virtual/range {v0 .. v6}, Ln3/z/x1;->h(ILn3/z/k2$b$b;IILn3/z/x1$a;Z)V

    goto :goto_3

    .line 14
    :cond_3
    iget-object v0, v8, Ln3/z/q1;->h:Ln3/z/x1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 15
    iget v4, v10, Ln3/z/k2$b$b;->d:I

    if-eq v4, v13, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    const/4 v6, 0x0

    move v1, v2

    move-object/from16 v2, p7

    move-object/from16 v5, p0

    .line 16
    invoke-virtual/range {v0 .. v6}, Ln3/z/x1;->h(ILn3/z/k2$b$b;IILn3/z/x1$a;Z)V

    .line 17
    :goto_3
    sget-object v0, Ln3/z/t0;->a:Ln3/z/t0;

    .line 18
    iget-object v1, v10, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 19
    invoke-virtual {v8, v0, v1}, Ln3/z/u;->t(Ln3/z/t0;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Ln3/z/t0;Ln3/z/k2$b$b;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/t0;",
            "Ln3/z/k2$b$b<",
            "*TV;>;)Z"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p2, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 2
    iget-object v2, p0, Ln3/z/q1;->h:Ln3/z/x1;

    .line 3
    iget v3, v2, Ln3/z/x1;->b:I

    .line 4
    iget v3, v2, Ln3/z/x1;->f:I

    .line 5
    div-int/lit8 v3, v3, 0x2

    .line 6
    sget-object v3, Ln3/z/t0;->c:Ln3/z/t0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v3, :cond_2

    .line 7
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p2, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, v2, Ln3/z/x1;->a:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget p2, v2, Ln3/z/x1;->f:I

    add-int/2addr p2, v0

    .line 12
    iput p2, v2, Ln3/z/x1;->f:I

    .line 13
    iget p2, v2, Ln3/z/x1;->c:I

    .line 14
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v3, v0, p2

    if-eqz p2, :cond_1

    .line 15
    iget v6, v2, Ln3/z/x1;->c:I

    sub-int/2addr v6, p2

    .line 16
    iput v6, v2, Ln3/z/x1;->c:I

    .line 17
    :cond_1
    iget v6, v2, Ln3/z/x1;->b:I

    .line 18
    iget v2, v2, Ln3/z/x1;->f:I

    add-int/2addr v6, v2

    sub-int/2addr v6, v0

    .line 19
    invoke-virtual {p0, v6, p2, v3}, Ln3/z/u;->q(III)V

    .line 20
    :goto_0
    iget p2, p0, Ln3/z/u;->k:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Ln3/z/u;->k:I

    if-lez p2, :cond_5

    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_5

    goto :goto_2

    .line 22
    :cond_2
    sget-object v3, Ln3/z/t0;->b:Ln3/z/t0;

    if-ne p1, v3, :cond_6

    .line 23
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p2, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    iget-object v3, v2, Ln3/z/x1;->a:Ljava/util/List;

    invoke-interface {v3, v4, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27
    iget p2, v2, Ln3/z/x1;->f:I

    add-int/2addr p2, v0

    .line 28
    iput p2, v2, Ln3/z/x1;->f:I

    .line 29
    iget p2, v2, Ln3/z/x1;->b:I

    .line 30
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr v0, p2

    if-eqz p2, :cond_4

    .line 31
    iget v3, v2, Ln3/z/x1;->b:I

    sub-int/2addr v3, p2

    .line 32
    iput v3, v2, Ln3/z/x1;->b:I

    .line 33
    :cond_4
    iget v3, v2, Ln3/z/x1;->d:I

    sub-int/2addr v3, v0

    iput v3, v2, Ln3/z/x1;->d:I

    .line 34
    iget v2, v2, Ln3/z/x1;->b:I

    .line 35
    invoke-virtual {p0, v2, p2, v0}, Ln3/z/u;->r(III)V

    .line 36
    :goto_1
    iget p2, p0, Ln3/z/u;->j:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Ln3/z/u;->j:I

    if-lez p2, :cond_5

    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_5

    :goto_2
    move v4, v5

    .line 38
    :cond_5
    invoke-virtual {p0, p1, v1}, Ln3/z/u;->t(Ln3/z/t0;Ljava/util/List;)V

    return v4

    .line 39
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected result type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Ln3/z/t0;Ln3/z/r0;)V
    .locals 8

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Ln3/z/q1;->f:Lq3/a/i0;

    iget-object v3, p0, Ln3/z/q1;->g:Lq3/a/g0;

    new-instance v5, Ln3/z/s1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, p2, v0}, Ln3/z/s1;-><init>(Ln3/z/q1;Ln3/z/t0;Ln3/z/r0;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public e(Ls1/z/b/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/p<",
            "-",
            "Ln3/z/t0;",
            "-",
            "Ln3/z/r0;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Ln3/z/u;->q:Ln3/z/l0;

    .line 2
    iget-object v1, v1, Ln3/z/l0;->b:Ln3/z/q1$d;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Ln3/z/t0;->a:Ln3/z/t0;

    iget-object v2, v1, Ln3/z/q1$d;->a:Ln3/z/r0;

    invoke-interface {p1, v0, v2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Ln3/z/t0;->b:Ln3/z/t0;

    iget-object v2, v1, Ln3/z/q1$d;->b:Ln3/z/r0;

    invoke-interface {p1, v0, v2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Ln3/z/t0;->c:Ln3/z/t0;

    iget-object v1, v1, Ln3/z/q1$d;->c:Ln3/z/r0;

    invoke-interface {p1, v0, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/q1;->h:Ln3/z/x1;

    .line 2
    iget-object v1, p0, Ln3/z/q1;->i:Ln3/z/q1$c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "config"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, v0, Ln3/z/x1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Ln3/z/l2;

    .line 6
    iget-object v3, v0, Ln3/z/x1;->a:Ljava/util/List;

    invoke-static {v3}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 7
    iget v4, v0, Ln3/z/x1;->b:I

    .line 8
    iget v5, v0, Ln3/z/x1;->g:I

    add-int/2addr v4, v5

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    new-instance v13, Ln3/z/a2;

    .line 11
    iget v6, v1, Ln3/z/q1$c;->a:I

    .line 12
    iget v7, v1, Ln3/z/q1$c;->b:I

    .line 13
    iget-boolean v8, v1, Ln3/z/q1$c;->c:Z

    .line 14
    iget v9, v1, Ln3/z/q1$c;->d:I

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/16 v12, 0x20

    move-object v5, v13

    .line 15
    invoke-direct/range {v5 .. v12}, Ln3/z/a2;-><init>(IIZIIII)V

    .line 16
    iget v0, v0, Ln3/z/x1;->b:I

    .line 17
    invoke-direct {v2, v3, v4, v13, v0}, Ln3/z/l2;-><init>(Ljava/util/List;Ljava/lang/Integer;Ln3/z/a2;I)V

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p0, Ln3/z/u;->r:Ln3/z/k2;

    invoke-virtual {v1, v0}, Ln3/z/k2;->c(Ln3/z/l2;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Ln3/z/u;->t:Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method public final g()Ln3/z/k2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/z/k2<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/u;->r:Ln3/z/k2;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/u;->q:Ln3/z/l0;

    invoke-virtual {v0}, Ln3/z/l0;->a()Z

    move-result v0

    return v0
.end method

.method public k(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/z/q1;->i:Ln3/z/q1$c;

    .line 2
    iget v0, v0, Ln3/z/q1$c;->b:I

    .line 3
    iget-object v1, p0, Ln3/z/q1;->h:Ln3/z/x1;

    .line 4
    iget v2, v1, Ln3/z/x1;->b:I

    sub-int v3, p1, v2

    sub-int v3, v0, v3

    .line 5
    iget v1, v1, Ln3/z/x1;->f:I

    add-int/2addr v2, v1

    add-int/2addr v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 6
    iget v2, p0, Ln3/z/u;->j:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Ln3/z/u;->j:I

    if-lez v2, :cond_0

    .line 7
    iget-object v2, p0, Ln3/z/u;->q:Ln3/z/l0;

    .line 8
    iget-object v3, v2, Ln3/z/l0;->b:Ln3/z/q1$d;

    .line 9
    iget-object v3, v3, Ln3/z/q1$d;->b:Ln3/z/r0;

    .line 10
    instance-of v4, v3, Ln3/z/r0$c;

    if-eqz v4, :cond_0

    .line 11
    iget-boolean v3, v3, Ln3/z/r0;->a:Z

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {v2}, Ln3/z/l0;->d()V

    .line 13
    :cond_0
    iget v2, p0, Ln3/z/u;->k:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ln3/z/u;->k:I

    if-lez v0, :cond_1

    .line 14
    iget-object v0, p0, Ln3/z/u;->q:Ln3/z/l0;

    .line 15
    iget-object v2, v0, Ln3/z/l0;->b:Ln3/z/q1$d;

    .line 16
    iget-object v2, v2, Ln3/z/q1$d;->c:Ln3/z/r0;

    .line 17
    instance-of v3, v2, Ln3/z/r0$c;

    if-eqz v3, :cond_1

    .line 18
    iget-boolean v2, v2, Ln3/z/r0;->a:Z

    if-nez v2, :cond_1

    .line 19
    invoke-virtual {v0}, Ln3/z/l0;->c()V

    .line 20
    :cond_1
    iget v0, p0, Ln3/z/u;->n:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ln3/z/u;->n:I

    .line 21
    iget v0, p0, Ln3/z/u;->o:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ln3/z/u;->o:I

    .line 22
    invoke-virtual {p0, v1}, Ln3/z/u;->u(Z)V

    return-void
.end method

.method public n(Ln3/z/t0;Ln3/z/r0;)V
    .locals 1

    const-string v0, "loadType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/u;->q:Ln3/z/l0;

    .line 2
    iget-object v0, v0, Ln3/z/l0;->b:Ln3/z/q1$d;

    .line 3
    invoke-virtual {v0, p1, p2}, Ln3/z/q1$d;->b(Ln3/z/t0;Ln3/z/r0;)V

    return-void
.end method

.method public final o(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Ln3/z/u;->s:Ln3/z/q1$a;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/z/q1;->h:Ln3/z/x1;

    .line 3
    iget-object p1, p1, Ln3/z/x1;->a:Ljava/util/List;

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2$b$b;

    .line 4
    iget-object p1, p1, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 5
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "itemAtFront"

    .line 6
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p0, Ln3/z/u;->s:Ln3/z/q1$a;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Ln3/z/q1;->h:Ln3/z/x1;

    .line 9
    iget-object p1, p1, Ln3/z/x1;->a:Ljava/util/List;

    invoke-static {p1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2$b$b;

    .line 10
    iget-object p1, p1, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 11
    invoke-static {p1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "itemAtEnd"

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public p(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Ln3/z/q1;->m(II)V

    .line 2
    iget-object p1, p0, Ln3/z/q1;->h:Ln3/z/x1;

    .line 3
    iget v1, p1, Ln3/z/x1;->b:I

    if-gtz v1, :cond_0

    .line 4
    iget p1, p1, Ln3/z/x1;->c:I

    if-lez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5
    :cond_1
    iput-boolean v0, p0, Ln3/z/u;->p:Z

    return-void
.end method

.method public q(III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/z/q1;->l(II)V

    add-int/2addr p1, p2

    .line 2
    invoke-virtual {p0, p1, p3}, Ln3/z/q1;->m(II)V

    return-void
.end method

.method public r(III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/z/q1;->l(II)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p3}, Ln3/z/q1;->m(II)V

    .line 3
    iget p1, p0, Ln3/z/u;->n:I

    add-int/2addr p1, p3

    iput p1, p0, Ln3/z/u;->n:I

    .line 4
    iget p1, p0, Ln3/z/u;->o:I

    add-int/2addr p1, p3

    iput p1, p0, Ln3/z/u;->o:I

    return-void
.end method

.method public final t(Ln3/z/t0;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/t0;",
            "Ljava/util/List<",
            "+TV;>;)V"
        }
    .end annotation

    move-object v6, p0

    move-object v0, p1

    .line 1
    iget-object v1, v6, Ln3/z/u;->s:Ln3/z/q1$a;

    if-eqz v1, :cond_7

    .line 2
    iget-object v1, v6, Ln3/z/q1;->h:Ln3/z/x1;

    .line 3
    invoke-virtual {v1}, Ln3/z/x1;->a()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_1

    .line 4
    sget-object v1, Ln3/z/t0;->b:Ln3/z/t0;

    if-ne v0, v1, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-nez v4, :cond_2

    .line 5
    sget-object v1, Ln3/z/t0;->c:Ln3/z/t0;

    if-ne v0, v1, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v3

    .line 6
    :goto_2
    iget-object v0, v6, Ln3/z/u;->s:Ln3/z/q1$a;

    if-eqz v0, :cond_6

    .line 7
    iget v0, v6, Ln3/z/u;->n:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, v6, Ln3/z/q1;->h:Ln3/z/x1;

    .line 9
    invoke-virtual {v0}, Ln3/z/x1;->a()I

    move-result v0

    .line 10
    iput v0, v6, Ln3/z/u;->n:I

    .line 11
    :cond_3
    iget v0, v6, Ln3/z/u;->o:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    .line 12
    iput v3, v6, Ln3/z/u;->o:I

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-eqz v7, :cond_7

    .line 13
    :cond_5
    iget-object v8, v6, Ln3/z/q1;->f:Lq3/a/i0;

    .line 14
    iget-object v9, v6, Ln3/z/q1;->g:Lq3/a/g0;

    const/4 v10, 0x0

    .line 15
    new-instance v11, Ln3/z/t;

    const/4 v12, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, v4

    move v3, v5

    move v4, v7

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Ln3/z/t;-><init>(Ln3/z/u;ZZZLs1/w/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_3

    .line 16
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t defer BoundaryCallback, no instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public final u(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Ln3/z/u;->l:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Ln3/z/u;->n:I

    .line 2
    iget-object v3, p0, Ln3/z/q1;->i:Ln3/z/q1$c;

    .line 3
    iget v3, v3, Ln3/z/q1$c;->b:I

    if-gt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4
    :goto_0
    iget-boolean v3, p0, Ln3/z/u;->m:Z

    if-eqz v3, :cond_1

    iget v3, p0, Ln3/z/u;->o:I

    invoke-virtual {p0}, Ln3/z/q1;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .line 5
    iget-object v5, p0, Ln3/z/q1;->i:Ln3/z/q1$c;

    .line 6
    iget v5, v5, Ln3/z/q1$c;->b:I

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    iput-boolean v2, p0, Ln3/z/u;->l:Z

    :cond_3
    if-eqz v1, :cond_4

    .line 8
    iput-boolean v2, p0, Ln3/z/u;->m:Z

    :cond_4
    if-eqz p1, :cond_5

    .line 9
    iget-object v3, p0, Ln3/z/q1;->f:Lq3/a/i0;

    .line 10
    iget-object v4, p0, Ln3/z/q1;->g:Lq3/a/g0;

    const/4 v5, 0x0

    .line 11
    new-instance v6, Ln3/z/u$a;

    const/4 p1, 0x0

    invoke-direct {v6, p0, v0, v1, p1}, Ln3/z/u$a;-><init>(Ln3/z/u;ZZLs1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {p0, v0, v1}, Ln3/z/u;->o(ZZ)V

    :goto_2
    return-void
.end method
