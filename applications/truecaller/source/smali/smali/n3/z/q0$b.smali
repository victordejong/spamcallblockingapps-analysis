.class public final Ln3/z/q0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/q0;->m(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.LivePagedList$invalidate$1"
    f = "LivePagedList.kt"
    l = {
        0x4e,
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ln3/z/q0;


# direct methods
.method public constructor <init>(Ln3/z/q0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/q0$b;

    iget-object v0, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    invoke-direct {p1, v0, p2}, Ln3/z/q0$b;-><init>(Ln3/z/q0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/q0$b;

    iget-object v0, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    invoke-direct {p1, v0, p2}, Ln3/z/q0$b;-><init>(Ln3/z/q0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/q0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/q0$b;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ln3/z/q0$b;->f:Ljava/lang/Object;

    iget-object v1, p0, Ln3/z/q0$b;->e:Ljava/lang/Object;

    check-cast v1, Ln3/z/k2;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v0

    move-object v6, v1

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Ln3/z/q0$b;->e:Ljava/lang/Object;

    check-cast v1, Ln3/z/k2;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 5
    iget-object p1, p1, Ln3/z/q0;->l:Ln3/z/q1;

    .line 6
    invoke-virtual {p1}, Ln3/z/q1;->g()Ln3/z/k2;

    move-result-object p1

    iget-object v1, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 7
    iget-object v1, v1, Ln3/z/q0;->n:Ls1/z/b/a;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "onInvalidatedCallback"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p1, Ln3/z/k2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 11
    iget-object p1, p1, Ln3/z/q0;->s:Ls1/z/b/a;

    .line 12
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2;

    .line 13
    iget-object v1, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 14
    iget-object v1, v1, Ln3/z/q0;->n:Ls1/z/b/a;

    .line 15
    invoke-virtual {p1, v1}, Ln3/z/k2;->f(Ls1/z/b/a;)V

    .line 16
    iget-object v1, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 17
    iget-object v1, v1, Ln3/z/q0;->t:Lq3/a/g0;

    .line 18
    new-instance v5, Ln3/z/q0$b$a;

    invoke-direct {v5, p0, v3}, Ln3/z/q0$b$a;-><init>(Ln3/z/q0$b;Ls1/w/d;)V

    iput-object p1, p0, Ln3/z/q0$b;->e:Ljava/lang/Object;

    iput v4, p0, Ln3/z/q0$b;->g:I

    invoke-static {v1, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v1, p1

    .line 19
    :goto_0
    iget-object p1, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 20
    iget-object p1, p1, Ln3/z/q0;->l:Ln3/z/q1;

    .line 21
    invoke-virtual {p1}, Ln3/z/q1;->f()Ljava/lang/Object;

    move-result-object p1

    .line 22
    iget-object v5, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 23
    iget-object v5, v5, Ln3/z/q0;->q:Ln3/z/q1$c;

    const-string v6, "$this$toRefreshLoadParams"

    .line 24
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v6, Ln3/z/k2$a$c;

    .line 26
    iget v7, v5, Ln3/z/q1$c;->d:I

    .line 27
    iget-boolean v5, v5, Ln3/z/q1$c;->c:Z

    .line 28
    invoke-direct {v6, p1, v7, v5}, Ln3/z/k2$a$c;-><init>(Ljava/lang/Object;IZ)V

    .line 29
    iput-object v1, p0, Ln3/z/q0$b;->e:Ljava/lang/Object;

    iput-object p1, p0, Ln3/z/q0$b;->f:Ljava/lang/Object;

    iput v2, p0, Ln3/z/q0$b;->g:I

    invoke-virtual {v1, v6, p0}, Ln3/z/k2;->e(Ln3/z/k2$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v13, p1

    move-object v6, v1

    move-object p1, v2

    .line 30
    :goto_1
    check-cast p1, Ln3/z/k2$b;

    .line 31
    instance-of v0, p1, Ln3/z/k2$b$a;

    if-eqz v0, :cond_5

    .line 32
    iget-object v0, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 33
    iget-object v0, v0, Ln3/z/q0;->l:Ln3/z/q1;

    .line 34
    sget-object v1, Ln3/z/t0;->a:Ln3/z/t0;

    .line 35
    new-instance v2, Ln3/z/r0$a;

    check-cast p1, Ln3/z/k2$b$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v3}, Ln3/z/r0$a;-><init>(Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {v0, v1, v2}, Ln3/z/q1;->n(Ln3/z/t0;Ln3/z/r0;)V

    goto :goto_2

    .line 37
    :cond_5
    instance-of v0, p1, Ln3/z/k2$b$b;

    if-eqz v0, :cond_7

    .line 38
    check-cast p1, Ln3/z/k2$b$b;

    .line 39
    iget-object v0, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 40
    iget-object v7, v0, Ln3/z/q0;->p:Lq3/a/i0;

    .line 41
    iget-object v8, v0, Ln3/z/q0;->t:Lq3/a/g0;

    .line 42
    iget-object v9, v0, Ln3/z/q0;->u:Lq3/a/g0;

    .line 43
    iget-object v10, v0, Ln3/z/q0;->r:Ln3/z/q1$a;

    .line 44
    iget-object v11, v0, Ln3/z/q0;->q:Ln3/z/q1$c;

    const-string v0, "pagingSource"

    .line 45
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyDispatcher"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDispatcher"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_6

    .line 46
    new-instance p1, Ls1/z/c/c0;

    invoke-direct {p1}, Ls1/z/c/c0;-><init>()V

    new-instance v0, Ln3/z/k2$a$c;

    .line 47
    iget v1, v11, Ln3/z/q1$c;->d:I

    .line 48
    iget-boolean v2, v11, Ln3/z/q1$c;->c:Z

    .line 49
    invoke-direct {v0, v13, v1, v2}, Ln3/z/k2$a$c;-><init>(Ljava/lang/Object;IZ)V

    iput-object v0, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 50
    new-instance v0, Ln3/z/r1;

    invoke-direct {v0, v6, p1, v3}, Ln3/z/r1;-><init>(Ln3/z/k2;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {v3, v0, v4, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2$b$b;

    :cond_6
    move-object v12, p1

    .line 51
    new-instance p1, Ln3/z/u;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Ln3/z/u;-><init>(Ln3/z/k2;Lq3/a/i0;Lq3/a/g0;Lq3/a/g0;Ln3/z/q1$a;Ln3/z/q1$c;Ln3/z/k2$b$b;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 53
    iget-object v1, v0, Ln3/z/q0;->l:Ln3/z/q1;

    .line 54
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, v0, Ln3/z/q0;->o:Ljava/lang/Runnable;

    .line 56
    iput-object v0, p1, Ln3/z/q1;->a:Ljava/lang/Runnable;

    .line 57
    iget-object v0, p0, Ln3/z/q0$b;->h:Ln3/z/q0;

    .line 58
    iput-object p1, v0, Ln3/z/q0;->l:Ln3/z/q1;

    .line 59
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->j(Ljava/lang/Object;)V

    .line 60
    :cond_7
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
