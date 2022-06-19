.class public final Ln3/v/x;
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
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.lifecycle.LifecycleCoroutineScopeImpl$register$1"
    f = "Lifecycle.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/x;->f:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

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

    new-instance v0, Ln3/v/x;

    iget-object v1, p0, Ln3/v/x;->f:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    invoke-direct {v0, v1, p2}, Ln3/v/x;-><init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Ls1/w/d;)V

    iput-object p1, v0, Ln3/v/x;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ln3/v/x;->f:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object p2, v1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Ln3/v/u;

    .line 5
    check-cast p2, Ln3/v/c0;

    .line 6
    iget-object p2, p2, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 7
    sget-object v2, Ln3/v/u$b;->b:Ln3/v/u$b;

    invoke-virtual {p2, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 8
    iget-object p1, v1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Ln3/v/u;

    .line 9
    invoke-virtual {p1, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/v/x;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 2
    iget-object v0, p0, Ln3/v/x;->f:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 3
    iget-object v0, v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Ln3/v/u;

    .line 4
    check-cast v0, Ln3/v/c0;

    .line 5
    iget-object v0, v0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 6
    sget-object v1, Ln3/v/u$b;->b:Ln3/v/u$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 7
    iget-object p1, p0, Ln3/v/x;->f:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 8
    iget-object v0, p1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Ln3/v/u;

    .line 9
    invoke-virtual {v0, p1}, Ln3/v/u;->a(Ln3/v/a0;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
