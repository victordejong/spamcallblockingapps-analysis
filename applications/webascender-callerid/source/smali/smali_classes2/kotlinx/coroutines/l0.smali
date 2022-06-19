.class public final Lkotlinx/coroutines/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/k0;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/k0<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/h0;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/k0;->b()Lkotlin/u/d;

    move-result-object v0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    .line 3
    instance-of v2, v0, Lkotlinx/coroutines/internal/e;

    if-eqz v2, :cond_5

    invoke-static {p1}, Lkotlinx/coroutines/l0;->b(I)Z

    move-result p1

    iget v2, p0, Lkotlinx/coroutines/k0;->h:I

    invoke-static {v2}, Lkotlinx/coroutines/l0;->b(I)Z

    move-result v2

    if-ne p1, v2, :cond_5

    .line 4
    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/internal/e;

    iget-object p1, p1, Lkotlinx/coroutines/internal/e;->l:Lkotlinx/coroutines/x;

    .line 5
    invoke-interface {v0}, Lkotlin/u/d;->getContext()Lkotlin/u/g;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/x;->C(Lkotlin/u/g;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/x;->A(Lkotlin/u/g;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {p0}, Lkotlinx/coroutines/l0;->e(Lkotlinx/coroutines/k0;)V

    goto :goto_3

    .line 9
    :cond_5
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/l0;->d(Lkotlinx/coroutines/k0;Lkotlin/u/d;Z)V

    :goto_3
    return-void
.end method

.method public static final b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final c(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Lkotlinx/coroutines/k0;Lkotlin/u/d;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/k0<",
            "-TT;>;",
            "Lkotlin/u/d<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/k0;->g()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/k0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lkotlin/m;->f:Lkotlin/m$a;

    invoke-static {v1}, Lkotlin/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/m;->f:Lkotlin/m$a;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/k0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>"

    .line 4
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/e;

    .line 5
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e;->getContext()Lkotlin/u/g;

    move-result-object p2

    iget-object v0, p1, Lkotlinx/coroutines/internal/e;->k:Ljava/lang/Object;

    .line 6
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/y;->c(Lkotlin/u/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    :try_start_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/e;->m:Lkotlin/u/d;

    invoke-interface {p1, p0}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    .line 8
    sget-object p0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/y;->a(Lkotlin/u/g;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/y;->a(Lkotlin/u/g;Ljava/lang/Object;)V

    throw p0

    .line 10
    :cond_1
    invoke-interface {p1, p0}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static final e(Lkotlinx/coroutines/k0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/r1;->b:Lkotlinx/coroutines/r1;

    invoke-virtual {v0}, Lkotlinx/coroutines/r1;->a()Lkotlinx/coroutines/p0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/p0;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/p0;->L(Lkotlinx/coroutines/k0;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/p0;->N(Z)V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/k0;->b()Lkotlin/u/d;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lkotlinx/coroutines/l0;->d(Lkotlinx/coroutines/k0;Lkotlin/u/d;Z)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/p0;->l0()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 7
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lkotlinx/coroutines/k0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/p0;->D(Z)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/p0;->D(Z)V

    throw p0
.end method
