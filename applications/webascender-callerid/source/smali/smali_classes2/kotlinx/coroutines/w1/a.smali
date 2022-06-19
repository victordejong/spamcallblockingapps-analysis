.class public final Lkotlinx/coroutines/w1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/u/d;Lkotlin/u/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/d<",
            "-",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/u/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lkotlin/u/i/b;->c(Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object p0

    sget-object v0, Lkotlin/m;->f:Lkotlin/m$a;

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    invoke-static {v0}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/internal/f;->c(Lkotlin/u/d;Ljava/lang/Object;Lkotlin/w/b/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object v0, Lkotlin/m;->f:Lkotlin/m$a;

    invoke-static {p0}, Lkotlin/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lkotlin/w/b/l;Lkotlin/u/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/w/b/l<",
            "-",
            "Lkotlin/u/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/u/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lkotlin/u/i/b;->a(Lkotlin/w/b/l;Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/u/i/b;->c(Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object p0

    sget-object v0, Lkotlin/m;->f:Lkotlin/m$a;

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    invoke-static {v0}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/internal/f;->c(Lkotlin/u/d;Ljava/lang/Object;Lkotlin/w/b/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object v0, Lkotlin/m;->f:Lkotlin/m$a;

    invoke-static {p0}, Lkotlin/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final c(Lkotlin/w/b/p;Ljava/lang/Object;Lkotlin/u/d;Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/w/b/p<",
            "-TR;-",
            "Lkotlin/u/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/u/d<",
            "-TT;>;",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lkotlin/u/i/b;->b(Lkotlin/w/b/p;Ljava/lang/Object;Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/u/i/b;->c(Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object p0

    sget-object p1, Lkotlin/m;->f:Lkotlin/m$a;

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    invoke-static {p1}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/internal/f;->b(Lkotlin/u/d;Ljava/lang/Object;Lkotlin/w/b/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object p1, Lkotlin/m;->f:Lkotlin/m$a;

    invoke-static {p0}, Lkotlin/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p0}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lkotlin/w/b/p;Ljava/lang/Object;Lkotlin/u/d;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/w1/a;->c(Lkotlin/w/b/p;Ljava/lang/Object;Lkotlin/u/d;Lkotlin/w/b/l;)V

    return-void
.end method
