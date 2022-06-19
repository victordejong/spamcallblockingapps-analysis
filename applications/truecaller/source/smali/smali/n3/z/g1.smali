.class public final Ln3/z/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lq3/a/x2/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/z0<",
            "Ln3/z/i3;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ln3/z/i3$a;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lq3/a/w2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/j<",
            "Ln3/z/c1<",
            "TValue;>;>;"
        }
    .end annotation
.end field

.field public final e:Ln3/z/k1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/k1$a<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field public final f:Lq3/a/y;

.field public final g:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ln3/z/c1<",
            "TValue;>;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKey;"
        }
    .end annotation
.end field

.field public final i:Ln3/z/k2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/k2<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field public final j:Ln3/z/a2;

.field public final k:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Z

.field public final m:Ln3/z/r2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/r2<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field public final n:Ln3/z/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/l2<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field public final o:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ln3/z/k2;Ln3/z/a2;Lq3/a/x2/f;ZLn3/z/r2;Ln3/z/l2;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;",
            "Ln3/z/k2<",
            "TKey;TValue;>;",
            "Ln3/z/a2;",
            "Lq3/a/x2/f<",
            "Ls1/s;",
            ">;Z",
            "Ln3/z/r2<",
            "TKey;TValue;>;",
            "Ln3/z/l2<",
            "TKey;TValue;>;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pagingSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryFlow"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidate"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/g1;->h:Ljava/lang/Object;

    iput-object p2, p0, Ln3/z/g1;->i:Ln3/z/k2;

    iput-object p3, p0, Ln3/z/g1;->j:Ln3/z/a2;

    iput-object p4, p0, Ln3/z/g1;->k:Lq3/a/x2/f;

    iput-boolean p5, p0, Ln3/z/g1;->l:Z

    iput-object p6, p0, Ln3/z/g1;->m:Ln3/z/r2;

    iput-object p7, p0, Ln3/z/g1;->n:Ln3/z/l2;

    iput-object p8, p0, Ln3/z/g1;->o:Ls1/z/b/a;

    .line 2
    iget p1, p3, Ln3/z/a2;->f:I

    const/4 p4, 0x0

    const/4 p5, 0x1

    const/high16 p6, -0x80000000

    if-eq p1, p6, :cond_1

    invoke-virtual {p2}, Ln3/z/k2;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p5

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x6

    .line 3
    invoke-static {p5, p4, p1, p2}, Lq3/a/x2/g1;->a(IILq3/a/w2/i;I)Lq3/a/x2/z0;

    move-result-object p6

    iput-object p6, p0, Ln3/z/g1;->a:Lq3/a/x2/z0;

    .line 4
    new-instance p6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p6, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p6, p0, Ln3/z/g1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, -0x2

    .line 5
    invoke-static {p4, p1, p1, p2}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object p2

    iput-object p2, p0, Ln3/z/g1;->d:Lq3/a/w2/j;

    .line 6
    new-instance p2, Ln3/z/k1$a;

    invoke-direct {p2, p3}, Ln3/z/k1$a;-><init>(Ln3/z/a2;)V

    iput-object p2, p0, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 7
    invoke-static {p1, p5, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p2

    iput-object p2, p0, Ln3/z/g1;->f:Lq3/a/y;

    .line 8
    new-instance p3, Ln3/z/g1$g;

    invoke-direct {p3, p0, p1}, Ln3/z/g1$g;-><init>(Ln3/z/g1;Ls1/w/d;)V

    const-string p4, "controller"

    .line 9
    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "block"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p4, Ln3/z/o;

    invoke-direct {p4, p2, p3, p1}, Ln3/z/o;-><init>(Lq3/a/p1;Ls1/z/b/p;Ls1/w/d;)V

    invoke-static {p4}, Landroid/support/v4/media/session/MediaSessionCompat;->A1(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    .line 11
    iput-object p1, p0, Ln3/z/g1;->g:Lq3/a/x2/f;

    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PagingConfig.jumpThreshold was set, but the associated PagingSource has not marked support for jumps by overriding PagingSource.jumpingSupported to true."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Ln3/z/g1;Lq3/a/i0;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/z/g1;->j:Ln3/z/a2;

    iget v1, v1, Ln3/z/a2;->f:I

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    new-instance v7, Ln3/z/h1;

    invoke-direct {v7, v0, v2}, Ln3/z/h1;-><init>(Ln3/z/g1;Ls1/w/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3
    new-instance v13, Ln3/z/i1;

    invoke-direct {v13, v0, v2}, Ln3/z/i1;-><init>(Ln3/z/g1;Ls1/w/d;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v15}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    new-instance v6, Ln3/z/j1;

    invoke-direct {v6, v0, v2}, Ln3/z/j1;-><init>(Ln3/z/g1;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public final b(Lq3/a/x2/f;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f<",
            "Ljava/lang/Integer;",
            ">;",
            "Ln3/z/t0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/z/g1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Ln3/z/g1$b;-><init>(Ls1/w/d;Ln3/z/g1;Ln3/z/t0;)V

    .line 2
    sget-object v2, Ln3/z/e0;->a:Ljava/lang/Object;

    const-string v2, "$this$simpleTransformLatest"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "transform"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ln3/z/d0;

    invoke-direct {v2, p1, v0, v1}, Ln3/z/d0;-><init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->A1(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    .line 4
    new-instance v0, Ln3/z/g1$c;

    invoke-direct {v0, p2, v1}, Ln3/z/g1$c;-><init>(Ln3/z/t0;Ls1/w/d;)V

    const-string v2, "$this$simpleRunningReduce"

    .line 5
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "operation"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ln3/z/b0;

    invoke-direct {v2, p1, v0, v1}, Ln3/z/b0;-><init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V

    .line 7
    new-instance p1, Lq3/a/x2/d1;

    invoke-direct {p1, v2}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    const/4 v0, -0x1

    const/4 v2, 0x2

    .line 8
    invoke-static {p1, v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->L(Lq3/a/x2/f;ILq3/a/w2/i;ILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    .line 9
    new-instance v0, Ln3/z/g1$a;

    invoke-direct {v0, p0, p2}, Ln3/z/g1$a;-><init>(Ln3/z/g1;Ln3/z/t0;)V

    invoke-interface {p1, v0, p3}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final c(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ln3/z/l2<",
            "TKey;TValue;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ln3/z/g1$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ln3/z/g1$d;

    iget v1, v0, Ln3/z/g1$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/g1$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/g1$d;

    invoke-direct {v0, p0, p1}, Ln3/z/g1$d;-><init>(Ln3/z/g1;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Ln3/z/g1$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/g1$d;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Ln3/z/g1$d;->i:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    iget-object v2, v0, Ln3/z/g1$d;->h:Ljava/lang/Object;

    check-cast v2, Ln3/z/k1$a;

    iget-object v0, v0, Ln3/z/g1$d;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/g1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 5
    iget-object p1, v2, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 6
    iput-object p0, v0, Ln3/z/g1$d;->g:Ljava/lang/Object;

    iput-object v2, v0, Ln3/z/g1$d;->h:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/g1$d;->i:Ljava/lang/Object;

    iput v4, v0, Ln3/z/g1$d;->e:I

    invoke-interface {p1, v3, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 7
    :goto_1
    :try_start_0
    iget-object p1, v2, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 8
    iget-object v0, v0, Ln3/z/g1;->b:Ln3/z/i3$a;

    invoke-virtual {p1, v0}, Ln3/z/k1;->a(Ln3/z/i3$a;)Ln3/z/l2;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v1, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ln3/z/r0$c;->b:Ln3/z/r0$c;

    sget-object v1, Ln3/z/t0;->c:Ln3/z/t0;

    sget-object v2, Ln3/z/t0;->b:Ln3/z/t0;

    sget-object v3, Ln3/z/t0;->a:Ln3/z/t0;

    instance-of v4, p1, Ln3/z/g1$e;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Ln3/z/g1$e;

    iget v5, v4, Ln3/z/g1$e;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Ln3/z/g1$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Ln3/z/g1$e;

    invoke-direct {v4, p0, p1}, Ln3/z/g1$e;-><init>(Ln3/z/g1;Ls1/w/d;)V

    :goto_0
    iget-object p1, v4, Ln3/z/g1$e;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Ln3/z/g1$e;->e:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object v0, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_c

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :pswitch_1
    iget-object v0, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v1, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    check-cast v1, Ln3/z/k1$a;

    iget-object v2, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    check-cast v2, Ln3/z/k2$b;

    iget-object v6, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/g1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_2
    iget-object v0, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v3, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    check-cast v3, Ln3/z/k1$a;

    iget-object v5, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    check-cast v5, Ln3/z/k2$b;

    iget-object v4, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v4, Ln3/z/g1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    iget-object v0, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v3, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    check-cast v3, Ln3/z/k2$b;

    iget-object v6, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/g1;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :pswitch_4
    iget-object v0, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v6, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    check-cast v6, Ln3/z/k1$a;

    iget-object v7, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    check-cast v7, Ln3/z/k2$b;

    iget-object v9, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v9, Ln3/z/g1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-boolean v6, v4, Ln3/z/g1$e;->k:Z

    iget-object v7, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    check-cast v7, Lq3/a/b3/c;

    iget-object v9, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    check-cast v9, Ln3/z/k1$a;

    iget-object v10, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    check-cast v10, Ln3/z/k2$b;

    iget-object v11, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v11, Ln3/z/g1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v6, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    iget-object v9, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    check-cast v9, Ln3/z/k1$a;

    iget-object v10, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    check-cast v10, Ln3/z/k2$b;

    iget-object v11, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v11, Ln3/z/g1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_7
    iget-object v6, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/g1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_8
    iget-object v6, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    iget-object v9, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v9, Ln3/z/g1;

    :try_start_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto/16 :goto_f

    :pswitch_9
    iget-object v6, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    iget-object v9, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    check-cast v9, Ln3/z/k1$a;

    iget-object v10, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    check-cast v10, Ln3/z/g1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_a
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v9, p0, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 5
    iget-object p1, v9, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 6
    iput-object p0, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object v9, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    iput-object p1, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v4, Ln3/z/g1$e;->e:I

    invoke-interface {p1, v8, v4}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_1

    return-object v5

    :cond_1
    move-object v10, p0

    move-object v6, p1

    .line 7
    :goto_1
    :try_start_3
    iget-object p1, v9, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 8
    iput-object v10, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object v6, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    iput-object v8, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v4, Ln3/z/g1$e;->e:I

    invoke-virtual {v10, p1, v3, v4}, Ln3/z/g1;->i(Ln3/z/k1;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v5, :cond_2

    return-object v5

    :cond_2
    move-object v9, v10

    .line 9
    :goto_2
    invoke-interface {v6, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 10
    iget-object p1, v9, Ln3/z/g1;->h:Ljava/lang/Object;

    invoke-virtual {v9, v3, p1}, Ln3/z/g1;->f(Ln3/z/t0;Ljava/lang/Object;)Ln3/z/k2$a;

    move-result-object p1

    .line 11
    iget-object v6, v9, Ln3/z/g1;->i:Ln3/z/k2;

    iput-object v9, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object v8, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v4, Ln3/z/g1$e;->e:I

    invoke-virtual {v6, p1, v4}, Ln3/z/k2;->e(Ln3/z/k2$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_3

    return-object v5

    :cond_3
    move-object v6, v9

    .line 12
    :goto_3
    check-cast p1, Ln3/z/k2$b;

    .line 13
    instance-of v9, p1, Ln3/z/k2$b$b;

    if-eqz v9, :cond_e

    .line 14
    iget-object v9, v6, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 15
    iget-object v10, v9, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 16
    iput-object v6, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object p1, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    iput-object v9, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    iput-object v10, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    const/4 v11, 0x4

    iput v11, v4, Ln3/z/g1$e;->e:I

    invoke-interface {v10, v8, v4}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_4

    return-object v5

    :cond_4
    move-object v11, v6

    move-object v6, v10

    move-object v10, p1

    .line 17
    :goto_4
    :try_start_4
    iget-object p1, v9, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 18
    move-object v9, v10

    check-cast v9, Ln3/z/k2$b$b;

    invoke-virtual {p1, v7, v3, v9}, Ln3/z/k1;->g(ILn3/z/t0;Ln3/z/k2$b$b;)Z

    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 20
    invoke-interface {v6, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 22
    iget-object v9, v11, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 23
    iget-object v7, v9, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 24
    iput-object v11, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object v10, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    iput-object v9, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    iput-object v7, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    iput-boolean v6, v4, Ln3/z/g1$e;->k:Z

    const/4 p1, 0x5

    iput p1, v4, Ln3/z/g1$e;->e:I

    invoke-interface {v7, v8, v4}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_5

    return-object v5

    .line 25
    :cond_5
    :goto_5
    :try_start_5
    iget-object p1, v9, Ln3/z/k1$a;->b:Ln3/z/k1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 26
    sget-object v9, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    :try_start_6
    invoke-virtual {p1, v3, v9}, Ln3/z/k1;->j(Ln3/z/t0;Ln3/z/r0;)Z

    .line 27
    move-object v9, v10

    check-cast v9, Ln3/z/k2$b$b;

    .line 28
    iget-object v9, v9, Ln3/z/k2$b$b;->b:Ljava/lang/Object;

    if-nez v9, :cond_6

    .line 29
    invoke-virtual {p1, v2, v0}, Ln3/z/k1;->j(Ln3/z/t0;Ln3/z/r0;)Z

    .line 30
    :cond_6
    move-object v9, v10

    check-cast v9, Ln3/z/k2$b$b;

    .line 31
    iget-object v9, v9, Ln3/z/k2$b$b;->c:Ljava/lang/Object;

    if-nez v9, :cond_7

    .line 32
    invoke-virtual {p1, v1, v0}, Ln3/z/k1;->j(Ln3/z/t0;Ln3/z/r0;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 33
    :cond_7
    invoke-interface {v7, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    if-eqz v6, :cond_a

    .line 34
    iget-object v6, v11, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 35
    iget-object p1, v6, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 36
    iput-object v11, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object v10, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    iput-object v6, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    iput-object p1, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v4, Ln3/z/g1$e;->e:I

    invoke-interface {p1, v8, v4}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_8

    return-object v5

    :cond_8
    move-object v0, p1

    move-object v7, v10

    move-object v9, v11

    .line 37
    :goto_6
    :try_start_7
    iget-object p1, v6, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 38
    iget-object v6, v9, Ln3/z/g1;->d:Lq3/a/w2/j;

    move-object v10, v7

    check-cast v10, Ln3/z/k2$b$b;

    invoke-virtual {p1, v10, v3}, Ln3/z/k1;->k(Ln3/z/k2$b$b;Ln3/z/t0;)Ln3/z/c1;

    move-result-object p1

    iput-object v9, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object v7, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    iput-object v0, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    iput-object v8, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, v4, Ln3/z/g1$e;->e:I

    invoke-interface {v6, p1, v4}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-ne p1, v5, :cond_9

    return-object v5

    :cond_9
    move-object v3, v7

    move-object v6, v9

    .line 39
    :goto_7
    invoke-interface {v0, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    goto :goto_9

    :goto_8
    invoke-interface {v0, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    :cond_a
    move-object v3, v10

    move-object v6, v11

    .line 40
    :goto_9
    iget-object p1, v6, Ln3/z/g1;->m:Ln3/z/r2;

    if-eqz p1, :cond_11

    .line 41
    move-object p1, v3

    check-cast p1, Ln3/z/k2$b$b;

    .line 42
    iget-object v0, p1, Ln3/z/k2$b$b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 43
    iget-object p1, p1, Ln3/z/k2$b$b;->c:Ljava/lang/Object;

    if-nez p1, :cond_11

    .line 44
    :cond_b
    iget-object p1, v6, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 45
    iget-object v0, p1, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 46
    iput-object v6, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object v3, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    iput-object p1, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    iput-object v0, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    const/16 v7, 0x8

    iput v7, v4, Ln3/z/g1$e;->e:I

    invoke-interface {v0, v8, v4}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_c

    return-object v5

    :cond_c
    move-object v5, v3

    move-object v4, v6

    move-object v3, p1

    .line 47
    :goto_a
    :try_start_8
    iget-object p1, v3, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 48
    iget-object v3, v4, Ln3/z/g1;->b:Ln3/z/i3$a;

    invoke-virtual {p1, v3}, Ln3/z/k1;->a(Ln3/z/i3$a;)Ln3/z/l2;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 49
    invoke-interface {v0, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 50
    check-cast v5, Ln3/z/k2$b$b;

    .line 51
    iget-object v0, v5, Ln3/z/k2$b$b;->b:Ljava/lang/Object;

    if-nez v0, :cond_d

    .line 52
    iget-object v0, v4, Ln3/z/g1;->m:Ln3/z/r2;

    invoke-interface {v0, v2, p1}, Ln3/z/r2;->c(Ln3/z/t0;Ln3/z/l2;)V

    .line 53
    :cond_d
    iget-object v0, v5, Ln3/z/k2$b$b;->c:Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 54
    iget-object v0, v4, Ln3/z/g1;->m:Ln3/z/r2;

    invoke-interface {v0, v1, p1}, Ln3/z/r2;->c(Ln3/z/t0;Ln3/z/l2;)V

    goto :goto_e

    :catchall_3
    move-exception p1

    .line 55
    invoke-interface {v0, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    :catchall_4
    move-exception p1

    .line 56
    invoke-interface {v7, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    :catchall_5
    move-exception p1

    .line 57
    invoke-interface {v6, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    .line 58
    :cond_e
    instance-of v0, p1, Ln3/z/k2$b$a;

    if-eqz v0, :cond_11

    iget-object v1, v6, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 59
    iget-object v0, v1, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 60
    iput-object v6, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object p1, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    iput-object v1, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    iput-object v0, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    const/16 v2, 0x9

    iput v2, v4, Ln3/z/g1$e;->e:I

    invoke-interface {v0, v8, v4}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_f

    return-object v5

    :cond_f
    move-object v2, p1

    .line 61
    :goto_b
    :try_start_9
    iget-object p1, v1, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 62
    new-instance v1, Ln3/z/r0$a;

    check-cast v2, Ln3/z/k2$b$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v8}, Ln3/z/r0$a;-><init>(Ljava/lang/Throwable;)V

    .line 63
    invoke-virtual {p1, v3, v1}, Ln3/z/k1;->j(Ln3/z/t0;Ln3/z/r0;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 64
    iget-object p1, v6, Ln3/z/g1;->d:Lq3/a/w2/j;

    new-instance v2, Ln3/z/c1$c;

    invoke-direct {v2, v3, v7, v1}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    iput-object v0, v4, Ln3/z/g1$e;->g:Ljava/lang/Object;

    iput-object v8, v4, Ln3/z/g1$e;->h:Ljava/lang/Object;

    iput-object v8, v4, Ln3/z/g1$e;->i:Ljava/lang/Object;

    iput-object v8, v4, Ln3/z/g1$e;->j:Ljava/lang/Object;

    const/16 v1, 0xa

    iput v1, v4, Ln3/z/g1$e;->e:I

    invoke-interface {p1, v2, v4}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-ne p1, v5, :cond_10

    return-object v5

    .line 65
    :cond_10
    :goto_c
    invoke-interface {v0, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    goto :goto_e

    :goto_d
    invoke-interface {v0, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    .line 66
    :cond_11
    :goto_e
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 67
    :goto_f
    invoke-interface {v6, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ln3/z/t0;Ln3/z/f0;Ls1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/t0;",
            "Ln3/z/f0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    sget-object v3, Ls1/s;->a:Ls1/s;

    sget-object v4, Ln3/z/t0;->c:Ln3/z/t0;

    sget-object v5, Ln3/z/t0;->b:Ln3/z/t0;

    instance-of v6, v2, Ln3/z/g1$f;

    if-eqz v6, :cond_0

    move-object v6, v2

    check-cast v6, Ln3/z/g1$f;

    iget v7, v6, Ln3/z/g1$f;->e:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Ln3/z/g1$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v6, Ln3/z/g1$f;

    invoke-direct {v6, v1, v2}, Ln3/z/g1$f;-><init>(Ln3/z/g1;Ls1/w/d;)V

    :goto_0
    iget-object v2, v6, Ln3/z/g1$f;->d:Ljava/lang/Object;

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v8, v6, Ln3/z/g1$f;->e:I

    const-string v9, "Use doInitialLoad for LoadType == REFRESH"

    packed-switch v8, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget v0, v6, Ln3/z/g1$f;->s:I

    iget v8, v6, Ln3/z/g1$f;->r:I

    iget-object v10, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    check-cast v10, Lq3/a/b3/c;

    iget-object v11, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    check-cast v11, Ln3/z/k1$a;

    iget-object v12, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/y;

    iget-object v13, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v13, Ls1/z/c/c0;

    iget-object v14, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v14, Ls1/z/c/a0;

    iget-object v15, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v15, Ln3/z/f0;

    move/from16 p1, v0

    iget-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v0, Ln3/z/t0;

    move-object/from16 p2, v0

    iget-object v0, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/g1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    move-object v2, v0

    move/from16 v0, p1

    goto/16 :goto_1f

    :pswitch_1
    iget-object v0, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lq3/a/b3/c;

    iget-object v0, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    check-cast v0, Ln3/z/k2$b;

    iget-object v10, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    check-cast v10, Ln3/z/k2$a;

    iget-object v11, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/y;

    iget-object v12, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/c0;

    iget-object v13, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v13, Ls1/z/c/a0;

    iget-object v14, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v14, Ln3/z/f0;

    iget-object v15, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v15, Ln3/z/t0;

    move-object/from16 p1, v0

    iget-object v0, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/g1;

    :try_start_0
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move-object v1, v0

    move-object/from16 v0, p1

    move-object/from16 v17, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v17

    goto/16 :goto_1c

    :pswitch_2
    iget-object v0, v6, Ln3/z/g1$f;->p:Ljava/lang/Object;

    check-cast v0, Ln3/z/k1;

    iget-object v8, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;

    check-cast v8, Lq3/a/b3/c;

    iget-object v10, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    check-cast v10, Ln3/z/k2$b;

    iget-object v11, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    check-cast v11, Ln3/z/k2$a;

    iget-object v12, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/y;

    iget-object v13, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v13, Ls1/z/c/c0;

    iget-object v14, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v14, Ls1/z/c/a0;

    iget-object v15, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v15, Ln3/z/f0;

    move-object/from16 p1, v0

    iget-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v0, Ln3/z/t0;

    move-object/from16 p2, v0

    iget-object v0, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/g1;

    :try_start_1
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v8

    move-object v2, v15

    move-object/from16 v8, p1

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v0

    move-object/from16 v0, p2

    goto/16 :goto_18

    :catchall_0
    move-exception v0

    goto/16 :goto_21

    :pswitch_3
    iget-object v0, v6, Ln3/z/g1$f;->q:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v8, v6, Ln3/z/g1$f;->p:Ljava/lang/Object;

    check-cast v8, Ln3/z/k1$a;

    iget-object v10, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;

    check-cast v10, Ln3/z/t0;

    iget-object v11, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    check-cast v11, Ln3/z/k2$b;

    iget-object v12, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    check-cast v12, Ln3/z/k2$a;

    iget-object v13, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v13, Ls1/z/c/y;

    iget-object v14, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v14, Ls1/z/c/c0;

    iget-object v15, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v15, Ls1/z/c/a0;

    move-object/from16 p1, v0

    iget-object v0, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v0, Ln3/z/f0;

    move-object/from16 p2, v0

    iget-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v0, Ln3/z/t0;

    move-object/from16 p3, v0

    iget-object v0, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/g1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move-object/from16 p1, v3

    move-object v2, v10

    move-object/from16 v3, p2

    move-object v10, v0

    move-object/from16 v0, p3

    goto/16 :goto_17

    :pswitch_4
    iget-object v0, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v0, Ln3/z/k1;

    iget-object v4, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    iget-object v5, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v5, Ln3/z/f0;

    iget-object v6, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/t0;

    :try_start_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    :pswitch_5
    iget-object v0, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v4, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v4, Ln3/z/k1$a;

    iget-object v5, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v5, Ln3/z/k2$b;

    iget-object v8, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v8, Ln3/z/f0;

    iget-object v9, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v9, Ln3/z/t0;

    iget-object v10, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v10, Ln3/z/g1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v6

    move-object v15, v8

    move-object v6, v9

    goto/16 :goto_10

    :pswitch_6
    iget-object v0, v6, Ln3/z/g1$f;->p:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v8, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;

    check-cast v8, Ln3/z/k1$a;

    iget-object v10, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    check-cast v10, Ln3/z/k2$b;

    iget-object v11, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    check-cast v11, Ln3/z/k2$a;

    iget-object v12, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/y;

    iget-object v13, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v13, Ls1/z/c/c0;

    iget-object v14, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v14, Ls1/z/c/a0;

    iget-object v15, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v15, Ln3/z/f0;

    move-object/from16 p1, v0

    iget-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v0, Ln3/z/t0;

    move-object/from16 p2, v0

    iget-object v0, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/g1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    move-object v1, v10

    move-object v10, v0

    move-object/from16 v0, p2

    goto/16 :goto_f

    :pswitch_7
    iget-object v0, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    check-cast v0, Ln3/z/k2$a;

    iget-object v8, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v8, Ls1/z/c/y;

    iget-object v10, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/c0;

    iget-object v11, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/a0;

    iget-object v12, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v12, Ln3/z/f0;

    iget-object v13, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v13, Ln3/z/t0;

    iget-object v14, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v14, Ln3/z/g1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v12

    move-object v12, v8

    move-object/from16 v17, v11

    move-object v11, v0

    move-object v0, v13

    move-object v13, v10

    move-object v10, v14

    :goto_1
    move-object/from16 v14, v17

    goto/16 :goto_c

    :pswitch_8
    iget-object v0, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v8, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    iget-object v10, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v10, Lq3/a/b3/c;

    iget-object v11, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/c0;

    iget-object v12, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/a0;

    iget-object v13, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v13, Ln3/z/f0;

    iget-object v14, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v14, Ln3/z/t0;

    iget-object v15, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v15, Ln3/z/g1;

    :try_start_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v3

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    goto/16 :goto_24

    :pswitch_9
    iget-object v0, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v8, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    check-cast v8, Lq3/a/b3/c;

    iget-object v10, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v10, Ln3/z/k1$a;

    iget-object v11, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/c0;

    iget-object v12, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/a0;

    iget-object v13, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v13, Ln3/z/f0;

    iget-object v14, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v14, Ln3/z/t0;

    iget-object v15, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v15, Ln3/z/g1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v2, v8

    goto/16 :goto_8

    :pswitch_a
    iget-object v0, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v8, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    check-cast v8, Ln3/z/k1$a;

    iget-object v10, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/a0;

    iget-object v11, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    check-cast v11, Ln3/z/f0;

    iget-object v12, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    check-cast v12, Ln3/z/t0;

    iget-object v13, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    check-cast v13, Ln3/z/g1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 v2, 0x1

    move/from16 v17, v2

    move-object v2, v0

    :goto_2
    move/from16 v0, v17

    goto :goto_4

    :pswitch_b
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object v2, Ln3/z/t0;->a:Ln3/z/t0;

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_2a

    .line 5
    new-instance v10, Ls1/z/c/a0;

    invoke-direct {v10}, Ls1/z/c/a0;-><init>()V

    const/4 v2, 0x0

    iput v2, v10, Ls1/z/c/a0;->a:I

    .line 6
    iget-object v8, v1, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 7
    iget-object v2, v8, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 8
    iput-object v1, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v10, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v8, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v2, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    const/4 v12, 0x1

    iput v12, v6, Ln3/z/g1$f;->e:I

    const/4 v13, 0x0

    invoke-interface {v2, v13, v6}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v7, :cond_2

    return-object v7

    :cond_2
    move-object v13, v1

    move/from16 v17, v12

    move-object v12, v0

    goto :goto_2

    .line 9
    :goto_4
    :try_start_4
    iget-object v8, v8, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 10
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eqz v14, :cond_29

    if-eq v14, v0, :cond_5

    const/4 v0, 0x2

    if-eq v14, v0, :cond_3

    goto/16 :goto_7

    .line 11
    :cond_3
    iget v0, v8, Ln3/z/k1;->c:I

    .line 12
    iget-object v14, v11, Ln3/z/f0;->b:Ln3/z/i3;

    .line 13
    iget v14, v14, Ln3/z/i3;->d:I

    add-int/2addr v0, v14

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_4

    .line 14
    iget v14, v10, Ls1/z/c/a0;->a:I

    iget-object v15, v13, Ln3/z/g1;->j:Ln3/z/a2;

    iget v15, v15, Ln3/z/a2;->a:I

    neg-int v0, v0

    mul-int/2addr v15, v0

    add-int/2addr v15, v14

    iput v15, v10, Ls1/z/c/a0;->a:I

    const/4 v0, 0x0

    .line 15
    :cond_4
    iget-object v14, v8, Ln3/z/k1;->b:Ljava/util/List;

    .line 16
    invoke-static {v14}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v14

    if-gt v0, v14, :cond_7

    .line 17
    :goto_5
    iget v15, v10, Ls1/z/c/a0;->a:I

    .line 18
    iget-object v1, v8, Ln3/z/k1;->b:Ljava/util/List;

    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/z/k2$b$b;

    .line 20
    iget-object v1, v1, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v15, v1

    iput v15, v10, Ls1/z/c/a0;->a:I

    if-eq v0, v14, :cond_7

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    goto :goto_5

    .line 22
    :cond_5
    iget v0, v8, Ln3/z/k1;->c:I

    .line 23
    iget-object v1, v11, Ln3/z/f0;->b:Ln3/z/i3;

    .line 24
    iget v1, v1, Ln3/z/i3;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 25
    iget-object v1, v8, Ln3/z/k1;->b:Ljava/util/List;

    .line 26
    invoke-static {v1}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 27
    iget v1, v10, Ls1/z/c/a0;->a:I

    iget-object v14, v13, Ln3/z/g1;->j:Ln3/z/a2;

    iget v14, v14, Ln3/z/a2;->a:I

    .line 28
    iget-object v15, v8, Ln3/z/k1;->b:Ljava/util/List;

    .line 29
    invoke-static {v15}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v15

    invoke-static {v0, v15, v14, v1}, Le/d/c/a/a;->y1(IIII)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    iput v0, v10, Ls1/z/c/a0;->a:I

    .line 30
    :try_start_5
    iget-object v0, v8, Ln3/z/k1;->b:Ljava/util/List;

    .line 31
    invoke-static {v0}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v0

    :cond_6
    if-ltz v0, :cond_7

    const/4 v1, 0x0

    .line 32
    :goto_6
    iget v14, v10, Ls1/z/c/a0;->a:I

    .line 33
    iget-object v15, v8, Ln3/z/k1;->b:Ljava/util/List;

    .line 34
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ln3/z/k2$b$b;

    .line 35
    iget-object v15, v15, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 36
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v10, Ls1/z/c/a0;->a:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    if-eq v1, v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    const/4 v0, 0x0

    .line 37
    invoke-interface {v2, v0}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 38
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    iget-object v1, v13, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 39
    iget-object v2, v1, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 40
    iput-object v13, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v12, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v11, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v10, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v1, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    iput-object v2, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v6, Ln3/z/g1$f;->e:I

    const/4 v8, 0x0

    invoke-interface {v2, v8, v6}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_8

    return-object v7

    :cond_8
    move-object v14, v12

    move-object v15, v13

    move-object v12, v10

    move-object v13, v11

    move-object v11, v0

    move-object v10, v1

    .line 41
    :goto_8
    :try_start_6
    iget-object v1, v10, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 42
    iget v8, v13, Ln3/z/f0;->a:I

    .line 43
    invoke-virtual {v13, v14}, Ln3/z/f0;->a(Ln3/z/t0;)I

    move-result v10

    move-object/from16 v16, v3

    iget v3, v12, Ls1/z/c/a0;->a:I

    add-int/2addr v10, v3

    .line 44
    invoke-virtual {v15, v1, v14, v8, v10}, Ln3/z/g1;->g(Ln3/z/k1;Ln3/z/t0;II)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 45
    iput-object v15, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v14, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v13, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v12, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v11, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v2, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    iput-object v8, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v6, Ln3/z/g1$f;->e:I

    invoke-virtual {v15, v1, v14, v6}, Ln3/z/g1;->i(Ln3/z/k1;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    if-ne v1, v7, :cond_9

    return-object v7

    :cond_9
    move-object v10, v2

    :goto_9
    const/4 v1, 0x0

    move-object v2, v10

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 46
    :goto_a
    invoke-interface {v2, v1}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 47
    iput-object v8, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 48
    new-instance v0, Ls1/z/c/y;

    invoke-direct {v0}, Ls1/z/c/y;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ls1/z/c/y;->a:Z

    move-object/from16 v3, v16

    .line 49
    :goto_b
    iget-object v1, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 50
    invoke-virtual {v15, v14, v1}, Ln3/z/g1;->f(Ln3/z/t0;Ljava/lang/Object;)Ln3/z/k2$a;

    move-result-object v1

    .line 51
    iget-object v2, v15, Ln3/z/g1;->i:Ln3/z/k2;

    iput-object v15, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v14, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v13, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v12, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v11, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    iput-object v1, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    iput-object v8, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v6, Ln3/z/g1$f;->e:I

    invoke-virtual {v2, v1, v6}, Ln3/z/k2;->e(Ln3/z/k2$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_b

    return-object v7

    :cond_b
    move-object v10, v15

    move-object v15, v13

    move-object v13, v11

    move-object v11, v1

    move-object/from16 v17, v12

    move-object v12, v0

    move-object v0, v14

    goto/16 :goto_1

    .line 52
    :goto_c
    move-object v1, v2

    check-cast v1, Ln3/z/k2$b;

    .line 53
    instance-of v2, v1, Ln3/z/k2$b$b;

    if-eqz v2, :cond_15

    .line 54
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_d

    const/4 v8, 0x2

    if-ne v2, v8, :cond_c

    .line 55
    move-object v2, v1

    check-cast v2, Ln3/z/k2$b$b;

    .line 56
    iget-object v2, v2, Ln3/z/k2$b$b;->c:Ljava/lang/Object;

    goto :goto_d

    .line 57
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_d
    move-object v2, v1

    check-cast v2, Ln3/z/k2$b$b;

    .line 59
    iget-object v2, v2, Ln3/z/k2$b$b;->b:Ljava/lang/Object;

    .line 60
    :goto_d
    iget-object v8, v10, Ln3/z/g1;->i:Ln3/z/k2;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v13, Ls1/z/c/c0;->a:Ljava/lang/Object;

    invoke-static {v2, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_f

    if-ne v0, v5, :cond_e

    const-string v0, "prevKey"

    goto :goto_e

    :cond_e
    const-string v0, "nextKey"

    :goto_e
    const-string v1, "The same value, "

    .line 61
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Ls1/z/c/c0;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", was passed as the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in two\n                            | sequential Pages loaded from a PagingSource. Re-using load keys in\n                            | PagingSource is often an error, and must be explicitly enabled by\n                            | overriding PagingSource.keyReuseSupported.\n                            "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-static {v0, v2, v1}, Ls1/f0/n;->d(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_f
    iget-object v8, v10, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 65
    iget-object v2, v8, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 66
    iput-object v10, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v15, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v14, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v13, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v12, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    iput-object v11, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    iput-object v1, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    iput-object v8, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;

    iput-object v2, v6, Ln3/z/g1$f;->p:Ljava/lang/Object;

    move-object/from16 p1, v3

    const/4 v3, 0x5

    iput v3, v6, Ln3/z/g1$f;->e:I

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_10

    return-object v7

    :cond_10
    move-object/from16 v3, p1

    .line 67
    :goto_f
    :try_start_7
    iget-object v8, v8, Ln3/z/k1$a;->b:Ln3/z/k1;

    move-object/from16 p1, v3

    .line 68
    iget v3, v15, Ln3/z/f0;->a:I

    move-object/from16 p2, v6

    .line 69
    move-object v6, v1

    check-cast v6, Ln3/z/k2$b$b;

    invoke-virtual {v8, v3, v0, v6}, Ln3/z/k1;->g(ILn3/z/t0;Ln3/z/k2$b$b;)Z

    move-result v3

    .line 70
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v6, 0x0

    .line 71
    invoke-interface {v2, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v3, p1

    goto/16 :goto_23

    .line 73
    :cond_11
    iget v2, v14, Ls1/z/c/a0;->a:I

    move-object v3, v1

    check-cast v3, Ln3/z/k2$b$b;

    .line 74
    iget-object v6, v3, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 75
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v14, Ls1/z/c/a0;->a:I

    if-ne v0, v5, :cond_12

    .line 76
    iget-object v2, v3, Ln3/z/k2$b$b;->b:Ljava/lang/Object;

    if-eqz v2, :cond_13

    :cond_12
    if-ne v0, v4, :cond_14

    .line 77
    iget-object v2, v3, Ln3/z/k2$b$b;->c:Ljava/lang/Object;

    if-nez v2, :cond_14

    :cond_13
    const/4 v2, 0x1

    .line 78
    iput-boolean v2, v12, Ls1/z/c/y;->a:Z

    :cond_14
    move-object/from16 v3, p1

    move-object/from16 v6, p2

    goto/16 :goto_15

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    .line 79
    invoke-interface {v2, v1}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0

    :cond_15
    move-object/from16 p1, v3

    .line 80
    instance-of v2, v1, Ln3/z/k2$b$a;

    if-eqz v2, :cond_19

    .line 81
    iget-object v4, v10, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 82
    iget-object v2, v4, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 83
    iput-object v10, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v15, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v1, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v4, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v2, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    const/4 v5, 0x6

    iput v5, v6, Ln3/z/g1$f;->e:I

    invoke-interface {v2, v3, v6}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_16

    return-object v7

    :cond_16
    move-object/from16 v3, p1

    move-object v5, v1

    move-object/from16 v17, v6

    move-object v6, v0

    move-object/from16 v0, v17

    .line 84
    :goto_10
    :try_start_8
    iget-object v1, v4, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 85
    new-instance v4, Ln3/z/r0$a;

    check-cast v5, Ln3/z/k2$b$a;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ln3/z/r0$a;-><init>(Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {v1, v6, v4}, Ln3/z/k1;->j(Ln3/z/t0;Ln3/z/r0;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 87
    iget-object v5, v10, Ln3/z/g1;->d:Lq3/a/w2/j;

    new-instance v8, Ln3/z/c1$c;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9, v4}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    iput-object v6, v0, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v15, v0, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v2, v0, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v1, v0, Ln3/z/g1$f;->j:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v4, v0, Ln3/z/g1$f;->l:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, v0, Ln3/z/g1$f;->e:I

    invoke-interface {v5, v8, v0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-ne v0, v7, :cond_17

    return-object v7

    :cond_17
    move-object v0, v1

    move-object v4, v2

    move-object v5, v15

    :goto_11
    move-object v1, v0

    move-object v15, v5

    goto :goto_12

    :cond_18
    move-object v4, v2

    .line 88
    :goto_12
    :try_start_9
    iget-object v0, v1, Ln3/z/k1;->j:Ljava/util/Map;

    .line 89
    iget-object v1, v15, Ln3/z/f0;->b:Ln3/z/i3;

    .line 90
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v0, 0x0

    .line 91
    invoke-interface {v4, v0}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v3

    :goto_13
    move-object v2, v4

    goto :goto_14

    :catchall_4
    move-exception v0

    :goto_14
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0

    :cond_19
    move-object/from16 v3, p1

    .line 92
    :goto_15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_1a

    move-object v2, v5

    goto :goto_16

    :cond_1a
    move-object v2, v4

    .line 93
    :goto_16
    iget-object v8, v10, Ln3/z/g1;->e:Ln3/z/k1$a;

    move-object/from16 p1, v3

    .line 94
    iget-object v3, v8, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 95
    iput-object v10, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v15, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v14, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v13, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v12, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    iput-object v11, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    iput-object v1, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    iput-object v2, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;

    iput-object v8, v6, Ln3/z/g1$f;->p:Ljava/lang/Object;

    iput-object v3, v6, Ln3/z/g1$f;->q:Ljava/lang/Object;

    move-object/from16 p2, v0

    const/16 v0, 0x8

    iput v0, v6, Ln3/z/g1$f;->e:I

    const/4 v0, 0x0

    invoke-interface {v3, v0, v6}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_1b

    return-object v7

    :cond_1b
    move-object/from16 v0, p2

    move-object/from16 v17, v11

    move-object v11, v1

    move-object v1, v3

    move-object v3, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v17

    .line 96
    :goto_17
    :try_start_a
    iget-object v8, v8, Ln3/z/k1$a;->b:Ln3/z/k1;

    move-object/from16 p2, v4

    .line 97
    iget-object v4, v3, Ln3/z/f0;->b:Ln3/z/i3;

    .line 98
    invoke-virtual {v8, v2, v4}, Ln3/z/k1;->c(Ln3/z/t0;Ln3/z/i3;)Ln3/z/c1$a;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 99
    invoke-virtual {v8, v2}, Ln3/z/k1;->b(Ln3/z/c1$a;)V

    .line 100
    iget-object v4, v10, Ln3/z/g1;->d:Lq3/a/w2/j;

    iput-object v10, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v3, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v15, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v14, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v13, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    iput-object v12, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    iput-object v11, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    iput-object v1, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;

    iput-object v8, v6, Ln3/z/g1$f;->p:Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v16, v0

    const/4 v0, 0x0

    :try_start_b
    iput-object v0, v6, Ln3/z/g1$f;->q:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const/16 v0, 0x9

    :try_start_c
    iput v0, v6, Ln3/z/g1$f;->e:I

    invoke-interface {v4, v2, v6}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-ne v0, v7, :cond_1c

    return-object v7

    :cond_1c
    move-object/from16 v4, p2

    move-object v2, v3

    move-object/from16 v0, v16

    move-object/from16 v3, p1

    :goto_18
    move-object/from16 p1, v3

    move-object v3, v2

    :goto_19
    move-object v2, v1

    goto :goto_1a

    :catchall_5
    move-exception v0

    goto/16 :goto_20

    :catchall_6
    move-exception v0

    goto/16 :goto_22

    :cond_1d
    move-object/from16 v16, v0

    move-object/from16 v4, p2

    goto :goto_19

    .line 101
    :goto_1a
    :try_start_d
    iget v1, v3, Ln3/z/f0;->a:I

    .line 102
    invoke-virtual {v3, v0}, Ln3/z/f0;->a(Ln3/z/t0;)I

    move-result v16

    move-object/from16 p2, v4

    iget v4, v15, Ls1/z/c/a0;->a:I

    add-int v4, v16, v4

    .line 103
    invoke-virtual {v10, v8, v0, v1, v4}, Ln3/z/g1;->g(Ln3/z/k1;Ln3/z/t0;II)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v14, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-nez v1, :cond_1f

    .line 104
    iget-object v1, v8, Ln3/z/k1;->k:Ln3/z/s0;

    .line 105
    invoke-virtual {v1, v0}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object v1

    instance-of v1, v1, Ln3/z/r0$a;

    if-nez v1, :cond_1f

    .line 106
    iget-boolean v1, v13, Ls1/z/c/y;->a:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-eqz v1, :cond_1e

    sget-object v1, Ln3/z/r0$c;->b:Ln3/z/r0$c;

    goto :goto_1b

    .line 107
    :cond_1e
    sget-object v1, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    .line 108
    :goto_1b
    :try_start_e
    invoke-virtual {v8, v0, v1}, Ln3/z/k1;->j(Ln3/z/t0;Ln3/z/r0;)Z

    .line 109
    :cond_1f
    move-object v1, v11

    check-cast v1, Ln3/z/k2$b$b;

    invoke-virtual {v8, v1, v0}, Ln3/z/k1;->k(Ln3/z/k2$b$b;Ln3/z/t0;)Ln3/z/c1;

    move-result-object v1

    .line 110
    iget-object v4, v10, Ln3/z/g1;->d:Lq3/a/w2/j;

    iput-object v10, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v0, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v3, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v15, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v14, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v13, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    iput-object v12, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    iput-object v11, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    iput-object v2, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    const/4 v8, 0x0

    :try_start_f
    iput-object v8, v6, Ln3/z/g1$f;->p:Ljava/lang/Object;

    iput-object v8, v6, Ln3/z/g1$f;->q:Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    const/16 v8, 0xa

    :try_start_10
    iput v8, v6, Ln3/z/g1$f;->e:I

    invoke-interface {v4, v1, v6}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    if-ne v1, v7, :cond_20

    return-object v7

    :cond_20
    const/4 v1, 0x0

    move-object/from16 v4, p2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v10

    move-object v10, v12

    move-object v12, v15

    move-object v15, v0

    move-object v0, v11

    move-object v11, v14

    move-object v14, v3

    move-object/from16 v3, p1

    .line 111
    :goto_1c
    invoke-interface {v8, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 112
    instance-of v2, v10, Ln3/z/k2$a$b;

    if-eqz v2, :cond_21

    move-object v2, v0

    check-cast v2, Ln3/z/k2$b$b;

    .line 113
    iget-object v2, v2, Ln3/z/k2$b$b;->b:Ljava/lang/Object;

    if-nez v2, :cond_21

    const/4 v2, 0x1

    goto :goto_1d

    :cond_21
    const/4 v2, 0x0

    :goto_1d
    move v8, v2

    .line 114
    instance-of v2, v10, Ln3/z/k2$a$a;

    if-eqz v2, :cond_22

    check-cast v0, Ln3/z/k2$b$b;

    .line 115
    iget-object v0, v0, Ln3/z/k2$b$b;->c:Ljava/lang/Object;

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_1e

    :cond_22
    const/4 v0, 0x0

    .line 116
    :goto_1e
    iget-object v2, v1, Ln3/z/g1;->m:Ln3/z/r2;

    if-eqz v2, :cond_27

    if-nez v8, :cond_23

    if-eqz v0, :cond_27

    .line 117
    :cond_23
    iget-object v2, v1, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 118
    iget-object v10, v2, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 119
    iput-object v1, v6, Ln3/z/g1$f;->g:Ljava/lang/Object;

    iput-object v15, v6, Ln3/z/g1$f;->h:Ljava/lang/Object;

    iput-object v14, v6, Ln3/z/g1$f;->i:Ljava/lang/Object;

    iput-object v12, v6, Ln3/z/g1$f;->j:Ljava/lang/Object;

    iput-object v11, v6, Ln3/z/g1$f;->k:Ljava/lang/Object;

    iput-object v13, v6, Ln3/z/g1$f;->l:Ljava/lang/Object;

    iput-object v2, v6, Ln3/z/g1$f;->m:Ljava/lang/Object;

    iput-object v10, v6, Ln3/z/g1$f;->n:Ljava/lang/Object;

    move-object/from16 v16, v1

    const/4 v1, 0x0

    iput-object v1, v6, Ln3/z/g1$f;->o:Ljava/lang/Object;

    iput v8, v6, Ln3/z/g1$f;->r:I

    iput v0, v6, Ln3/z/g1$f;->s:I

    move/from16 p1, v0

    const/16 v0, 0xb

    iput v0, v6, Ln3/z/g1$f;->e:I

    invoke-interface {v10, v1, v6}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_24

    return-object v7

    :cond_24
    move/from16 v0, p1

    move-object v1, v15

    move-object v15, v14

    move-object v14, v12

    move-object v12, v13

    move-object v13, v11

    move-object v11, v2

    move-object/from16 v2, v16

    .line 120
    :goto_1f
    :try_start_11
    iget-object v11, v11, Ln3/z/k1$a;->b:Ln3/z/k1;

    move-object/from16 p1, v1

    .line 121
    iget-object v1, v2, Ln3/z/g1;->b:Ln3/z/i3$a;

    invoke-virtual {v11, v1}, Ln3/z/k1;->a(Ln3/z/i3$a;)Ln3/z/l2;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    const/4 v11, 0x0

    .line 122
    invoke-interface {v10, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    if-eqz v8, :cond_25

    .line 123
    iget-object v8, v2, Ln3/z/g1;->m:Ln3/z/r2;

    invoke-interface {v8, v5, v1}, Ln3/z/r2;->c(Ln3/z/t0;Ln3/z/l2;)V

    :cond_25
    if-eqz v0, :cond_26

    .line 124
    iget-object v0, v2, Ln3/z/g1;->m:Ln3/z/r2;

    invoke-interface {v0, v4, v1}, Ln3/z/r2;->c(Ln3/z/t0;Ln3/z/l2;)V

    :cond_26
    move-object v0, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, p1

    move-object v15, v2

    goto/16 :goto_b

    :catchall_7
    move-exception v0

    const/4 v1, 0x0

    .line 125
    invoke-interface {v10, v1}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0

    :cond_27
    move-object/from16 v16, v1

    move-object v0, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    goto/16 :goto_b

    :catchall_8
    move-exception v0

    move-object v1, v2

    goto :goto_22

    :catchall_9
    move-exception v0

    move-object v8, v2

    goto :goto_21

    :goto_20
    move-object v8, v1

    :goto_21
    move-object v1, v8

    :goto_22
    const/4 v2, 0x0

    .line 126
    invoke-interface {v1, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0

    :cond_28
    :goto_23
    return-object v3

    :catchall_a
    move-exception v0

    move-object v10, v2

    :goto_24
    const/4 v1, 0x0

    .line 127
    invoke-interface {v10, v1}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0

    .line 128
    :cond_29
    :try_start_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :catchall_b
    move-exception v0

    const/4 v1, 0x0

    .line 129
    invoke-interface {v2, v1}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0

    .line 130
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ln3/z/t0;Ljava/lang/Object;)Ln3/z/k2$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/t0;",
            "TKey;)",
            "Ln3/z/k2$a<",
            "TKey;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/z/t0;->a:Ln3/z/t0;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ln3/z/g1;->j:Ln3/z/a2;

    iget v0, v0, Ln3/z/a2;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln3/z/g1;->j:Ln3/z/a2;

    iget v0, v0, Ln3/z/a2;->a:I

    .line 2
    :goto_0
    iget-object v1, p0, Ln3/z/g1;->j:Ln3/z/a2;

    iget-boolean v1, v1, Ln3/z/a2;->c:Z

    const-string v2, "loadType"

    .line 3
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_1

    .line 5
    new-instance p1, Ln3/z/k2$a$a;

    invoke-direct {p1, p2, v0, v1}, Ln3/z/k2$a$a;-><init>(Ljava/lang/Object;IZ)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null for append"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    new-instance p1, Ln3/z/k2$a$b;

    invoke-direct {p1, p2, v0, v1}, Ln3/z/k2$a$b;-><init>(Ljava/lang/Object;IZ)V

    goto :goto_1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null for prepend"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    new-instance p1, Ln3/z/k2$a$c;

    invoke-direct {p1, p2, v0, v1}, Ln3/z/k2$a$c;-><init>(Ljava/lang/Object;IZ)V

    :goto_1
    return-object p1
.end method

.method public final g(Ln3/z/k1;Ln3/z/t0;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/k1<",
            "TKey;TValue;>;",
            "Ln3/z/t0;",
            "II)TKey;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loadType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p1, Ln3/z/k1;->g:I

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 4
    :cond_1
    iget v0, p1, Ln3/z/k1;->f:I

    :goto_0
    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    return-object v1

    .line 5
    :cond_2
    iget-object p3, p1, Ln3/z/k1;->k:Ln3/z/s0;

    .line 6
    invoke-virtual {p3, p2}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object p3

    instance-of p3, p3, Ln3/z/r0$a;

    if-eqz p3, :cond_3

    return-object v1

    .line 7
    :cond_3
    iget-object p3, p0, Ln3/z/g1;->j:Ln3/z/a2;

    iget p3, p3, Ln3/z/a2;->b:I

    if-lt p4, p3, :cond_4

    return-object v1

    .line 8
    :cond_4
    sget-object p3, Ln3/z/t0;->b:Ln3/z/t0;

    if-ne p2, p3, :cond_5

    .line 9
    iget-object p1, p1, Ln3/z/k1;->b:Ljava/util/List;

    .line 10
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2$b$b;

    .line 11
    iget-object p1, p1, Ln3/z/k2$b$b;->b:Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p1, Ln3/z/k1;->b:Ljava/util/List;

    .line 13
    invoke-static {p1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2$b$b;

    .line 14
    iget-object p1, p1, Ln3/z/k2$b$b;->c:Ljava/lang/Object;

    :goto_1
    return-object p1

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot get loadId for loadType: REFRESH"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic h(Ln3/z/t0;Ln3/z/i3;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/t0;",
            "Ln3/z/i3;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Ln3/z/g1;->a:Lq3/a/x2/z0;

    invoke-interface {p1, p2}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    invoke-virtual {p0, p3}, Ln3/z/g1;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_3

    return-object p1

    .line 5
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic i(Ln3/z/k1;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/k1<",
            "TKey;TValue;>;",
            "Ln3/z/t0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Ln3/z/g1$h;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ln3/z/g1$h;

    iget v1, v0, Ln3/z/g1$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/g1$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/g1$h;

    invoke-direct {v0, p0, p3}, Ln3/z/g1$h;-><init>(Ln3/z/g1;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Ln3/z/g1$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/g1$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p3, Ln3/z/r0$b;->b:Ln3/z/r0$b;

    invoke-virtual {p1, p2, p3}, Ln3/z/k1;->j(Ln3/z/t0;Ln3/z/r0;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Ln3/z/g1;->d:Lq3/a/w2/j;

    .line 6
    new-instance v2, Ln3/z/c1$c;

    const/4 v4, 0x0

    invoke-direct {v2, p2, v4, p3}, Ln3/z/c1$c;-><init>(Ln3/z/t0;ZLn3/z/r0;)V

    iput v3, v0, Ln3/z/g1$h;->e:I

    .line 7
    invoke-interface {p1, v2, v0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
