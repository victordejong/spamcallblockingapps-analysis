.class public final Ln3/v/o0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2"
    f = "PausingDispatcher.kt"
    l = {
        0xa2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/v/u;

.field public final synthetic h:Ln3/v/u$b;

.field public final synthetic i:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Ln3/v/u;Ln3/v/u$b;Ls1/z/b/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/o0;->g:Ln3/v/u;

    iput-object p2, p0, Ln3/v/o0;->h:Ln3/v/u$b;

    iput-object p3, p0, Ln3/v/o0;->i:Ls1/z/b/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    new-instance v0, Ln3/v/o0;

    iget-object v1, p0, Ln3/v/o0;->g:Ln3/v/u;

    iget-object v2, p0, Ln3/v/o0;->h:Ln3/v/u$b;

    iget-object v3, p0, Ln3/v/o0;->i:Ls1/z/b/p;

    invoke-direct {v0, v1, v2, v3, p2}, Ln3/v/o0;-><init>(Ln3/v/u;Ln3/v/u$b;Ls1/z/b/p;Ls1/w/d;)V

    iput-object p1, v0, Ln3/v/o0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/o0;

    iget-object v1, p0, Ln3/v/o0;->g:Ln3/v/u;

    iget-object v2, p0, Ln3/v/o0;->h:Ln3/v/u$b;

    iget-object v3, p0, Ln3/v/o0;->i:Ls1/z/b/p;

    invoke-direct {v0, v1, v2, v3, p2}, Ln3/v/o0;-><init>(Ln3/v/u;Ln3/v/u$b;Ls1/z/b/p;Ls1/w/d;)V

    iput-object p1, v0, Ln3/v/o0;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/v/o0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/v/o0;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ln3/v/o0;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LifecycleController;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/v/o0;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    invoke-interface {p1}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object p1

    sget v1, Lq3/a/p1;->e0:I

    sget-object v1, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {p1, v1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    check-cast p1, Lq3/a/p1;

    if-eqz p1, :cond_3

    .line 5
    new-instance v1, Ln3/v/n0;

    invoke-direct {v1}, Ln3/v/n0;-><init>()V

    .line 6
    new-instance v3, Landroidx/lifecycle/LifecycleController;

    iget-object v4, p0, Ln3/v/o0;->g:Ln3/v/u;

    iget-object v5, p0, Ln3/v/o0;->h:Ln3/v/u$b;

    iget-object v6, v1, Ln3/v/n0;->b:Ln3/v/k;

    invoke-direct {v3, v4, v5, v6, p1}, Landroidx/lifecycle/LifecycleController;-><init>(Ln3/v/u;Ln3/v/u$b;Ln3/v/k;Lq3/a/p1;)V

    .line 7
    :try_start_1
    iget-object p1, p0, Ln3/v/o0;->i:Ls1/z/b/p;

    iput-object v3, p0, Ln3/v/o0;->e:Ljava/lang/Object;

    iput v2, p0, Ln3/v/o0;->f:I

    invoke-static {v1, p1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v3

    .line 8
    :goto_0
    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleController;->a()V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleController;->a()V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "when[State] methods should have a parent job"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
