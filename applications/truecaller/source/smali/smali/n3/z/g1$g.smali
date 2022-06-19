.class public final Ln3/z/g1$g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g1;-><init>(Ljava/lang/Object;Ln3/z/k2;Ln3/z/a2;Lq3/a/x2/f;ZLn3/z/r2;Ln3/z/l2;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/z/y2<",
        "Ln3/z/c1<",
        "TValue;>;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1"
    f = "PageFetcherSnapshot.kt"
    l = {
        0x253,
        0xa0,
        0x25f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Ln3/z/g1;


# direct methods
.method public constructor <init>(Ln3/z/g1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g1$g;->j:Ln3/z/g1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/g1$g;

    iget-object v1, p0, Ln3/z/g1$g;->j:Ln3/z/g1;

    invoke-direct {v0, v1, p2}, Ln3/z/g1$g;-><init>(Ln3/z/g1;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/g1$g;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/g1$g;

    iget-object v1, p0, Ln3/z/g1$g;->j:Ln3/z/g1;

    invoke-direct {v0, v1, p2}, Ln3/z/g1$g;-><init>(Ln3/z/g1;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/g1$g;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/g1$g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    sget-object v0, Ln3/z/t0;->a:Ln3/z/t0;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Ln3/z/g1$g;->i:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v2, v1, Ln3/z/g1$g;->g:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v3, v1, Ln3/z/g1$g;->f:Ljava/lang/Object;

    check-cast v3, Ln3/z/k1$a;

    iget-object v4, v1, Ln3/z/g1$g;->e:Ljava/lang/Object;

    check-cast v4, Ln3/z/y2;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v3, v1, Ln3/z/g1$g;->e:Ljava/lang/Object;

    check-cast v3, Ln3/z/y2;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v3, v1, Ln3/z/g1$g;->h:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v6, v1, Ln3/z/g1$g;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/k1$a;

    iget-object v8, v1, Ln3/z/g1$g;->f:Ljava/lang/Object;

    check-cast v8, Ln3/z/r2;

    iget-object v9, v1, Ln3/z/g1$g;->e:Ljava/lang/Object;

    check-cast v9, Ln3/z/y2;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v3, v1, Ln3/z/g1$g;->e:Ljava/lang/Object;

    check-cast v3, Ln3/z/y2;

    .line 4
    iget-object v8, v1, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 5
    iget-object v8, v8, Ln3/z/g1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    .line 6
    invoke-virtual {v8, v14, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 7
    new-instance v11, Ln3/z/g1$g$a;

    invoke-direct {v11, v1, v3, v7}, Ln3/z/g1$g$a;-><init>(Ln3/z/g1$g;Ln3/z/y2;Ls1/w/d;)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v3

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const/4 v8, 0x6

    .line 8
    invoke-static {v14, v7, v7, v8}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object v14

    .line 9
    new-instance v11, Ln3/z/g1$g$b;

    invoke-direct {v11, v1, v14, v7}, Ln3/z/g1$g$b;-><init>(Ln3/z/g1$g;Lq3/a/w2/j;Ls1/w/d;)V

    move-object v8, v3

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 10
    new-instance v11, Ln3/z/g1$g$c;

    invoke-direct {v11, v1, v14, v7}, Ln3/z/g1$g$c;-><init>(Ln3/z/g1$g;Lq3/a/w2/j;Ls1/w/d;)V

    move-object v9, v15

    move-object/from16 v10, v16

    move/from16 v12, v17

    move-object/from16 v13, v18

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 11
    iget-object v8, v1, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 12
    iget-boolean v9, v8, Ln3/z/g1;->l:Z

    if-eqz v9, :cond_6

    .line 13
    iget-object v9, v8, Ln3/z/g1;->m:Ln3/z/r2;

    if-eqz v9, :cond_6

    .line 14
    iget-object v10, v8, Ln3/z/g1;->n:Ln3/z/l2;

    if-eqz v10, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    iget-object v8, v8, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 16
    iget-object v10, v8, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 17
    iput-object v3, v1, Ln3/z/g1$g;->e:Ljava/lang/Object;

    iput-object v9, v1, Ln3/z/g1$g;->f:Ljava/lang/Object;

    iput-object v8, v1, Ln3/z/g1$g;->g:Ljava/lang/Object;

    iput-object v10, v1, Ln3/z/g1$g;->h:Ljava/lang/Object;

    iput v6, v1, Ln3/z/g1$g;->i:I

    invoke-interface {v10, v7, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_5

    return-object v2

    :cond_5
    move-object v6, v8

    move-object v8, v9

    move-object v9, v3

    move-object v3, v10

    .line 18
    :goto_0
    :try_start_0
    iget-object v6, v6, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 19
    invoke-virtual {v6, v7}, Ln3/z/k1;->a(Ln3/z/i3$a;)Ln3/z/l2;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    move-object v3, v9

    move-object v9, v8

    .line 21
    :goto_1
    invoke-interface {v9, v0, v10}, Ln3/z/r2;->c(Ln3/z/t0;Ln3/z/l2;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 22
    invoke-interface {v3, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0

    .line 23
    :cond_6
    :goto_2
    iget-object v6, v1, Ln3/z/g1$g;->j:Ln3/z/g1;

    iput-object v3, v1, Ln3/z/g1$g;->e:Ljava/lang/Object;

    iput-object v7, v1, Ln3/z/g1$g;->f:Ljava/lang/Object;

    iput-object v7, v1, Ln3/z/g1$g;->g:Ljava/lang/Object;

    iput-object v7, v1, Ln3/z/g1$g;->h:Ljava/lang/Object;

    iput v5, v1, Ln3/z/g1$g;->i:I

    invoke-virtual {v6, v1}, Ln3/z/g1;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_7

    return-object v2

    .line 24
    :cond_7
    :goto_3
    iget-object v5, v1, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 25
    iget-object v5, v5, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 26
    iget-object v6, v5, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 27
    iput-object v3, v1, Ln3/z/g1$g;->e:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g;->f:Ljava/lang/Object;

    iput-object v6, v1, Ln3/z/g1$g;->g:Ljava/lang/Object;

    iput v4, v1, Ln3/z/g1$g;->i:I

    invoke-interface {v6, v7, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_8

    return-object v2

    :cond_8
    move-object v4, v3

    move-object v3, v5

    move-object v2, v6

    .line 28
    :goto_4
    :try_start_1
    iget-object v3, v3, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 29
    iget-object v3, v3, Ln3/z/k1;->k:Ln3/z/s0;

    .line 30
    invoke-virtual {v3, v0}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    invoke-interface {v2, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 32
    instance-of v0, v0, Ln3/z/r0$a;

    if-nez v0, :cond_9

    .line 33
    iget-object v0, v1, Ln3/z/g1$g;->j:Ln3/z/g1;

    invoke-static {v0, v4}, Ln3/z/g1;->a(Ln3/z/g1;Lq3/a/i0;)V

    .line 34
    :cond_9
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :catchall_1
    move-exception v0

    .line 35
    invoke-interface {v2, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0

    .line 36
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempt to collect twice from pageEventFlow, which is an illegal operation. Did you forget to call Flow<PagingData<*>>.cachedIn(coroutineScope)?"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
